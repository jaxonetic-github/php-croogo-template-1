<?php
App::uses('Folder', 'Utility');
App::uses('File', 'Utility');

App::uses('NodesAppModel', 'Nodes.Model');

/**
 * Node
 *
 * @category Nodes.Model
 * @package  Croogo.Nodes.Model
 * @version  1.0
 * @author   Fahad Ibnay Heylaal <contact@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class Node extends NodesAppModel {

/**
 * Model name
 *
 * @var string
 * @access public
 */
	public $name = 'Node';

	const DEFAULT_TYPE = 'node';

	const STATUS_PUBLISHED = 1;

	const STATUS_UNPUBLISHED = 0;

	const STATUS_PROMOTED = 1;

	const STATUS_UNPROMOTED = 0;

	const PUBLICATION_STATE_FIELD = 'status';

	const PROMOTION_STATE_FIELD = 'promote';

	const UNPROCESSED_ACTION = 'delete';

	public $actionsMapping = array(
		'delete' => 'deleteAll',
		'publish' => '_publish',
		'promote' => '_promote',
		'unpublish' => '_unpublish',
		'unpromote' => '_unpromote',
	);

/**
 * Behaviors used by the Model
 *
 * @var array
 * @access public
 */
	public $actsAs = array(
		'Tree',
		'Croogo.Encoder',
		'Meta.Meta',
		'Croogo.Url',
		'Croogo.Cached' => array(
			'groups' => array(
				'nodes',
			),
		),
		'Search.Searchable',
	);

/**
 * Node type
 *
 * If the Model is associated to Node model, this variable holds the Node type value
 *
 * @var string
 * @access public
 */
	public $type = null;

/**
 * Guid
 *
 * @var string
 * @access public
 */
	public $guid = null;


/* Upload Directory relative to WWW_ROOT
 * @param string
 */
public $uploadDir = 'uploads';
   
/**
 * Validation
 *
 * @var array
 * @access public
 */
	public $validate = array(
	  'filename' => array(
            // http://book.cakephp.org/2.0/en/models/data-validation.html#Validation::uploadError
            'uploadError' => array(
                'rule' => 'uploadError',
                'message' => 'Something went wrong with the file upload',
                'required' => FALSE,
                'allowEmpty' => TRUE,
            ),
            // http://book.cakephp.org/2.0/en/models/data-validation.html#Validation::mimeType
            'mimeType' => array(
                'rule' => array('mimeType', array('image/gif','image/png','image/jpg','image/jpeg')),
                'message' => 'Invalid file type, only images allowed.',
                'required' => FALSE,
                'allowEmpty' => TRUE,
            ),
             'extension'=> array(            
                'rule'    => array(   'extension',array('gif', 'jpeg', 'png', 'jpg')),
                  'message' => 'Invalid file, only gif, jpeg, png images allowed.',
            ),
            // custom callback to deal with the file upload
            'processUpload' => array(
                'rule' => 'processUpload',
                'message' => 'Something went wrong processing your file',
                'required' => FALSE,
                'allowEmpty' => TRUE,
                'last' => TRUE,
            )),
		'title' => array(
			'rule' => 'notEmpty',
			'message' => 'This field cannot be left blank.',
		),
		'slug' => array(
			'isUniquePerType' => array(
				'rule' => 'isUniquePerType',
				'message' => 'This slug has already been taken.',
			),
			'minLength' => array(
				'rule' => array('minLength', 1),
				'message' => 'Slug cannot be empty.',
			),
		),
	);

/**
 * Filter search fields
 *
 * @var array
 * @access public
 */
	public $filterArgs = array(
		'filter' => array('type' => 'query', 'method' => 'filterNodes'),
		'type' => array('type' => 'value'),
		'status' => array('type' => 'value'),
		'promote' => array('type' => 'value'),
	);

/**
 * Model associations: belongsTo
 *
 * @var array
 * @access public
 */
	public $belongsTo = array(
		'User' => array(
			'className' => 'Users.User',
			'foreignKey' => 'user_id',
			'conditions' => '',
			'fields' => '',
			'order' => '',
		),
	);

/**
 * Model associations: hasMany
 *
 * @var array
 * @access public
 */
	public $hasMany = array(
		'Comment' => array(
			'className' => 'Comments.Comment',
			'foreignKey' => 'node_id',
			'dependent' => true,
			'conditions' => array('Comment.status' => 1),
			'fields' => '',
			'order' => '',
			'limit' => '5',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => '',
		),
		'Meta' => array(
			'className' => 'Meta.Meta',
			'foreignKey' => 'foreign_key',
			'dependent' => true,
			'conditions' => array('Meta.model' => 'Node'),
			'fields' => '',
			'order' => 'Meta.key ASC',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => '',
		),
	);

/**
 * Model associations: hasAndBelongsToMany
 *
 * @var array
 * @access public
 */
	public $hasAndBelongsToMany = array(
		'Taxonomy' => array(
			'className' => 'Taxonomy.Taxonomy',
			'with' => 'Taxonomy.NodesTaxonomy',
			'joinTable' => 'nodes_taxonomies',
			'foreignKey' => 'node_id',
			'associationForeignKey' => 'taxonomy_id',
			'unique' => true,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'finderQuery' => '',
			'deleteQuery' => '',
			'insertQuery' => '',
		),
	);

	public $findMethods = array(
		'promoted' => true
	);

/**
 * beforeFind callback
 *
 * @param array $q
 * @return array
 */
	public function beforeFind($queryData) {
		$typeField = $this->alias . '.type';
		if ($this->type != null && !isset($queryData['conditions'][$typeField])) {
			$queryData['conditions'][$typeField] = $this->type;
		}
		return $queryData;
	}

/**
 * beforeSave callback
 *
 * @return boolean
 */
	public function beforeSave($options = array()) {
		if (empty($this->data[$this->alias]['type']) && $this->type != null) {
			$this->data[$this->alias]['type'] = $this->type;
		}

		$dateFields = array('created');
		foreach ($dateFields as $dateField) {
			if (!array_key_exists($dateField, $this->data[$this->alias])) {
				continue;
			}
			if (empty($this->data[$this->alias][$dateField])) {
				$db = $this->getDataSource();
				$colType = array_merge(array(
					'formatter' => 'date',
					), $db->columns[$this->getColumnType($dateField)]
				);
				$this->data[$this->alias][$dateField] = call_user_func(
					$colType['formatter'], $colType['format']
				);
			}
		}

		$this->cacheTerms();

		return true;
	}

/**
 * beforeDelete callback
 *
 * @return boolean
 */
	public function beforeDelete($cascade = true) {
		if ($cascade) {
			if (isset($this->hasMany['Comment'])) {
				$this->hasMany['Comment']['conditions'] = '';
			}
		}
		return true;
	}

/**
 * Caches Term in Node.terms field
 *
 * @return void
 * @deprecated This method will be removed in future versions
 */
	public function cacheTerms() {
		if (isset($this->data['Taxonomy']['Taxonomy']) && count($this->data['Taxonomy']['Taxonomy']) > 0) {
			$Taxonomy = $this->Taxonomy;
			$Term = $this->Taxonomy->Term;

			$taxonomyIdField = $Taxonomy->escapeField('id');
			$taxonomyTermIdField = $Taxonomy->escapeField('term_id');
			$termIdField = $Term->escapeField('id');
			$termSlugField = $Term->escapeField('slug');

			$taxonomyIds = $this->data['Taxonomy']['Taxonomy'];
			$taxonomies = $this->Taxonomy->find('all', array(
				'recursive' => -1,
				'fields' => array(
					$taxonomyIdField, $taxonomyTermIdField,
					$termIdField, $termSlugField,
				),
				'joins' => array(
					array(
						'type' => 'LEFT',
						'table' => $Term->useTable,
						'alias' => $Term->alias,
						'conditions' => array(
							sprintf('%s = %s',
								$taxonomyTermIdField, $termIdField
							),
						),
					),
				),
				'conditions' => array(
					$taxonomyIdField => $taxonomyIds,
				),
			));
			$terms = Hash::combine($taxonomies, '{n}.Term.id', '{n}.Term.slug');
			$this->data[$this->alias]['terms'] = $this->encodeData($terms, array(
				'trim' => false,
				'json' => true,
			));
		}
	}

/**
 * Caches Term in Node.terms field
 *
 * @deprecated for backward compatibility
 * @see Node::cacheTerms()
 */
	public function __cacheTerms() {
		return $this->cacheTerms();
	}

/**
 * Returns false if any fields passed match any (by default, all if $or = false) of their matching values.
 *
 * @param array $fields Field/value pairs to search (if no values specified, they are pulled from $this->data)
 * @param boolean $or If false, all fields specified must match in order for a false return value
 * @return boolean False if any records matching any fields are found
 * @access public
 */
	public function isUniquePerType($fields, $or = true) {
		if (!is_array($fields)) {
			$fields = func_get_args();
			if (is_bool($fields[count($fields) - 1])) {
				$or = $fields[count($fields) - 1];
				unset($fields[count($fields) - 1]);
			}
		}

		foreach ($fields as $field => $value) {
			if (is_numeric($field)) {
				unset($fields[$field]);

				$field = $value;
				if (isset($this->data[$this->alias][$field])) {
					$value = $this->data[$this->alias][$field];
				} else {
					$value = null;
				}
			}

			if (strpos($field, '.') === false) {
				unset($fields[$field]);
				$fields[$this->alias . '.' . $field] = $value;
			}
		}
		if ($or) {
			$fields = array('or' => $fields);
		}
		if (!empty($this->id)) {
			$fields[$this->alias . '.' . $this->primaryKey . ' !='] = $this->id;
		}
		if (!empty($this->type)) {
			$fields[$this->alias . '.type'] = $this->type;
		}
		return ($this->find('count', array('conditions' => $fields, 'recursive' => -1)) == 0);
	}

/**
 * Return filter condition for Nodes
 *
 * @return array Array of conditions
 */
	public function filterNodes($data = array()) {
		$conditions = array();
		if (!empty($data['filter'])) {
			$filter = '%' . $data['filter'] . '%';
			$conditions = array(
				'OR' => array(
					$this->alias . '.title LIKE' => $filter,
					$this->alias . '.excerpt LIKE' => $filter,
					$this->alias . '.body LIKE' => $filter,
					$this->alias . '.terms LIKE' => $filter,
				),
			);
		}
		return $conditions;
	}

/**
 * Create/update a Node record
 *
 * @param $data array Node data
 * @param $typeAlias string Node type alias
 * @return mixed see Model::saveAll()
 * @see MetaBehavior::saveWithMeta()
 */
	public function saveNode($data, $typeAlias = self::DEFAULT_TYPE) {
		$result = false;

		$data = $this->formatData($data, $typeAlias);
		$event = Croogo::dispatchEvent('Model.Node.beforeSaveNode', $this, compact('data'));
		$result = $this->saveWithMeta($event->data['data']);
		Croogo::dispatchEvent('Model.Node.afterSaveNode', $this, $event->data);

		return $result;
	}

/**
 * Process action pass as argument
 *
 * @param $action string actionToPerfom
 * @param $ids array nodes ids to perform action upon
 * @throws InvalidArgumentException
 */
	public function processAction($action, $ids) {
		$success = true;
		$actionToPerform = strtolower($action);

		if (!in_array($actionToPerform, array_keys($this->actionsMapping))) {
			throw new InvalidArgumentException(__d('croogo', 'Invalid action to perform'));
		}

		if (empty($ids)) {
			throw new InvalidArgumentException(__d('croogo', 'No target to process action upon'));
		}

		if ($actionToPerform === self::UNPROCESSED_ACTION) {
			$success = $this->{$this->actionsMapping[$actionToPerform]}(array($this->escapeField() => $ids));
		} else {
			$success = $this->{$this->actionsMapping[$actionToPerform]}($ids);
		}

		return $success;
	}

/**
 * Format data for saving
 *
 * @param $data array Node and related data such as Taxonomy and Role
 * @param $typeAlias string Node type alias
 * @return array formatted data
 * @throws InvalidArgumentException
 */
	public function formatData($data, $typeAlias = self::DEFAULT_TYPE) {
		$prepared = $roles = $type = array();
		$type = $this->Taxonomy->Vocabulary->Type->findByAlias($typeAlias);

		if (!array_key_exists($this->alias, $data)) {
			$prepared = array($this->alias => $data);
		} else {
			$prepared = $data;
		}

		if (empty($type)) {
			throw new InvalidArgumentException(__d('croogo', 'Invalid Content Type'));
		}

		if (empty($prepared[$this->alias]['type'])) {
			$prepared[$this->alias]['type'] = $typeAlias;
		}
		$this->type = $type['Type']['alias'];
		if (!$this->Behaviors->enabled('Tree')) {
			$this->Behaviors->attach('Tree', array('scope' => array('Node.type' => $this->type)));
		}

		$this->_parseTaxonomyData($prepared);
		$prepared[$this->alias]['path'] = $this->_getNodeRelativePath($prepared);

		if (!array_key_exists('Role', $prepared) || empty($prepared['Role']['Role'])) {
			$roles = '';
		} else {
			$roles = $prepared['Role']['Role'];
		}

		$prepared[$this->alias]['visibility_roles'] = $this->encodeData($roles);

		return $prepared;
	}

/**
 * Update values for all nodes 'path' field
 *
 * @return bool|array Depending on atomicity
 * @see Model::saveMany()
 */
	public function updateAllNodesPaths() {
		$types = $this->Taxonomy->Vocabulary->Type->find('list', array(
			'fields' => array(
				'Type.id',
				'Type.alias',
			),
		));
		$typesAlias = array_values($types);

		$idField = $this->escapeField('id');
		$batch = 30;
		$options = array(
			'order' => $idField,
			'conditions' => array(
				$this->alias . '.type' => $typesAlias,
			),
			'fields' => array(
				$this->alias . '.id',
				$this->alias . '.slug',
				$this->alias . '.type',
				$this->alias . '.path',
			),
			'recursive' => '-1',
			'limit' => $batch,
		);

		$results = array();
		while ($nodes = $this->find('all', $options)) {
			foreach ($nodes as &$node) {
				$node[$this->alias]['path'] = $this->_getNodeRelativePath($node);
			}
			$result = $this->saveMany($nodes);
			if ($result === false) {
				$this->log('updateAllNodesPath batch failed:');
				$this->log($this->validationErrors);
				return false;
			}
			$results[] = $result;
			$options['conditions'][$idField . ' >'] = $node[$this->alias]['id'];
			if (count($nodes) < $batch) {
				break;
			}
		}

		return count(array_keys($results, true)) == count($results);
	}

/**
 * parseTaxonomyData
 *
 * @param array $node Node array
 * @return void
 * @deprecated This method will be removed in future versions
 */
	protected function _parseTaxonomyData(&$node) {
		if (array_key_exists('TaxonomyData', $node)) {
			$node['Taxonomy'] = array('Taxonomy' => array());
			foreach ($node['TaxonomyData'] as $vocabularyId => $taxonomyIds) {
				$node['Taxonomy']['Taxonomy'] = array_merge($node['Taxonomy']['Taxonomy'], (array)$taxonomyIds);
			}
			unset($node['TaxonomyData']);
		}
	}

/**
 * getNodeRelativePath
 *
 * @param array $node Node array
 * @return string relative node path
 */
	protected function _getNodeRelativePath($node) {
		return Croogo::getRelativePath(array(
			'plugin' => 'nodes',
			'admin' => false,
			'controller' => 'nodes',
			'action' => 'view',
			'type' => $this->_getType($node),
			'slug' => $node[$this->alias]['slug'],
		));
	}

/**
 * _getType
 *
 * @param array $data Node data
 * @return string type
 */
	protected function _getType($data) {
		if (empty($data[$this->alias]['type'])) {
			$type = is_null($this->type) ? self::DEFAULT_TYPE : $this->type;
		} else {
			$type = $data[$this->alias]['type'];
		}

		return $type;
	}

/**
 * Find promoted nodes
 *
 * @see Model::find()
 * @see Model::_findAll()
 */
	protected function _findPromoted($state, $query, $results = array()) {
		if ($state === 'before') {
			$_defaultFilters = array('contain', 'limit', 'order', 'conditions');
			$_defaultContain = array(
				'Meta',
				'Taxonomy' => array(
					'Term',
					'Vocabulary',
				),
				'User',
			);
			$_defaultConditions = array(
				'Node.status' => self::STATUS_PUBLISHED,
				'Node.promote' => self::STATUS_PROMOTED,
				'OR' => array(
					'Node.visibility_roles' => '',
				),
			);
			$_defaultOrder = $this->alias . '.created DESC';
			$_defaultLimit = Configure::read('Reading.nodes_per_page');

			foreach ($_defaultFilters as $filter) {
				$this->_mergeQueryFilters($query, $filter, ${'_default' . ucfirst($filter)});
			}

			return $query;
		} else {
			return $results;
		}
	}

/**
 * mergeQueryFilters
 *
 * @see Node::_findPromoted()
 * @return void
 */
	protected function _mergeQueryFilters(&$query, $key, $values) {
		if (!empty($query[$key])) {
			if (is_array($query[$key])) {
				$query[$key] = Hash::merge($query[$key], $values);
			}
		} else {
			$query[$key] = $values;
		}
	}

/**
 * Internal helper function to change state fields
 * @see Node::processAction()
 */
	protected function _publish($ids) {
		return $this->_saveStatus($ids, self::PUBLICATION_STATE_FIELD, self::STATUS_PUBLISHED);
	}

/**
 * Internal helper function to change state fields
 * @see Node::processAction()
 */
	protected function _unpublish($ids) {
		return $this->_saveStatus($ids, self::PUBLICATION_STATE_FIELD, self::STATUS_UNPUBLISHED);
	}

/**
 * Internal helper function to change state fields
 * @see Node::processAction()
 */
	protected function _promote($ids) {
		return $this->_saveStatus($ids, self::PROMOTION_STATE_FIELD, self::STATUS_PROMOTED);
	}

/**
 * Internal helper function to change state fields
 * @see Node::processAction()
 */
	protected function _unpromote($ids) {
		return $this->_saveStatus($ids, self::PROMOTION_STATE_FIELD, self::STATUS_UNPROMOTED);
	}

/**
 * Internal helper function to change state fields
 * @see Node::processAction()
 */
	protected function _saveStatus($ids, $field, $status) {
		return $this->updateAll(array($this->escapeField($field) => $status), array($this->escapeField() => $ids));
	}



/**
 * Process the Upload
 * @param array $check: the request data  with uploaded file info
 * 
 * 
 * $check = Array
(
    [Project] => Array
        (
            [category] => 3
            [client_name] => Pac Man
            [delivery_method] => Power Pellet
            [budget] => 23k
            [title] => The Chomper
            [location] => Here
            [summary] => 
            [filename] => Array
                (
                    [name] => unitysnap.png
                    [type] => image/png
                    [tmp_name] => /private/var/folders/fz/q0bn8cq91mz20h1cys24vx4c0000gn/T/phpNqPVQG
                    [error] => 0
                    [size] => 647566
                )

        )

)
 * @return boolean
 */
public function processUpload($check=array()) {



/*
 * Getting the Project Category string.  I'm doing this, this way,  for now.  
 * 
 * Todo:find a more elegant way
 */ 

    // deal with uploaded file
    if (!empty($check['filename']['tmp_name'])) {

        // check file is uploaded
        if (!is_uploaded_file($check['filename']['tmp_name'])) {
            return FALSE;
        }

        $filePath = WWW_ROOT . $this->uploadDir . DS . "blog_awards"  ;
        
        // build full filename
        $fileNameAndPath = $filePath . DS . Inflector::slug(pathinfo($check['filename']['name'], PATHINFO_FILENAME)).'.'.pathinfo($check['filename']['name'], PATHINFO_EXTENSION);
        $fileName =  Inflector::slug(pathinfo($check['filename']['name'], PATHINFO_FILENAME)).'.'.pathinfo($check['filename']['name'], PATHINFO_EXTENSION);
        //Ensure target folder
        $folder = new Folder($filePath, true, 0777);
        $file = new File($check['filename']['tmp_name'], false);

              if($file->copy($fileNameAndPath))
              {
                  $this->data[$this->alias]['filepath'] = str_replace(DS, "/", str_replace(WWW_ROOT, "", $fileNameAndPath) );
              }
      
      //inserting the path to the image from WWW_ROOT
        $this->data['Node']['image_path'] = $this->uploadDir . DS . "blog_awards" . DS . $fileName ;
      
          $file->close();
       
    }

    return TRUE;
}


}

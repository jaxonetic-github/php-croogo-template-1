

<?php 
App::uses('AppModel', 'Model');
class Project extends AppModel {
    public $useTable = 'project';
  
     
     
    public $belongsTo =  array(
         'ProjectCategory' =>  array( 
                   'classname'=> 'ProjectCategory'
                   ,'foreignKey' => 'project_categories'
                  )
         );
    
 
   
   
   // ex. 'conditions' => array('Article.status !=' => 'pending'),
    public function findAll()
    {
         $projects = $this->find('all');
         
         return $projects;
    }
    
    
    
     
  /********* http://www.jamesfairhurst.co.uk/posts/view/cakephp_contact_form_with_file_uploads
  *
  * Assist upload file functionality 
  *
  **********/
  
/**
 * Upload Directory relative to WWW_ROOT
 * @param string
 */
public $uploadDir = 'uploads';

/**
 * Process the Upload
 * @param array $check
 * @return boolean
 */
public function processUpload($check=array()) {
    
    $this->log("Processing fileupload");
    debug("Debug : Processing fileupload");
    // deal with uploaded file
    if (!empty($check['filename']['tmp_name'])) {

        // check file is uploaded
        if (!is_uploaded_file($check['filename']['tmp_name'])) {
            return FALSE;
        }

        // build full filename
        $filename = WWW_ROOT . $this->uploadDir . DS . Inflector::slug(pathinfo($check['filename']['name'], PATHINFO_FILENAME)).'.'.pathinfo($check['filename']['name'], PATHINFO_EXTENSION);

        // @todo check for duplicate filename

        // try moving file
        if (!move_uploaded_file($check['filename']['tmp_name'], $filename)) {
            return FALSE;

        // file successfully uploaded
        } else {
            // save the file path relative from WWW_ROOT e.g. uploads/example_filename.jpg
            $this->data[$this->alias]['filepath'] = str_replace(DS, "/", str_replace(WWW_ROOT, "", $filename) );
        }
    }

    return TRUE;
}

/**
 * Before Save Callback
 * @param array $options
 * @return boolean
 */
public function beforeSave($options = array()) {
    // a file has been uploaded so grab the filepath
    if (!empty($this->data[$this->alias]['filepath'])) {
        $this->data[$this->alias]['filename'] = $this->data[$this->alias]['filepath'];
    }
    
    return parent::beforeSave($options);
}
  /////*******************///
  
    
    
    
    /**************** http://www.jamesfairhurst.co.uk/posts/view/cakephp_contact_form_with_file_uploads
     * Validation
     * 
     *  Todo:: Hardcoded Strings !?!?!?!?!?!?!?!?!?!?!??!!??!!??!
     */
    
    public $validate = array(
        'client_name' => array(
                            'rule'    => 'notEmpty',
                            'message' => 'This field cannot be left blank'
                        ),
        'budget' => array(
                            'rule'    => 'notEmpty',
                            'message' => 'This field cannot be left blank'
                        ),
        'message'  => array(
                            'rule'    => 'notEmpty',
                            'message' => 'This field cannot be left blank'
                        ),
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
                'rule' => array('mimeType', array('image/gif','image/png','image/jpg','image/jpeg','application/pdf')),
                'message' => 'Invalid file, only images or pdf allowed',
                'required' => FALSE,
                'allowEmpty' => TRUE,
            ),
             'extension'=> array(            
                'rule'    => array(   'extension',array('gif', 'jpeg', 'png', 'jpg, pdf')),
                  'message' => 'Invalid file, only images or pdf allowed',
            ),
            // custom callback to deal with the file upload
            'processUpload' => array(
                'rule' => 'processUpload',
                'message' => 'Something went wrong processing your file',
                'required' => FALSE,
                'allowEmpty' => TRUE,
                'last' => TRUE,
            )
        )
    );
    
}

?>
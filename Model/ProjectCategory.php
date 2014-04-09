<?php App::uses('AppModel', 'Model');
class ProjectCategory extends AppModel {
    public $useTable = 'project_categories';
    
        var $belongsTo = array(
   'Project' => array(   'className' => 'Project',  'foreignKey' => 'project_categories'    )
 );
 
 
}
?>
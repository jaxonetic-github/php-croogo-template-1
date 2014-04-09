

<?php 
App::uses('AppModel', 'Model');
class Project extends AppModel {
    public $useTable = 'project';
  
     
     
    public $hasOne = 
        array( 'ProjectCategory'=> array( 'classname'=>'ProjectCategory','foreignKey'=>'id' ));
    
 
   
   
   // ex. 'conditions' => array('Article.status !=' => 'pending'),
    public function findAll()
    {
         $projects = $this->find('all');
         
         return $projects;
    }
    
}

?>
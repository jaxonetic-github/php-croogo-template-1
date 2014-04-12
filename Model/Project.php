

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
    
}

?>
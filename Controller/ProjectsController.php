

<?php  App::uses('AppController', 'Controller');
   
   
class ProjectsController extends AppController {

  public $helpers = array('Html');
  var $layout = 'rocky';
  
  public function index(){
      $this -> layout = 'projects';
    
      $projects = $this->Project->findAll();
      
     //  debug($projects);
       $this->set('projects', $projects);
  }
  
  public function details(){

     $projects = $this->Project->find('all');
      
     $this->set('projects', $projects);
  }

   }
?>
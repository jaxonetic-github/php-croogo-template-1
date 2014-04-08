

<?php  App::uses('AppController', 'Controller');
   
   
class ProjectsController extends AppController {

  public $helpers = array('Html');
  
  
  public function index(){
      $this -> layout = 'projects';
      $projects = $this->Project->find('all');
      
       print_r($projects);
       $this->set('projects', $projects);
  }
  
  public function details(){
    //$this->autoLayout = false;
    //$this->autoRender = false;
    
     $projects = $this->Project->find('all');
      
     print_r($projects);
       $this->set('projects', $projects);
     
  }


  private function validateRequest(){
    	if (empty($this->request->params['requested'])) {
            throw new ForbiddenException();
        }
  }
	



   }
?>
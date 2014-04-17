

<?php  App::uses('AppController', 'Controller');
   
   
class ProjectsController extends AppController {

  public $helpers = array('Html', 'Link','Form', 'Session');
//  public $components = array( 'DebugKit.Toolbar' => array(/* array of settings */));


  var $layout = 'projects';
  
  public function index(){
     
      $projects = $this->Project->find('all', array('order' => array('project_categories')));
      $organizedResult = array();
      $ctr = 0;
      
      //create 2 dim array based on CategoryNAme
       foreach ($projects as $key => $value) {
    
           $organizedResult[$value['ProjectCategory']['category']][]=$value['Project'];
          
       }
        $this->log($organizedResult);
       $this->set('projects', $organizedResult);
  }
  
 
  
    
 }
?>
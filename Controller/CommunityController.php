

<?php  App::uses('AppController', 'Controller');
   
   
class CommunityController extends AppController {

  public $helpers = array('Html', 'Link','Form', 'Session');
  public $components = array(    'DebugKit.Toolbar' => array(/* array of settings */));

  var $uses =  "CommunityInvolvement";
  var $layout = 'rocky';
  
  public function index(){
     return $this->redirect(array('action' => 'listInvolvements')); 
  }
  
  public function listInvolvements(){

     $notices = $this->CommunityInvolvement->find('all');
     
     $this->set('notices', $notices);
     // Render the element in /View/Elements/ajaxreturn.ctp
     $this->render('/Elements/Community/listInvolvements');
  }


  
 
  
    
 }
?>
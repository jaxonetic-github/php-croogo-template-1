

<?php  App::uses('AppController', 'Controller');
   
   
class RockyController extends AppController {

  public $helpers = array('Html');
  
  var $layout = 'rocky';
  
  public function index(){}

	
    private function validateRequest(){
    	if (empty($this->request->params['requested'])) {
            throw new ForbiddenException();
        }
       
    }
	



   }
?>
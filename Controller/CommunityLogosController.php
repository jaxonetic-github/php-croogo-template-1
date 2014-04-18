

<?php  App::uses('AppController', 'Controller');
   
   
class CommunityLogosController extends AppController {

  public $helpers = array('Html', 'Link','Form', 'Session');
  public $components = array(    'DebugKit.Toolbar' => array(/* array of settings */));

  var $uses =  "CommunityLogo";
  var $layout = 'rocky';
  
  public function index(){
     return $this->redirect(array('action' => 'listLogos')); 
  }
  
  public function listLogos(){

     $logos = $this->CommunityLogo->find('all');
     
     $this->set('logos', $logos);
     // Render the element in /View/Elements/ajaxreturn.ctp
     $this->render('/Elements/Community/admin/Logos/listCommunityLogos');
  }


   
 public function add() {
     debug("add");
        if ($this->request->is('post')) {
            debug($this->request->data);
            $this->CommunityLogo->create();
           
            if ($this->CommunityLogo->save($this->request->data)) {
                $this->Session->setFlash(__('Your post has been saved.'));
               
               return $this->redirect(array('action' => 'listLogos'));
            }
            $this->Session->setFlash(__('Unable to add your post.'));
        }
       
         $this->render('/Elements/Community/admin/Logos/addCommunityLogo');
    }//add
    
    
   
    
    
    public function edit($id = null) {
        if (!$id) {
            throw new NotFoundException(__('Invalid post'));
        }
    
        $logo = $this->CommunityLogo->findById($id);
        if (!$project) {
            throw new NotFoundException(__('Invalid post'));
        }
    
        if ($this->request->is(array('post', 'put'))) {
            $this->CommunityLogo->id = $id;
            if ($this->CommunityLogo->save($this->request->data)) {
                $this->Session->setFlash(__('Your post has been updated.'));
                return $this->redirect(array('action' => 'listCommunityLogos'));
            }
            $this->Session->setFlash(__('Unable to update your post.'));
        }
    
        if (!$this->request->data) {
            $this->request->data = $logo;
        }
       
        
        $this->render('/Elements/Community/admin/Logos/editCommunityLogo' );
     }//edit
  
  
  public function delete($id) {
    /*
     * Todo: make this a post request instead of get ../projects/listProjects
     *   
     *           if ($this->request->is('get')) {
     *               throw new MethodNotAllowedException();
     *           }
     */
    if ($this->CommunityLogo->delete($id)) {
        $this->Session->setFlash(
            __('Logo deleted.', h($id))
        );
        
       return $this->redirect(array('action' => 'listLogos'));
    }
    
    /*********** todo: delete file from system or archive for retrieveal ************/
    
}
  
 
  
    
 }
?>
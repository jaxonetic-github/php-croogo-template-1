

<?php  App::uses('AppController', 'Controller');
   
   
class CommunityAdminController extends AppController {

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
     $this->render('/Elements/Community/admin/listInvolvements');
  }


   
 public function add() {
   
        if ($this->request->is('post')) {
            debug($this->request->data);
            $this->CommunityInvolvement->create();
           
            if ($this->CommunityInvolvement->save($this->request->data)) {
                $this->Session->setFlash(__('Your post has been saved.'));
               
               return $this->redirect(array('action' => 'listInvolvements'));
            }
            $this->Session->setFlash(__('Unable to add your post.'));
        }
       
         $this->render('/Elements/Community/admin/addInvolvement');
    }//add
    
    
   
    
    
    public function edit($id = null) {
        if (!$id) {
            throw new NotFoundException(__('Invalid post'));
        }
    
        $logo = $this->CommunityInvolvement->findById($id);
        if (!$project) {
            throw new NotFoundException(__('Invalid post'));
        }
    
        if ($this->request->is(array('post', 'put'))) {
            $this->CommunityInvolvement->id = $id;
            if ($this->CommunityInvolvement->save($this->request->data)) {
                $this->Session->setFlash(__('Your post has been updated.'));
                return $this->redirect(array('action' => 'listInvolvements'));
            }
            $this->Session->setFlash(__('Unable to update your post.'));
        }
    
        if (!$this->request->data) {
            $this->request->data = $logo;
        }
       
        
        $this->render('/Elements/Community/admin/editInvolvement' );
     }//edit
  
  
  public function delete($id) {
    /*
     * Todo: make this a post request instead of get ../projects/listProjects
     *   
     *           if ($this->request->is('get')) {
     *               throw new MethodNotAllowedException();
     *           }
     */
    if ($this->CommunityInvolvement->delete($id)) {
        $this->Session->setFlash(
            __('Logo deleted.', h($id))
        );
        
       return $this->redirect(array('action' => 'listInvolvements'));
    }
    
    /*********** todo: delete file from system or archive for retrieveal ************/
    
}
  
 
  
    
 }
?>
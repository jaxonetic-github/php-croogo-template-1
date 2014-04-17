

<?php  App::uses('AppController', 'Controller');
   
   
class ProjectAdminController extends AppController {

  public $helpers = array('Html', 'Link','Form', 'Session');
  public $components = array(
    'DebugKit.Toolbar' => array(/* array of settings */)
);

  var $uses = "Project";
  var $layout = 'contentAdmin';
  
  public function index(){
     
     return $this->redirect(array('action' => 'listProjects')); 
  }
  
  public function listProjects(){

     $projects = $this->Project->find('all');
      
     $this->set('projects', $projects);
     // Render the element in /View/Elements/ajaxreturn.ctp
     $this->render('/Elements/listProjects');
  }


    public function viewProject($id = null) {
        if (!$id) {
            throw new NotFoundException(__('Invalid post'));
        }

        $proj = $this->Project->findById($id);
        if (!$proj) {
            throw new NotFoundException(__('Invalid post'));
        }
        $this->set('project', $proj);
        $this->render('/Elements/viewProject');
    }

 public function add() {
     
        if ($this->request->is('post')) {
            $this->Project->create();
           
            if ($this->Project->save($this->request->data)) {
                $this->Session->setFlash(__('Your post has been saved.'));
                $this->log("Save work!");
               return $this->redirect(array('action' => 'listProjects'));
            }
            $this->Session->setFlash(__('Unable to add your post.'));
        }
          $this->loadModel('ProjectCategory');
        $categories = $this->ProjectCategory->find('list', array('fields' => array('category') ));
        $this->set('categories', $categories);
        
         $this->render('/Elements/addProject');
    }//add
    
    
   
    
    
    public function editProject($id = null) {
        if (!$id) {
            throw new NotFoundException(__('Invalid post'));
        }
    
        $project = $this->Project->findById($id);
        if (!$project) {
            throw new NotFoundException(__('Invalid post'));
        }
    
        if ($this->request->is(array('post', 'put'))) {
            $this->Project->id = $id;
            if ($this->Project->save($this->request->data)) {
                $this->Session->setFlash(__('Your post has been updated.'));
                return $this->redirect(array('action' => 'listProjects'));
            }
            $this->Session->setFlash(__('Unable to update your post.'));
        }
    
        if (!$this->request->data) {
            $this->request->data = $project;
        }
        $this->loadModel('ProjectCategory');
        $categories = $this->ProjectCategory->find('list', array('fields' => array('category') ));
        $this->set('categories', $categories);
        
        $this->render('/Elements/editProject' );
     }//edit
  
  
  public function deleteProject($id) {
    /*
     * Todo: make this a post request instead of get ../projects/listProjects
     *   
     *           if ($this->request->is('get')) {
     *               throw new MethodNotAllowedException();
     *           }
     */
    if ($this->Project->delete($id)) {
        $this->Session->setFlash(
            __('Project deleted.', h($id))
        );
        
       return $this->redirect(array('action' => 'listProjects'));
    }
    
    /*********** todo: delete file from system or archive for retrieveal ************/
    
}
  
 
  
    
 }
?>
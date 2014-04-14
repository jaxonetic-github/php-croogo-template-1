

<?php  App::uses('AppController', 'Controller');
   
   
class ProjectsController extends AppController {

  public $helpers = array('Html', 'Link','Form', 'Session');
  public $components = array(
    'DebugKit.Toolbar' => array(/* array of settings */)
);


  var $layout = 'projects';
  
  public function index(){
     
    
      $projects = $this->Project->find('all', array('order' => array('project_categories')));
      $organizedResult = array();
      $ctr = 0;
      
      //create 2 dim array based on CategoryNAme
       foreach ($projects as $key => $value) {
    
           $organizedResult[$value['ProjectCategory']['category']][]=$value['Project'];
          
       }
        
       $this->set('projects', $organizedResult);
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
             $this->log($this->request->data);
           
            if ($this->Project->save($this->request->data)) {
                $this->Session->setFlash(__('Your post has been saved.'));
                $this->log("Save work!");
               return $this->redirect(array('action' => 'index'));
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
                return $this->redirect(array('action' => 'index'));
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
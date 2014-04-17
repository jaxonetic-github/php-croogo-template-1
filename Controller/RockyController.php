<?php  App::uses('AppController', 'Controller');

class RockyController extends AppController {

    public $helpers = array('Html');
    
    
    var $layout = 'rocky';
    
    //Using Node model from Plugin
    var $uses   = 'Nodes.Node';
    
    
    public function index() {
         $nodes = $this ->getAwardedBlogNodes(); 
         $this->set('nodes', $nodes);
    }

    /*
     * Get active blog posts for homepage Awards banner
     *
     */
    private function getAwardedBlogNodes() {


        $nodes = $this -> Node -> find('all', array('fields' => array('title', 'body', 'image_path'), 'conditions' => array('Node.status' => 1, 'type' => 'blog', ), 'order' => array('Node.created DESC'), 'limit' => 5));
      
        return $nodes;
    }

    private function validateRequest() {
        if (empty($this -> request -> params['requested'])) {
            throw new ForbiddenException();
        }

    }

}
?>
<?php

App::uses('CakeEmail', 'Network/Email');
App::uses('AppController', 'Controller');


/**
 * Contacts Controller
 *
 * @category Controller
 * @package  Croogo.Contacts.Controller
 * @version  1.0
 * @author   Fahad Ibnay Heylaal <contact@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class ContactsController extends AppController {

var $layout = 'rocky';
  public $helpers = array('Html');
/**
 * Controller name
 *
 * @var string
 * @access public
 */
	
/**
 * Models used by the Controller
 *
 * @var array
 * @access public
 */
	public $uses = array('Contacts.Contact', 'Contacts.Message');

  public function index(){}



  public function save(){
      
        if (!empty($this->request->data) ) {
            $this->request->data['Message']['contact_id'] = $contact['Contact']['id'];
            $this->request->data['Message']['title'] = htmlspecialchars($this->request->data['Message']['title']);
            $this->request->data['Message']['name'] = htmlspecialchars($this->request->data['Message']['name']);
            $this->request->data['Message']['phone'] = htmlspecialchars($this->request->data['Message']['phone']);
            $this->request->data['Message']['address'] = htmlspecialchars($this->request->data['Message']['address']);
            $this->request->data['Message']['body'] = htmlspecialchars($this->request->data['Message']['body']);
            $continue = $this->_validation($continue, $contact);
            $continue = $this->_spam_protection($continue, $contact);
            $continue = $this->_captcha($continue, $contact);
            $continue = $this->_send_email($continue, $contact);

            if ($continue === true) {
                //$this->Session->setFlash(__d('croogo', 'Your message has been received.'));
                //unset($this->request->data['Message']);

                echo $this->flash(__d('croogo', 'Your message has been received...'), '/');
            }
        }else{
            
        }

       
      
  }
}

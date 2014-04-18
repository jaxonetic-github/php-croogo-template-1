
    <!-- Here is where we loop through our $Projects array, printing out Project info -->
<dl id="community-logos">
    <?php foreach ($logos as $logo): ?>
    
       
        <dt> <?php  echo $this -> Html -> image(".." . DS . $logo['CommunityLogo']['image_path'], array('alt' => '', 'class' => 'rocky-img-responsive img-circle', 'full_base' => true)); ?></dt>
 

        <dd>   <?php echo $this->Html->link( 'Delete', array('action' => 'delete', $logo['CommunityLogo']['id']) ) ; ?></dd>
    
    <?php endforeach; ?>
    <?php unset($logo); ?>
</dl>
<?php
 if ($this->Session->read('Auth.User.Role.title')==='Admin' ){
   echo $this->Html->link('Add Logo',  array('controller' => 'communitylogos', 'action' => 'add')); 
 }
?>
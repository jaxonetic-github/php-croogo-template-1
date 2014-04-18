<h1>Edit Post</h1>
<?php
echo $this->Form->create('Project', array('type' => 'file'));
echo $this->Form->input('category', array('options' => $categories));
echo $this->Form->input('client_name');
echo $this->Form->input('delivery_method');
echo $this->Form->input('budget');
echo $this->Form->input('title');
echo $this->Form->input('location');
echo $this->Form->input('summary', array('rows' => '3'));
echo $this->Form->input('filename', array('type' => 'file'));
echo $this->Form->input('id', array('type' => 'hidden'));
echo $this->Form->end('Save');
?>

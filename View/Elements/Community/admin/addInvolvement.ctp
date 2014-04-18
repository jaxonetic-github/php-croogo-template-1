
<h1>Add Community Involvment</h1>
<?php 
echo $this->Form->create('CommunityInvolvement', array('type' => 'file'));

echo $this->Form->input('description');

echo $this->Form->input('filename', array('type' => 'file'));

echo $this->Form->end('Save');
?>
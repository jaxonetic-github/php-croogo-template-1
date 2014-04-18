<h1>Edit Post</h1>
<?php
echo $this->Form->create('CommunityInvolvement', array('type' => 'file'));

echo $this->Form->input('description');

echo $this->Form->input('filename', array('type' => 'file'));

echo $this->Form->input('id', array('type' => 'hidden'));
echo $this->Form->end('Save');
?>

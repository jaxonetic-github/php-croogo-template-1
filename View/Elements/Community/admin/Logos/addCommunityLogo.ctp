
<h1>Add Logo</h1>
<?php 
echo $this->Form->create('CommunityLogo', array('type' => 'file'));

echo $this->Form->input('filename', array('type' => 'file'));
echo $this->Form->input('description');
echo $this->Form->end('Save');
?>
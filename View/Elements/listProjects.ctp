<h1>Blog Projects</h1>
<table  class="container rocky-center-aligned">
    <tr>
        <td>Client Name</th>
        <td>Delivery Method</th>
        <td>Budget</th>
        <td>Title</th>
        <td>Location</th>
        <td>Action</th>
    </tr>

    <!-- Here is where we loop through our $Projects array, printing out Project info -->

    <?php foreach ($projects as $project): ?>
    <tr>
       
        <td><?php echo $project['Project']['client_name']; ?></td>
        <td><?php echo $project['Project']['delivery_method']; ?></td>
        <td><?php echo $project['Project']['budget']; ?></td>
        <td><?php echo $project['Project']['title']; ?></td>
        <td><?php echo $project['Project']['location']; ?></td>
        <td><?php echo  $this->Html->link( 'View', array('action' => 'viewProject', $project['Project']['id']) ) .  '  /  ' . $this->Html->link( 'Edit', array('action' => 'editProject', $project['Project']['id']) ) .  '  /  '  .  $this->Html->link( 'Delete', array('action' => 'deleteProject', $project['Project']['id']) ) ; ?></td>
    </tr>
    <?php endforeach; ?>
    <?php unset($project); ?>
</table>

<?php echo $this->Html->link(
    'Add Project',
    array('controller' => 'projectadmin', 'action' => 'add')
); ?>
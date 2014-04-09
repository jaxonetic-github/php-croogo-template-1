

    <?php foreach ($projects as $projectdetail): ?>
         <div class="jumbotron">
               <div class="container">
<p>Project Details (<?php echo $projectdetail['ProjectCategory']['category'] ?>)
<p/><h4 id="scripps"><?php  echo $projectdetail['Project']['title'] ?></h4>
<?php  echo $this -> Html -> image("projects/roughcarpentry_framing/" . $projectdetail['Project']['image_name'], array('alt' => 'Scripps Ranch High School', 'class' => 'img-responsive')); ?>
<ul>
    <li>
        Client: <?php echo  $projectdetail['Project']['client_name'] ?>
    </li>
    <li>
        Project Delivery Method: <?php echo  $projectdetail['Project']['delivery_method'] ?>
    </li>
    <li>
        Project Budget:<?php echo  $projectdetail['Project']['budget'] ?>
    </li>
    <li>
        Scope/Summary:
        <p class="summary">
            <?php echo  $projectdetail['Project']['summary'] ?>
        </p>
    </li>
</ul>
</div>        
      </div>  
    <?php endforeach; ?>
    <?php unset($projectdetail); ?>

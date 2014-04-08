


    <?php foreach ($projects as $projectdetail): ?>
         <div class="jumbotron">
               <div class="container">
<p>Project Details (<?php $projectdetail['project_categories'] ?>)
<p/><h4 id="scripps"><?php $projectdetail['title'] ?></h4>
<?php  echo $this -> Html -> image("projects/roughcarpentry_framing/" . $projectdetail['image-name'], array('alt' => 'Scripps Ranch High School', 'class' => 'img-responsive')); ?>
<ul>
    <li>
        Client: <?php $projectdetail['image-name'] ?>
    </li>
    <li>
        Project Delivery Method: <?php $projectdetail['delivery_method'] ?>
    </li>
    <li>
        Project Budget:<?php $projectdetail['budget'] ?>
    </li>
    <li>
        Scope/Summary:
        <p class="summary">
            <?php $projectdetail['summary'] ?>
        </p>
    </li>
</ul>
</div>        
      </div>  
    <?php endforeach; ?>
    <?php unset($projectdetail); ?>


    <?php
    $categories = array_keys($projectsByCategory);
     foreach ($categories as $category): 
     ?>
              <div id="" class="jumbotron">
               <div class="container">
                   <p id="<?php echo $category?>">Project Details (<?php echo $category ?>)<p/>
                  
                    
                    
                  <?php    foreach ($projectsByCategory[$category] as $projectDetail):  ?>
   <!--     /*
         * remove not alphanumeric characters from title and put it in the jumbotron id for bootstrap dataspy
         */
   -->
<h4 id="<?php  echo $projectDetail['location'] ?>"><?php  echo $projectDetail['title'] ?></h4>
<?php  echo $this -> Html -> image("projects/roughcarpentry_framing/" . $projectDetail['image_name'], array('alt' => 'Scripps Ranch High School', 'class' => 'rocky-img-responsive')); ?>
<ul>
    <li>
        Client: <?php echo  $projectDetail['client_name'] ?>
    </li>
    <li>
        Project Delivery Method: <?php echo  $projectDetail['delivery_method'] ?>
    </li>
    <li>
        Project Budget:<?php echo  $projectDetail['budget'] ?>
    </li>
    <li>
        Scope/Summary:
        <p class="summary">
            <?php echo  $projectDetail['summary'] ?>
        </p>
    </li>
</ul>
 
                  <?php endforeach; ?>
                  <?php unset($projectDetail); ?>
</div>    <!--container-->    
      </div> <!--jumbotron  -->
    <?php endforeach; ?>
    <?php unset($category); ?>
           



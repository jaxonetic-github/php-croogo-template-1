 

 

<div  id="sidebar"   data-spy="affix" >
    
    <?php  echo $this -> Html -> image("projects/sidenav_building.png", array('alt' => '')); ?>
    <span>Projects</span>
    <ul id="projects-sidemenu" class="nav-list">
        
    <?php
    $categories = array_keys($projectsByCategory);
     foreach ($categories as $category): 
     ?>
            <li class="highlight"><a href="#"><?php echo $category ?></a>
              <ul>
                  <?php    foreach ($projectsByCategory[$category] as $projectDetail):  ?>
                    <li class=""><a href="#"><?php echo $projectDetail['location'] ?></a></li>
                  <?php endforeach; ?>
                  <?php unset($projectDetail); ?>
               </ul>
              </li> 
    <?php endforeach; ?>
    <?php unset($category); ?>
           

   </ul><!-- the topmost nav -->
</div>
         
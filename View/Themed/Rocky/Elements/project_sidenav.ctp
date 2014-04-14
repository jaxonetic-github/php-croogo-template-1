

<div  id="sidebar"  class="affix"  data-spy="affix" >
    
    <?php  echo $this -> Html -> image("projects/sidenav_building.png", array('alt' => '')); ?>
    <span>Projects</span>
    <ul id="projects-sidemenu" class="nav nav-tabs nav-stacked">
        
    <?php
    $categories = array_keys($projectsByCategory);

     foreach ($categories as $category): 
           
     ?>
            <li class=""><a href='#<?php echo $this->Link->removeNonAlphaNumerics($category) ?>'><?php echo $category ?></a>
              <ul class="nav">
                  <?php    foreach ($projectsByCategory[$category] as $key => $projectDetail):
                  
                    ?>
                    <li class=""><a href="#<?php echo $this->Link->getLocationByCategoryHrefLink($projectDetail,$category ); ?>"><?php echo $projectDetail['location'] ?></a></li>
                  <?php endforeach; ?>
                  <?php unset($projectDetail); ?>
               </ul>
              </li> 
    <?php endforeach; ?>
    <?php unset($category); ?>
           

   </ul><!-- the topmost nav -->
</div>
         
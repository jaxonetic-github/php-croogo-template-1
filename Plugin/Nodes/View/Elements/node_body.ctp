<div class="node-body">
	<?php //echo $this->Nodes->field('body'); ?>
	 <ul id="home-news-banneritems" class="list-inline">
         <li class="img-cell"><div class="thumbnail">
             <?php  echo $this -> Html -> image( ".." .DS.$this->Nodes->field('image_path'), array('alt' => 'Scripps Ranch High School', 'class' => 'rocky-img-responsive','full_base' => true)); ?>

             </div>
         </li>
         <li class="text-cell"> <p class="news-banner-title"><?php echo $this->Nodes->field('title'); ?></p>
              <p class="news-banner-text"><?php echo $this->Nodes->field('body'); ?></p>
             
         </li>
         <li class="nav-date-cell"> <ul class="list-unstyled"><li><div></div></li>
                  <li class="bottomdate"><p class="news-banner-date-text pull-right">Wed, Nov 13, 2013</p></li>
             </ul>
         </li>
       </ul>
</div>
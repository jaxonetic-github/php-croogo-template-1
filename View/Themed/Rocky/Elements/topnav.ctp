

<?php
 echo $this->Html->script("jquery.cookie");
 
 //menu active/inactive javascript
 echo $this->Html->script('menu');
 
?>


<nav  class="rockytopnav navbar navbar-default" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#top-navbar-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
   
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="top-navbar-collapse">
    <ul class="nav   navtext  nav-justified ">
      <li class="rocky-menuitem rockynav-home"><?php echo $this->Html->link('home','/'); ?></li>
      <li class="dropdown rockynav-company">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">company <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li class="rocky-menuitem"><a href="#">about us</a></li>
          <li class="rocky-menuitem"><a href="#">awards</a></li>
          <li class="rocky-menuitem"><a href="#">safety</a></li>
          <li class="rocky-menuitem"><a href="#">community</a></li>
          <li class="rocky-menuitem"><a href="#">testimonials</a></li>
        </ul>
      </li>
      <li class="rocky-menuitem rockynav-projects"><?php echo $this->Html->link('projects','/projects'); ?></li>
      <li class="rocky-menuitem rockynav-news"><?php echo $this->Html->link('news','/blog'); ?></li>
      <li class="rocky-menuitem rockynav-message"><?php echo $this->Html->link('contact us','/contactPage'); ?></li>
    </ul>
   </div>
</nav>
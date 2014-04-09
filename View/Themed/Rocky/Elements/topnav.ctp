


<?php

$this -> Html -> scriptBlock("
jQuery(function($) {
                   $('.rocky-menuitem').click(function(evt){
         
                    });
 });          
", array('inline' => false));
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
    <ul class="nav nav-justified  navtext">
      <li class="active"><a href="/RockyCoastBuilders">home</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">company <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li class="rocky-menuitem"><a href="#">about us</a></li>
          <li class="rocky-menuitem"><a href="#">awards</a></li>
          <li class="rocky-menuitem"><a href="#">safety</a></li>
          <li class="rocky-menuitem"><a href="#">community</a></li>
          <li class="rocky-menuitem"><a href="#">testimonials</a></li>
        </ul>
      </li>
      <li class="rocky-menuitem"><a href="projects">projects</a></li>
      <li class="rocky-menuitem"><a href="blog">news</a></li>
      <li class="rocky-menuitem"><a href="#">contact&nbsp;us</a></li>
    </ul>
   </div>
</nav>



<?php
 echo $this->Html->script("jquery.cookie");
 
$this -> Html -> scriptBlock("
jQuery(function($) {
                   
            /*
             *  if cookie activeNav cookie doesn't exist set home menuitem active
             *
             console.log($('.active').html());   
             console.log($.cookie('activeNav'));
           if($.cookie('activeNav')){}
           else{
               $('.rockynav-home').addClass('active');
               $.cookie('activeNav', 'home');
           }
       
   /*
    * Handles menu click events
    */
                   $('.rocky-menuitem').click(function(evt){
                       // $('.active').toggleClass('active');
                        
                        //get the list of classes for this element
                        var classList = $(this).attr('class').split(/\s+/);
                        
                        //go through them(should only be about 2-3) and find the one that starts with rockynav-
                        $(classList).each(function(index){
                           //I want the text after [rockynav-] 
                         
                           if(classList[index].substring(0, 9)==='rockynav-'){
                                $.cookie('activeNav', 'classList[index].substring(9)', { expires: .2 });
                           }
                        });
                        $(this).addClass('active');
                        
                       

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
    <ul class="nav  navbar-nav  navtext  nav-justified ">
      <li class="active rocky-menuitem rockynav-home"><a href="#">home</a></li>
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
      <li class="rocky-menuitem rockynav-projects"><a href="#projects">projects</a></li>
      <li class="rocky-menuitem rockynav-blog"><a href="#blog">news</a></li>
      <li class="rocky-menuitem rockynav-contactus"><a href="#">contact&nbsp;us</a></li>
    </ul>
   </div>
</nav>
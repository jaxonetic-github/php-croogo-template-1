<?php

$this -> Html -> scriptBlock("
jQuery(function($) {
$('.imgLiquidFill').imgLiquid({
fill: true
});
console.log('sdfafdsafssd')
});
", array('inline' => false));
?>

<div class="container">
  <ul  class="list-inline"><li class="header-listitem"> <?php  echo $this->Html->image("projects/logo_projects.png", array('alt' => 'Rocky Coast Builders, Inc.')); ?></li>
                            <li  class="header-listitem">
                                <div>
                  
                                    
                                </div>
                                <div> <?php echo $this->element('topnav'); ?></div>
                             
                            </li>
    </ul>   
</div>

	<div class="container ">

		<div class="row row-offcanvas row-offcanvas-right">
			<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">

				<?php echo $this -> element('project_sidenav'); ?>

			</div><!--/span-->

			<div class="col-xs-12 col-sm-9">
				<p class="pull-right visible-xs">
					<button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">
						Toggle nav
					</button>
				</p>
				
					
				<?php echo $this -> element('projectDetails', array(
    "projects" => $projects) ); ?>

			</div>

		</div><!--/row-->

		<hr>

	</div><!--/.container-->


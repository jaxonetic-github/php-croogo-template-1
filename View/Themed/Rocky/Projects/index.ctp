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
                   <div class="navbar-collapse collapse">
          <form id="header-search" class="navbar-form navbar-right">
            <div class="form-group">
              <input type="text" placeholder="Search" class="form-control">
            </div>
          </form>
        </div><!--/.navbar-collapse -->
                                    
                                </div>
                                <div> <?php echo $this->element('topnav'); ?></div>
                             
                            </li>
    </ul>   
</div>

	<div class="container ">

		<div class="row">
			<div class="col-xs-6 col-sm-3">

				<?php echo $this -> element('project_sidenav', array( "projectsByCategory" => $projects) ); ?>
              

			</div><!--/span-->

			<div class="col-xs-12 col-sm-9">
				<p class="pull-right visible-xs">
					<button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">
						Toggle nav
					</button>
				</p>
				
					
				<?php echo $this -> element('projectDetails', array("projectsByCategory" => $projects) ); ?>

			</div>

		</div><!--/row-->

		<hr>

	</div><!--/.container-->


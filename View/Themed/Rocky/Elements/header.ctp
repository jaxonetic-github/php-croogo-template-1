<div class="navbar navbar-default navbar-static-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
         <?php  echo $this->Html->image("rocky_logo.png", array('alt' => 'CakePHP')); ?>
        </div>
        <div class="navbar-collapse collapse">
          <form id="header-search" class="navbar-form navbar-right">
            <div class="form-group">
              <input type="text" placeholder="Search" class="form-control">
            </div>
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </div>

<div class="container">
<?php echo $this->element('topnav'); ?>
</div>
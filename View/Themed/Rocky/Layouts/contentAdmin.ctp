<?php
/**
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

$cakeDescription = __d('cake_dev', 'CakePHP: the rapid development php framework');
?>
<!DOCTYPE html>
<html>
<head>
    <?php echo $this->Html->charset(); ?>
    <title>Rocky Coast Builders, Inc. Projects</title>
    <?php
        echo $this->Html->meta('icon');
        echo $this->Html->meta('viewport', 'width=device-width, initial-scale=1.0');
        echo $this->Html->meta('description',    'Construction, Rocky Coast Builders');
        echo $this->Html->meta('author',    'Alonzo Jackson');
        
        
        echo $this->Html->css("sass-bootstrap.min");
        echo $this->Html->css("jumbotron");
        echo $this->Html->css("rocky");
        
        echo $this->fetch('meta');
        echo $this->fetch('css');
        echo $this->Html->script('jquery-2.0.2.min');
                echo $this->Html->script('imgLiquid');
        echo $this->fetch('script');
        
    ?>
</head>
<body>
    
  <?php echo $this->element('projectheader'); ?>    
    <div  class="jumbotron">
      

        
    
            <p id="flash-message"><?php echo $this->Session->flash(); ?></p>
            
      <div id="content" class="container rocky-center-aligned">
           <p id="flash-message"><?php echo $this->Session->flash(); ?></p>
            <?php echo $this->fetch('content'); ?>
      </div>
        </div>
        
       <?php echo $this->element('footer_common'); ?>

        
        <?php echo $this->fetch('bottomscript'); ?>
        
    
    
    
</body>
</html>
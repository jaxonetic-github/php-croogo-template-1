<!DOCTYPE html>
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<link href="http://twitter.github.com/bootstrap/assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<script src="http://twitter.github.com/bootstrap/assets/js/bootstrap.js"></script>

<title>JS Bin</title>


    <?php
        echo $this->Html->meta('icon');
        echo $this->Html->meta('viewport', 'width=device-width, initial-scale=1.0');
        echo $this->Html->meta('description',    'Construction, Rocky Coast Builders');
        echo $this->Html->meta('author',    'Alonzo Jackson');
        
        echo $this->Html->css("sass-bootstrap.min");
        //echo $this->Html->css("offcanvas");
        echo $this->Html->css("rocky");
        
        echo $this->fetch('meta');
        echo $this->fetch('css');
        echo $this->Html->script('jquery-2.0.2.min');
        echo $this->Html->script('imgLiquid');
        echo $this->Html->script('sass-bootstrap.min');
       echo $this->Html->css("jumbotron");
        //echo $this->Html->script('offcanvas');
        echo $this->fetch('script');
        
    ?>

</head>
<body>
  <div id='navbarExample'>
    <ul id='' class="nav nav-list">
      <li class='active'><a href="#one">@one</a></li>
      <li><a href="#two">@two</a></li>
      <li><a href="#three">@three</a></li>
    </ul>
  </div>
  <!-- offset='80' is the .scrollspy-example position of the body top. -->
  <div class='scrollspy-example' data-offset='80' data-spy="scroll" data-target="#navbarExample">
    <div id='one'>
      <table>
        <tbody>
          <tr><td>1</td><td>1</td></tr>
          <tr><td>1</td><td>1</td></tr>
          <tr><td>1</td><td>1</td></tr>
          <tr><td>1</td><td>1</td></tr>
          <tr><td>1</td><td>1</td></tr>
          <tr><td>1</td><td>1</td></tr>
          <tr><td>1</td><td>1</td></tr>
          <tr><td>1</td><td>1</td></tr>
          <tr><td>1</td><td>1</td></tr>
          <tr><td>1</td><td>1</td></tr>
          <tr><td>1</td><td>1</td></tr>
          <tr><td>1</td><td>1</td></tr>
        </tbody>
      </table>
    </div>
    <div id='two'>
      <table>
        <tbody>
          <tr><td>2</td><td>2</td></tr>
          <tr><td>2</td><td>2</td></tr>
          <tr><td>2</td><td>2</td></tr>
          <tr><td>2</td><td>2</td></tr>
          <tr><td>2</td><td>2</td></tr>
          <tr><td>2</td><td>2</td></tr>
          <tr><td>2</td><td>2</td></tr>
          <tr><td>2</td><td>2</td></tr>
          <tr><td>2</td><td>2</td></tr>
          <tr><td>2</td><td>2</td></tr>
          <tr><td>2</td><td>2</td></tr>
          <tr><td>2</td><td>2</td></tr>
        </tbody>
      </table>
    </div>
    <div id='three'>
      <table>
        <tbody>
          <tr><td>3</td><td>3</td></tr>
          <tr><td>3</td><td>3</td></tr>
          <tr><td>3</td><td>3</td></tr>
          <tr><td>3</td><td>3</td></tr>
          <tr><td>3</td><td>3</td></tr>
          <tr><td>3</td><td>3</td></tr>
          <tr><td>3</td><td>3</td></tr>
          <tr><td>3</td><td>3</td></tr>
          <tr><td>3</td><td>3</td></tr>
          <tr><td>3</td><td>3</td></tr>
          <tr><td>3</td><td>3</td></tr>
          <tr><td>3</td><td>3</td></tr>
        </tbody>
      </table>
    </div>
  </div>
</body>
</html>

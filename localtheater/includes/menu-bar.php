<head>
<style>


.navbar {
  overflow: hidden;
  background-color: skyblue;

  width: 100%;
}

.navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background: #ddd;
  color: black;
}

</style>
</head>


<div class="navbar">
  <a href="index.php"></a>
  <?php $sql=mysqli_query($con,"select id,categoryName  from category limit 6");
while($row=mysqli_fetch_array($sql))
{
    ?>

      
        <a href="category.php?cid=<?php echo $row['id'];?>"> <?php echo $row['categoryName'];?></a>
      
      
      <?php } ?>
            <div class="navbar-header">
                <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    &#9776;
                </button>
            </div>
            <div class="nav-bg-class">
                <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
  <div class="nav-outer">
    <ul class="nav navbar-nav">
      
              
            <li class="dropdown yamm">
                <a href="contact.php" data-hover="dropdown" class="dropdown-toggle"></a>
                
            </li>
            
            <li class="dropdown yamm">
                <a href="about.php" data-hover="dropdown" class="dropdown-toggle"></a>
                
            </li>
            
    </ul><!-- /.navbar-nav -->
    <div class="clearfix"></div>        
  </div>
</div>


            </div>
        </div>

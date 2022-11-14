<?php
 require('db_config.php');
 require('MainFunctions.php');


 try {
    $database = new Connection();
    $db = $database->openConnection();

    $data = new MainFunctions();
    $menu_data  = $data->getMainMenu($db);
    $getMainMenuOfSub  = $data->getMainMenuOfSub($db);


  
  
  
  } catch (PDOException $e) {
      echo "There is some problem in connection: " . $e->getMessage();
  }


 ?>
<!DOCTYPE html>

<head>
 

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>St. Joseph’s School| Kendrapara | </title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <!-- Favicon -->
    <link rel="shortcut icon" href="" />
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <!--Font icon css-->
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/lightbox.css" rel="stylesheet" />


</head>

<style>
      .blink {
        animation: blinker 0.6s linear infinite;
        color: #1c87c9;
        font-size: 15px;
        font-weight: bold;
        font-family: sans-serif;
      }
      @keyframes blinker {
        50% {
          opacity: 0;
        }
      }
      .blink-one {
        animation: blinker-one 1s linear infinite;
      }
      @keyframes blinker-one {
        0% {
          opacity: 0;
        }
      }
      .blink-two {
        animation: blinker-two 1.4s linear infinite;
      }
      @keyframes blinker-two {
        100% {
          opacity: 0;
        }
      }
    </style>
        
        <marquee scrollamount="4" onmouseover="this.stop();" onmouseout="this.start();" class="blink" style="color: #ff0000;"><a href="https://sredutechnologies.com/" target="_blank">This Website was Designed & Developed By  <img src="{{ url('storage/media/sr.png')}}">
        </a>
        </marquee>

<body>
    

    <!--header start hear-->
    <header class="top-bg">
        <nav class="navbar navbar-inverse top-bg " role="navigation">
            <div class="container">

                <div class="navbar-header">
                    <a class="navbar-brand" href="/">
                        <img src="images/logo.png" alt="logo"
                            class="img-responsive  center-block">
                         </a>
                    <div class="toggle-bg">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">







<ul class="nav navbar-nav" >
            <li >
            <a href="#"class="dropdown-toggle text-capitalize" >home</a>
            </li>

            <?php foreach( $menu_data as  $menu_data_menu){ ?>

            <li >
            <a href="pages.php?page=<?= $menu_data_menu['page_link'] ?>"class="dropdown-toggle text-capitalize" ><?= $menu_data_menu['title'] ?></a>
            </li>
            <?php  } ?>

        




                <?php foreach($getMainMenuOfSub as $getMainMenuOfSubData){ ?>
             <li >

            <a href="#"class="dropdown-toggle text-capitalize "data-toggle="dropdown" ><?= $getMainMenuOfSubData['title'] ?><span class="caret"></span></a>
                

                <ul class="dropdown-menu">
                <?php 
        $getSubMainMenu  = $data->getSubMainMenu($getMainMenuOfSubData['id'],$db);
            ?>


                    <?php  foreach( $getSubMainMenu as  $getSubMainMenu_data){ ?>
                <li >
                 <a href="pages.php?page=<?= $getSubMainMenu_data['page_link'] ?>"class="dropdown-toggle text-capitalize" ><?= $getSubMainMenu_data['title'] ?></a>
                </li>
                <?php }?>
               
                </ul>


            </li>

            <?php  } ?>

        
        </ul>


          


                </div>
            </div>
        </nav>
    </header>



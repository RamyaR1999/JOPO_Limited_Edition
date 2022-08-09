<?php session_start(); ?>
<?php ob_start (); ?>
<?php include "db.php"; ?>


<?php

if (isset($_POST['submit'])){

            $search=$_POST['Job_title'];
            $skills=$_POST['Skills'];
            $location=$_POST['Location'];

       if($search !="" && $location !=""){

        $jobs="SELECT * FROM jobs WHERE Job_title = '{$search}' AND Location = '{$location}' ";

              $search_jobs=mysqli_query($connection, $jobs); 

                 if(!$search_jobs){
                    die("QUERY FAILED" . mysqli_error($connection));
                }
                $count=mysqli_num_rows($search_jobs);
                if($count == 0){

               header ("Location: Available_jobs.php");
                       
            }else{
              while($row=mysqli_fetch_assoc($search_jobs)){

                    $id=$row['id'];
                    $Job_title=$row['Job_title'];
                    $Location=$row['Location'];
                    $Skills=$row['Skills'];

                    // $_SESSION['Job_title']=$Job_title;
                    // $_SESSION['Location']=$Location;
            
            header ("Location: Available_jobs.php?jobs=$Job_title & $Location");

            }

        }
       }elseif($location !=""){

      $jobs="SELECT * FROM jobs WHERE Job_title = '$search' || Location='$location' ";

              $search_jobs=mysqli_query($connection, $jobs); 

                 if(!$search_jobs){
                    die("QUERY FAILED" . mysqli_error($connection));
                }
                $count=mysqli_num_rows($search_jobs);
                if($count == 0){

               // header ("Location: Available_jobs.php");
                       
            }else{
              while($row=mysqli_fetch_assoc($search_jobs)){

                    $id=$row['id'];
                    $Job_title=$row['Job_title'];
                    $Location=$row['Location'];
                    $Skills=$row['Skills'];

                    $_SESSION['Location']=$Location;
                    $_SESSION['Job_title']=$Job_title;
            
            header ("Location: Available_jobs.php?jobs=$Location ");

            }

        }
      }elseif($search !=""){
        $jobs="SELECT * FROM jobs WHERE Job_title = '$search'";

              $search_jobs=mysqli_query($connection, $jobs); 

                 if(!$search_jobs){
                    die("QUERY FAILED" . mysqli_error($connection));
                }
                $count=mysqli_num_rows($search_jobs);
                if($count == 0){

               // header ("Location: Available_jobs.php");
                       
            }else{
              while($row=mysqli_fetch_assoc($search_jobs)){

                    $id=$row['id'];
                    $Job_title=$row['Job_title'];
                    $Location=$row['Location'];
                    $Skills=$row['Skills'];

                    $_SESSION['Job_title']=$Job_title;
            
            header ("Location: Available_jobs.php?jobs=$Job_title ");

            }

        }
       }else{
          header ("Location: Available_jobs.php");
        }
      }

?>


<!doctype html>
<html class="no-js" lang="zxx">

<!--tittle-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>JOPO-Home </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- image in title-->
    <link rel="shortcut icon" type="image/x-icon" href="image/JOPO Logo.png">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/price_rangs.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/responsive.css">


    <link rel="stylesheet" href="nicepage.css" media="screen">
    <link rel="stylesheet" href="Page-1.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.28.7, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">

    <!-- Profile Icon -->

    <link rel="stylesheet" href="assets/css/shared/style.css">
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/fontawesome.min.css">
    <!-- Autocomplete -->
    <script type='text/javascript' src='js/autocomplete.js'></script>
    <link rel="stylesheet" type='text/css' href="css/autocomplete.css">

</head>

<body>
    <!--loading time image-->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="image/JOPO Logo.png" alt="">
                </div>
            </div>
        </div>
    </div>

    <header>
        <div class="header-area header-transparrent">
            <div class="headder-top header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-2">
                            <!--logoo-->
                            <div class="logo">
                                <a href="Home.php"><img src="image/JOPO Logo.png" alt="" width="120px" height="80px">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-9 col-md-9">
                            <div class="menu-wrapper">
                                <!-- Main-menu -->
                                <div class="main-menu u-custom-menu u-nav-container">
                                    <nav class="d-none d-lg-block">
                                        <ul class="u-nav u-unstyled u-nav-1" id="navigation">
                                            <li class="u-nav-item"><a
                                                    class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
                                                    href="Home.php">Home</a>
                                            </li>
                                            <li class="u-nav-item"><a
                                                    class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
                                                    href="">Services</a>
                                                <ul class="submenu">

                                                    <li><a href="submit_job.php">
                                                            <i class="fas fa-file-import"
                                                                style="color:crimson"></i>&nbsp; Post Job</a>
                                                    </li>
                                                    <!-- <br> -->
                                                    <li><a href="Jobseeker_profile.php">
                                                            <i class="fa-solid fa-users-line"
                                                                style="color:crimson">&nbsp; </i>
                                                            Search Applicants</a>
                                                    </li>
                                                    <li><a href="Add_applicants.php">
                                                            <i class="fas fa-user-plus" style="color:crimson"></i> Add
                                                            Applicant</a>
                                                    </li>
                                                    <?php 

                                                            if($_SESSION['User_type'] == 'Admin'){

                                                        ?>
                                                    <li><a href="All_Users.php"><i class="fa-solid fa-users-line"
                                                                style="color:crimson"></i>All Users</a></li>

                                                    <li><a href="Available_jobs.php"><i class="fas fa-list"
                                                                    style="color:crimson"></i> View JobList</a></li>

                                                    <li><a href="JOPO_download.php"><i class="fas fa-list"
                                                                    style="color:crimson"></i>JOPO Download</a></li>
                                                    <?php
                                                            }
                                                        ?>

                                                </ul>

                                            </li>

                                        </ul>
                                    </nav>
                                </div>
                                <!--header button-->
                                <div class="header-btn d-none f-right d-lg-block">

                                    <?php

    if(isset($_SESSION['Email']) == $db_Email){

  ?>
                                    <a href="Employee_Registration.php" class="btn head-btn1">Register</a>

                                    <a href="Member-Login.php" class="btn head-btn2">Login</a>


                                    <?php 
              
      }else{
              
  ?>
                                    <li class="u-nav-item dropdown d-none d-xl-inline-block user-dropdown">
                                        <a class="u-nav-link dropdown-toggle" id="UserDropdown" href=""
                                            data-toggle="dropdown" aria-expanded="false">

                                            <?php 

    if(isset($_SESSION['id'])){

       $db_id =  $_SESSION['id'];       
        
       $query="SELECT * FROM users WHERE id = '{$db_id}' ";
       $select_user_profile = mysqli_query($connection,$query);

      
       while($row=mysqli_fetch_array($select_user_profile)){

           $Image=  $row['Image'];
           $Login_Fullname=  $row['Fullname'];
       }
    }
?>


                                            <img class="" style="width:40px; border-radius: 100%;"
                                                src='images/<?php echo $Image ?>' alt="">
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown"
                                            aria-labelledby="UserDropdown">
                                            <div class="dropdown-header text-center">
                                                <img class="" style="width:60px; border-radius: 100%;"
                                                    src='images/<?php echo $Image ?>' alt="">

                                                <p class="mb-1 mt-3 font-weight-semibold" style="color:darkblue;">
                                                    <?php
  
  if(isset($_SESSION['Fullname'])){
      
    echo $Login_Fullname; 
     
  }
  
?>

                                                </p>
                                            </div>
                                            <a class="dropdown-item" href="profile.php"><i
                                                    class="dropdown-item-icon ti-dashboard"></i> My Profile</a>
                                            <a class="dropdown-item" href="Logout.php"><i
                                                    class="dropdown-item-icon ti-power-off"></i> Sign Out</a>
                                        </div>
                                    </li>

                                    <?php 

       }

?>



                                </div>
                            </div>
                        </div>
                        <!--mobile button-->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
    </header>

    <style>
    .head-btn1 {
        margin-right: 5px;
    }

    .btn {
        background: #fb246a;
        -moz-user-select: none;
        text-transform: capitalize;
        color: #fff;
        cursor: pointer;
        display: inline-block;
        font-size: 14px;
        font-weight: 500;
        letter-spacing: 1px;
        line-height: 0;
        margin-bottom: 0;
        padding: 27px 44px;
        border-radius: 0px;
        margin: 10px;
        cursor: pointer;
        transition: color 0.4s linear;
        position: relative;
        z-index: 1;
        border: 0;
        overflow: hidden;
        margin: 0;
    }

    .btn:not(:disabled):not(.disabled) {
        cursor: pointer;
    }

    .head-btn2 {
        background: none;
        border: 1px solid #fb246a;
        color: #fb246a;
    }
    </style>

    <style>
    .u-form-horizontal .u-input {
        /*display: flex;*/
        /*width: auto;*/
        flex-grow: 1;
        flex-shrink: 1;
        /*vertical-align: middle;
    min-width: 0px;*/
    }

    .u-custom-color-2,
    .u-body.u-custom-color-2,
    .u-container-style.u-custom-color-2:before,
    .u-container-layout.u-custom-color-2:before,
    .u-table-alt-custom-color-2 tr:nth-child(even) {
        color: #ff6258;
    }
    </style>
    <!-- registrtion free button -->
    <style>
    /* From uiverse.io by @adamgiebl */
    .cssbuttons-io-button {
        background: #F50F2A;
        color: white;
        font-family: inherit;
        padding: 0.35em;
        padding-left: 2.2em;
        font-size: 17px;
        font-weight: 500;
        border-radius: 0.9em;
        border: none;
        letter-spacing: 0.05em;
        display: flex;
        align-items: center;
        box-shadow: inset 0 0 1.6em -0.6em #DC143C;
        overflow: hidden;
        position: relative;
        height: 2.8em;
        padding-right: 3.3em;
    }

    .cssbuttons-io-button .icon {
        background: white;
        margin-left: 1em;
        position: absolute;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 2.2em;
        width: 2.2em;
        border-radius: 0.7em;
        box-shadow: 0.1em 0.1em 0.6em 0.2em #DC143C;
        right: 0.3em;
        transition: all 0.3s;
    }

    .cssbuttons-io-button:hover .icon {
        width: calc(100% - 0.6em);
    }

    .cssbuttons-io-button .icon svg {
        width: 1.1em;
        transition: transform 0.3s;
        color: #DC143C;
    }

    .cssbuttons-io-button:hover .icon svg {
        transform: translateX(0.1em);
    }

    .cssbuttons-io-button:active .icon {
        transform: scale(0.95);
    }

    .u-form-horizontal-home {

        padding: 11px;
        /* background-color: whitesmoke; */
        border-radius: 34px;

        display: flex;
        flex-flow: row;
        align-items: flex-start;
        flex-grow: 1;
        flex-direction: column;
    }
    </style>
    <section class="u-clearfix u-lightbox u-section-1" id="sec-de5a"
        style="height: 900px; padding: 0px; background-image:url('./image/home.jpg'); background-repeat:no-repeat;  background-size: cover;">
        <h1 style=" color:black; padding-left:650px; padding-top:100px">
            THE EASY WAY TO <br> 
        </h1>
        <h1 style=" color:black; padding-left:750px ">
            <span style=" color:crimson;"> POST JOB</span>
         </h1>   
        <!-- style="padding-left:650px; font-family: 'Times New Roman', Times, serif;" -->
        <h3 style="padding-left:750px; font-family: 'Times New Roman', Times, serif;">
            Pre-Register for free</h3>
        <br>
        <!-- style="padding-left:650px ;" -->
        <div style="padding-left:750px ;">
            <a href="PreLaunch_Registration.php"><button class="cssbuttons-io-button"> Get Started
                    <div class="icon">
                        <svg height="24" width="24" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path d="M0 0h24v24H0z" fill="none"></path>
                            <path d="M16.172 11l-5.364-5.364 1.414-1.414L20 12l-7.778 7.778-1.414-1.414L16.172 13H4v-2z"
                                fill="currentColor"></path>
                        </svg>
                    </div>
                </button>
            </a>
        </div>

    </section>

    <!-- style="color:black; padding-left:650px; padding-top:150px;font-family: 'Times New Roman', Times, serif;" -->
    <section class="u-clearfix u-lightbox u-section-1" id="sec-de5a"
        style="height: 1020px; padding: 0px; background-image:url('./image/home1.jpg'); background-repeat:no-repeat;  background-size: cover;">
        <div class="u-clearfix u-sheet u-sheet-1">
            <h3 style="padding-left:650px; font-family: 'Times New Roman' , Times, serif;"
                class=" u-default u-text-pink u-text-1 " data-animation-name="zoomIn" data-animation-duration="1000">
                Find <span style=color:crimson;">The Perfect
                    Job</span> For You</h3>
            <div style="padding-left:650px;" class="u-expanded-width-xs u-form u-form-1">
                <form action="" autocomplete="off" method="POST"
                    class="u-clearfix u-form-custom-backend u-form-horizontal-home u-form-spacing-2 u-inner-form"
                    style="padding: 11px; border-radius: 34px;" source="custom" redirect="true">
                    <div class="u-form-group u-form-name">
                        <label for="name-ef64" class="u-form-control-hidden u-label"></label>
                        <input type="text" style="min-width: 321px; display: flex;" placeholder="Enter job title"
                            id="jobtitle" name="Job_title"
                            class="u-input u-input-rectangle u-radius-3 u-white u-input-1">
                        <!-- <input type="text" name="Name" id="demoB" placeholder="Enter job title" class="u-form-control"> -->
                    </div>
                    <br>
                    <div class="u-form-group u-form-name">
                        <label for="name-ef64" class="u-form-control-hidden u-label"></label>
                        <input type="text" style="min-width: 321px; display: flex;" placeholder="Enter Location"
                            id="Location" name="Location"
                            class="u-input u-input-rectangle u-radius-3 u-white u-input-1">
                    </div>
                    <br>
                    <!-- <div class="u-form-email u-form-group">
          <label for="email-ef64" class="u-form-control-hidden u-label"></label>
          <input type="text" style="min-width: 321px; display: flex;" placeholder="Skills" id="Skills" name="Skills" class="u-input u-input-rectangle u-radius-3 u-white u-input-2">
        </div> -->
                    <div class="u-form-group u-form-submit">
                        <a href="Available_jobs.php" class="btn head-btn1 " style="padding: 18px; border-radius: 16px;">
                            <!-- <span class="u-icon u-text-palette-1-base u-icon-1"><svg class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" style="width: 1em; height: 1em;"><g><path d="M496.128,220.361l-160-144.032c-19.712-17.728-50.08-16.192-67.808,3.584c-17.728,19.68-16.128,50.048,3.584,67.776    l66.976,60.32H48c-26.528,0-48,21.472-48,48s21.472,48,48,48h290.944l-67.072,60.32c-19.712,17.76-21.312,48.096-3.584,67.776    c9.504,10.528,22.592,15.904,35.712,15.904c11.456,0,22.944-4.064,32.096-12.32l160-143.968    c10.112-9.088,15.904-22.08,15.904-35.68C512,242.441,506.208,229.449,496.128,220.361z"></path>

</g></svg><img></span>&nbsp;<br> -->
                            Search
                        </a>
                        <input type="submit" name="submit" value="submit" class="u-form-control-hidden">
                    </div>
                    <div class="u-form-send-message u-form-send-success">#FormSendSuccess</div>
                    <div class="u-form-send-error u-form-send-message">#FormSendError</div>
                    <input type="hidden" value="" name="recaptchaResponse">
                </form>
            </div>
        </div>
        </div>
    </section>


    <style>
    @media (max-width: 1199px) {
        .u-section-1 .u-text-1 {
            color: black;
            padding-left: 650px;
            padding-top: 150px;
            font-family: 'Times New Roman', Times, serif;
            /* margin-top: 220px; */
            /* margin-right: 50px; */
            /* background: -webkit-linear-gradient(#DC143C, #261DCF); */
            /* background: -webkit-linear-gradient(#FD0342, #03FBFD); */
            /* background: -webkit-linear-gradient(#F50F2A, #F50F2A);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent; */
            /* font-family: Copperplate, Papyrus, fantasy; */
            color: crimson;
            /* margin-left: 300px; */
            margin-left: 20px;
        }

        .u-section-1 .u-icon-1 {
            margin-top: -193px;
            margin-right: 355px;
        }

        .u-section-1 .u-shape-1 {
            margin-top: -1009px;
        }

        .u-section-1 .u-shape-2 {
            margin-top: 1px;
        }

        /* .u-section-1 .u-text-2 {
            margin-top: -510px;
            margin-right: 401px;
        } */
    }

    @media (max-width: 991px) {
        .u-section-1 .u-text-1 {
            /* font-family: Copperplate, Papyrus, fantasy; */
            margin-left: 290px;
        }

    }

    @media (max-width: 767px) {
        .u-section-1 .u-text-1 {
            /* font-family: Copperplate, Papyrus, fantasy; */
            margin-left: 200px;
        }

        .u-section-1 .u-icon-1 {
            margin-right: 204px;
        }

        .u-section-1 .u-icon-2 {
            margin-top: 736px;
        }

        .u-section-1 .u-shape-1 {
            margin-top: -1076px;
        }

        .u-section-1 .u-text-2 {
            margin-right: 201px;
        }
    }

    @media (max-width: 575px) {
        .u-section-1 .u-text-1 {
            margin-left: 100px;
            /* color: white; */
            /* font-family: Copperplate, Papyrus, fantasy; */
            font-size: 20px;
            margin-right: 50px;
            /* background: -webkit-linear-gradient(#DC143C, #261DCF); */
            /* background: -webkit-linear-gradient(#FD0342, #03FBFD); */
            background: -webkit-linear-gradient(#F50F2A, #F50F2A);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .u-section-1 .u-icon-1 {
            margin-right: 128px;
        }

        .u-section-1 .u-icon-2 {
            margin-left: 88px;
        }

        .u-section-1 .u-shape-1 {
            margin-top: -1109px;
        }

        .u-section-1 .u-shape-2 {
            width: 340px;
            margin-top: 67px;
            margin-right: 0;
        }

        .u-section-1 .u-text-2 {
            margin-left: 0;
            margin-right: 0;
        }
    }


    .acWrap .acSuggest ul {
        list-style: none;
        padding: 0;
        margin: 0;
        background-color: #ffffff;
        width: auto;
        height: 275px;
        overflow-x: hidden;
        overflow-y: auto;
    }
    </style>


    <!-- Autocomplete Script -->
    <script>
    // (C) ATTACH AUTOCOMPLETE TO INPUT FIELDS
    window.addEventListener("DOMContentLoaded", function() {
        ac.attach({
            target: "jobtitle",
            data: "search.php",
            post: {
                type: "Name"
            },
            // OPTIONAL
            delay: 50,
            min: 1
        });
    });

    window.addEventListener("DOMContentLoaded", function() {
        ac.attach({
            target: "Skills",
            data: "search.php",
            post: {
                type: "Skills"
            },
            // OPTIONAL
            delay: 50,
            min: 1
        });
    });

    window.addEventListener("DOMContentLoaded", function() {
        ac.attach({
            target: "Location",
            data: "search.php",
            post: {
                type: "Location_india"
            },
            // OPTIONAL
            delay: 50,
            min: 1
        });
    });
    </script>

    <br>
    <br>
    <br>
    <!--     <section class="u-align-center u-clearfix u-gradient u-section-1" id="carousel_f87e">
  <div class="u-clearfix u-sheet u-sheet-1">
    <h6 class="u-custom-font u-font-montserrat u-text u-text-white u-text-1"> Start Your Career<br>
      <br>Success Doesn't Come And Find You<br>You Can Go Out and Get In .
    </h6><span class="u-icon u-icon-circle u-text-white u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 409.294 409.294" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-2920"></use></svg><svg class="u-svg-content" viewBox="0 0 409.294 409.294" id="svg-2920"><path d="m0 204.647v175.412h175.412v-175.412h-116.941c0-64.48 52.461-116.941 116.941-116.941v-58.471c-96.728 0-175.412 78.684-175.412 175.412z"></path><path d="m409.294 87.706v-58.471c-96.728 0-175.412 78.684-175.412 175.412v175.412h175.412v-175.412h-116.941c0-64.48 52.461-116.941 116.941-116.941z"></path></svg></span><span class="u-icon u-icon-circle u-text-white u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 409.294 409.294" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-3870"></use></svg><svg class="u-svg-content" viewBox="0 0 409.294 409.294" id="svg-3870"><path d="m0 204.647v175.412h175.412v-175.412h-116.941c0-64.48 52.461-116.941 116.941-116.941v-58.471c-96.728 0-175.412 78.684-175.412 175.412z"></path><path d="m409.294 87.706v-58.471c-96.728 0-175.412 78.684-175.412 175.412v175.412h175.412v-175.412h-116.941c0-64.48 52.461-116.941 116.941-116.941z"></path></svg></span>
    <div class="u-opacity u-opacity-80 u-shape u-shape-svg u-text-palette-1-light-2 u-shape-1">
      <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 160 150" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-0197"></use></svg>
      <svg class="u-svg-content" viewBox="0 0 160 150" x="0px" y="0px" id="svg-0197" style="fill:#b83dba"><path d="M43.2,126.9c14.2,1.3,27.6,7,39.1,15.6c8.3,6.1,19.4,10.3,32.7,5.3c11.7-4.4,18.6-17.4,21-30.2c2.6-13.3,8.1-25.9,15.7-37.1
c8.3-12.1,10.8-27.9,5.3-42.7C150.5,20.3,134.6,9,117,7.6C107.9,6.9,98.8,5,90.1,1.9C83-0.6,75-0.7,67.4,2.1
c-9.9,3.7-17,11.6-20.1,21c-3.3,10.1-10.9,18-20.6,22.2c-0.1,0-0.1,0.1-0.2,0.1c-20.3,8.9-31,32-24.6,53.2
C6.9,115.6,25.2,125.2,43.2,126.9z"></path></svg>
    </div>
    <div class="u-flip-horizontal u-opacity u-opacity-80 u-shape u-shape-svg u-text-palette-1-light-2 u-shape-2">
      <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 160 150" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-8d05"></use></svg>
      <svg class="u-svg-content" viewBox="0 0 160 150" x="0px" y="0px" id="svg-8d05" style="fill: #00a8f3"><path d="M43.2,126.9c14.2,1.3,27.6,7,39.1,15.6c8.3,6.1,19.4,10.3,32.7,5.3c11.7-4.4,18.6-17.4,21-30.2c2.6-13.3,8.1-25.9,15.7-37.1
c8.3-12.1,10.8-27.9,5.3-42.7C150.5,20.3,134.6,9,117,7.6C107.9,6.9,98.8,5,90.1,1.9C83-0.6,75-0.7,67.4,2.1
c-9.9,3.7-17,11.6-20.1,21c-3.3,10.1-10.9,18-20.6,22.2c-0.1,0-0.1,0.1-0.2,0.1c-20.3,8.9-31,32-24.6,53.2
C6.9,115.6,25.2,125.2,43.2,126.9z"></path></svg>
    </div>
    <h6 class="u-custom-font u-font-montserrat u-text u-text-white u-text-2"> Make Your Dream<br>
      <br>We Make IT Happen<br>A Better Life, A Better World
    </h6>
  </div>
</section> -->

    <footer class="u-clearfix u-footer" id="sec-ff43">
        <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
            <div class="u-align-left u-social-icons u-spacing-10 u-social-icons-1">
                <a class="u-social-url" title="facebook" target="_blank" href=""><span
                        class="u-icon u-social-facebook u-social-icon u-icon-1"><svg class="u-svg-link"
                            preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style="">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-12fb"></use>
                        </svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-12fb">
                            <circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle>
                            <path fill="#FFFFFF" d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
        c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path>
                        </svg></span>
                </a>
                <a class="u-social-url" title="twitter" target="_blank" href=""><span
                        class="u-icon u-social-icon u-social-twitter u-icon-2"><svg class="u-svg-link"
                            preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style="">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-a27c"></use>
                        </svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-a27c">
                            <circle fill="currentColor" class="st0" cx="56.1" cy="56.1" r="55"></circle>
                            <path fill="#FFFFFF" d="M83.8,47.3c0,0.6,0,1.2,0,1.7c0,17.7-13.5,38.2-38.2,38.2C38,87.2,31,85,25,81.2c1,0.1,2.1,0.2,3.2,0.2
        c6.3,0,12.1-2.1,16.7-5.7c-5.9-0.1-10.8-4-12.5-9.3c0.8,0.2,1.7,0.2,2.5,0.2c1.2,0,2.4-0.2,3.5-0.5c-6.1-1.2-10.8-6.7-10.8-13.1
        c0-0.1,0-0.1,0-0.2c1.8,1,3.9,1.6,6.1,1.7c-3.6-2.4-6-6.5-6-11.2c0-2.5,0.7-4.8,1.8-6.7c6.6,8.1,16.5,13.5,27.6,14
        c-0.2-1-0.3-2-0.3-3.1c0-7.4,6-13.4,13.4-13.4c3.9,0,7.3,1.6,9.8,4.2c3.1-0.6,5.9-1.7,8.5-3.3c-1,3.1-3.1,5.8-5.9,7.4
        c2.7-0.3,5.3-1,7.7-2.1C88.7,43,86.4,45.4,83.8,47.3z"></path>
                        </svg></span>
                </a>
                <a class="u-social-url" title="instagram" target="_blank" href=""><span
                        class="u-icon u-social-icon u-social-instagram u-icon-3"><svg class="u-svg-link"
                            preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style="">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-7849"></use>
                        </svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-7849">
                            <circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle>
                            <path fill="#FFFFFF"
                                d="M55.9,38.2c-9.9,0-17.9,8-17.9,17.9C38,66,46,74,55.9,74c9.9,0,17.9-8,17.9-17.9C73.8,46.2,65.8,38.2,55.9,38.2
        z M55.9,66.4c-5.7,0-10.3-4.6-10.3-10.3c-0.1-5.7,4.6-10.3,10.3-10.3c5.7,0,10.3,4.6,10.3,10.3C66.2,61.8,61.6,66.4,55.9,66.4z">
                            </path>
                            <path fill="#FFFFFF"
                                d="M74.3,33.5c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S76.6,33.5,74.3,33.5z">
                            </path>
                            <path fill="#FFFFFF" d="M73.1,21.3H38.6c-9.7,0-17.5,7.9-17.5,17.5v34.5c0,9.7,7.9,17.6,17.5,17.6h34.5c9.7,0,17.5-7.9,17.5-17.5V38.8
        C90.6,29.1,82.7,21.3,73.1,21.3z M83,73.3c0,5.5-4.5,9.9-9.9,9.9H38.6c-5.5,0-9.9-4.5-9.9-9.9V38.8c0-5.5,4.5-9.9,9.9-9.9h34.5
        c5.5,0,9.9,4.5,9.9,9.9V73.3z"></path>
                        </svg></span>
                </a>
                <a class="u-social-url" title="linkedin" target="_blank" href=""><span
                        class="u-icon u-social-icon u-social-linkedin u-icon-4"><svg class="u-svg-link"
                            preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style="">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-fb82"></use>
                        </svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-fb82">
                            <circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle>
                            <path fill="#FFFFFF" d="M41.3,83.7H27.9V43.4h13.4V83.7z M34.6,37.9L34.6,37.9c-4.6,0-7.5-3.1-7.5-7c0-4,3-7,7.6-7s7.4,3,7.5,7
        C42.2,34.8,39.2,37.9,34.6,37.9z M89.6,83.7H76.2V62.2c0-5.4-1.9-9.1-6.8-9.1c-3.7,0-5.9,2.5-6.9,4.9c-0.4,0.9-0.4,2.1-0.4,3.3v22.5
        H48.7c0,0,0.2-36.5,0-40.3h13.4v5.7c1.8-2.7,5-6.7,12.1-6.7c8.8,0,15.4,5.8,15.4,18.1V83.7z"></path>
                        </svg></span>
                </a>
            </div>
        </div>
        <section class="u-backlink u-clearfix u-footer">
            <main>
                <p>Copyright &copy; Cognate Global alphabet 2021</p>
            </main>
        </section>
    </footer>

    <!-- Profile Icon -->
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- JS here -->

    <!-- All JS Custom Plugins Link Here here -->
    <script src="assets/js/vendor/modernizr-3.5.0.min.js"></script>

    <!-- Jquery, Popper, Bootstrap -->
    <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Jquery Mobile Menu -->
    <script src="assets/js/jquery.slicknav.min.js"></script>


    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/price_rangs.js"></script>
    <!-- Date Picker -->
    <script src="assets/js/gijgo.min.js"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/animated.headline.js"></script>
    <script src="assets/js/jquery.magnific-popup.js"></script>

    <!-- Scrollup, nice-select, sticky -->
    <script src="assets/js/jquery.scrollUp.min.js"></script>
    <script src="assets/js/jquery.nice-select.min.js"></script>
    <script src="assets/js/jquery.sticky.js"></script>

    <!-- contact js -->
    <script src="assets/js/contact.js"></script>
    <script src="assets/js/jquery.form.js"></script>
    <script src="assets/js/jquery.validate.min.js"></script>
    <script src="assets/js/mail-script.js"></script>
    <script src="assets/js/jquery.ajaxchimp.min.js"></script>

    <!-- Jquery Plugins, main Jquery -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>



</body>

</html>
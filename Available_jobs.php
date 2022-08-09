<?php session_start(); ?>
<?php ob_start (); ?>
<?php include "db.php"; ?>

<?php

if (isset($_POST['search'])){

    $search=$_POST['Job_title'];

    if($search !=""){

       $jobs="SELECT * FROM jobs WHERE Job_title = '$search' ";

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
            $Skills=$row['Skills'];
            $Location=$row['Location'];
            
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
    <title>JOPO-find a job </title>
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
    <link rel="stylesheet" href="Page-2.css" media="screen">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"rel="stylesheet">
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
    <!-- pager -->
    <link href="css/bootstrap.min.css" rel="stylesheet">


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
                                                                style="color:crimson"></i>&nbsp;
                                                            Post Job</a>
                                                    </li>
                                                    <br>
                                                    <li><a href="Jobseeker_profile.php">
                                                            <i class="fa-solid fa-users-line" style="color:crimson"></i>
                                                            Search
                                                            Applicants</a>
                                                    </li>
                                                    <li><a href="Add_applicants.php">
                                                            <i class="fas fa-user-plus" style="color:crimson"></i> Add
                                                            Applicant</a></li>
                                                    <?php 

                                                            if($_SESSION['User_type'] == 'Admin'){

                                                        ?>
                                                    <li><a href="All_Users.php"><i class="fa-solid fa-users-line"
                                                                style="color:crimson"></i>All Users</a></li>

                                                    <li><a href="Available_jobs.php"><i class="fas fa-list"
                                                                    style="color:crimson"></i> View JobList</a></li>
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
        width: 300px;
        flex-grow: 1;
        flex-shrink: 1;

    }
    </style>

    <section class="u-clearfix u-section-2" id="sec-a8b6" style="height: 150px;">
        <div class="u-clearfix u-sheet u-sheet-1">
            <div class="u-form u-form-1">
                <form action="" autocomplete="off" method="POST"
                    class="u-clearfix u-form-custom-backend u-form-horizontal u-form-spacing-2 u-inner-form"
                    source="custom" name="form" style="padding: 10px;">
                    <input type="hidden" id="siteId" name="siteId" value="170795794">
                    <input type="hidden" id="pageId" name="pageId" value="206021425">
                    <div class="u-form-group u-form-name">
                        <label for="name-9c33" class="u-form-control-hidden u-label"></label>
                        <input type="text" placeholder="Search Job title" id="Jobtitle" name="Job_title"
                            class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                    </div>
                    <div class="u-align-left u-form-group u-form-submit">
                        <a href="" class="btn head-btn2" style="align-left;padding: 20px;">Search</a>
                        <input type="submit" name="search" value="submit" class="u-form-control-hidden">
                    </div>
                </form>
            </div>
        </div>
    </section>
    <div class="card">
        <section class="u-clearfix u-section-3" id="sec-41fd" style="align-left">
            <div class="u-align-left u-clearfix u-sheet u-sheet-1">


<?php

  if(isset($_GET['jobs'])){

  $Location = $_GET['jobs'];
  $Job_title = $_GET['jobs'];

     $sper_page=5;  
                
    if(isset($_GET['spage'])){
        
        $spage = $_GET['spage'];
        
    } else {
        
        $spage ="";
        
    }
  
    if($spage =="" || $spage ==1){
        
        $spage_1=0;
        
    } else {
        
        $spage_1=($spage*$sper_page)-$sper_page;
        
    }

  $s_post_query_count="SELECT * FROM jobs WHERE Location = '{$Location}' || Job_title = '{$Job_title}' ";
  $s_find_count=mysqli_query($connection,$s_post_query_count);
  $scount=mysqli_num_rows($s_find_count);
  $scount=ceil($scount/$sper_page);
        
     $query="SELECT * FROM jobs WHERE Location = '{$Location}' || Job_title = '{$Job_title}' ORDER BY id DESC LIMIT $spage_1, $sper_page ";
     $select_user_profile = mysqli_query($connection,$query);

      
     while($row=mysqli_fetch_array($select_user_profile)){

             $the_id = $row['id'];
             $Fullname=  $row['Fullname'];
             $Email    = $row['Email'];
             $Phone=  $row['Phone'];
             $Job_type=  $row['Job_type'];
             $Company_name=  $row['Company_name'];
             $Location =  $row['Location'];
             $Location_country =  $row['Location_country'];
             $Service = $row['Service'];
             $Job_title = $row['Job_title'];
             $Sector = $row['Sector'];
             $Skills = $row['Skills'];
             $Job_description = $row['Job_description'];
             $Job_posted = $row['Job_posted'];
?>

                <div class="u-container-style u-list-item u-repeater-item" style="align-left">
                    <div class="u-container-layout u-similar-container u-container-layout-1" style="align-left">
                        <div class="card" style="align-left">
                            <br>
                            <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-1"
                                href="Job_details.php?Job_details=<?php echo $the_id ?>"
                                target="_blank"><?php echo $Job_title; ?></a>
                            <p class="u-text u-text-default u-text-2">Posted by <span
                                    style="color:crimson"><?php echo $Fullname ?></span></p>
                            <p class="u-text u-text-default u-text-2"><?php echo $Job_posted ?></p>
                            <p class="u-text u-text-default u-text-2"><?php echo $Location ?></p>
                            <p class="u-text u-text-2"><textarea class="textarea" rows="8" cols="120"
                                    style="border: none;"><?php echo $Job_description; ?></textarea></p>
                            <br>
                            <h3 class="u-align-left u-text u-text-custom-color-1 u-text-2">skills</h3>
                            <p class="u-align-left u-text u-text-2"><?php echo $Skills; ?></p>
                        </div>
                    </div>
                </div>
                <br>

                <div class="container" style="align-right">

                    <?php

                        if($_SESSION['User_type'] == 'Admin'){

                    ?>

                    <div class="copy-link">
                        <input type="text" class="copy-link-input" placeholder="https://jopo.co.in/Job_details.php?Job_details=<?php echo $the_id ?>">
                        <button type="button" class="copy-link-button">
                            <span class="material-icons">content_copy</span>
                        </button>
                    </div>

                    <?php

                        }

                    ?>

                    <br>

                    <a href="Apply_Job.php?Job_details=<?php echo $the_id ?>&<?php echo $Job_title ?>"
                        class="btn head-btn1" target="_blank">Apply Now</a>
                        
    


                                
        <?php

        if($_SESSION['User_type'] == 'Admin'){


         echo "<a class='btn head-btn1' onClick=\"javascript:return confirm('Are you Sure you want to delete $Job_title Job');\"href='Available_jobs.php?delete={$the_id}'>Delete this job</a>";

         }

        ?>
                             
            </div>

                <?php          
     }
?>

    <ul class="pager">

        <?php
                 
              
              for($s=1; $s<=$scount; $s++){
                  
                  if($s == $spage){
                  
                    echo "<li><a class='active_link' style='background-color : #000;' href='Available_jobs.php?jobs=$Job_title&spage={$s}'>{$s}</a></li>";
                     
                } else {
                      
                    echo "<li><a href='Available_jobs.php?jobs=$Job_title&spage={$s}'>{$s}</a></li>";    
                      
                  }
                  
              }


          ?>
    </ul>

<?php

  }else{

   $per_page=5;  
                
    if(isset($_GET['page'])){
        
        $page = $_GET['page'];
        
    } else {
        
        $page ="";
        
    }
  
    if($page =="" || $page ==1){
        
        $page_1=0;
        
    } else {
        
        $page_1=($page*$per_page)-$per_page;
        
    }

    $post_query_count="SELECT * FROM jobs";
    $find_count=mysqli_query($connection,$post_query_count);
    $count=mysqli_num_rows($find_count);
    $count=ceil($count/$per_page);


    $query="SELECT * FROM jobs ORDER BY id DESC LIMIT $page_1, $per_page";
    $Jobs_list=mysqli_query($connection,$query);

    while($row=mysqli_fetch_array($Jobs_list)){

        $the_id = $row['id'];
        $Fullname=  $row['Fullname'];
        $Email    = $row['Email'];
        $Phone=  $row['Phone'];
        $Job_type=  $row['Job_type'];
        $Company_name=  $row['Company_name'];
        $Location =  $row['Location'];
        $Location_country =  $row['Location_country'];
        $Service = $row['Service'];
        $Job_title = $row['Job_title'];
        $Sector = $row['Sector'];
        $Skills = $row['Skills'];
        $Job_description = $row['Job_description'];
        $Job_posted = $row['Job_posted'];
         // $Job_description = substr($row['Job_description'],0,500);


?>


                <div class="u-container-style u-list-item u-repeater-item" style="align-left">
                    <div class="u-container-layout u-similar-container u-container-layout-1" style="align-left">
                        <div class="card" style="align-left">
                            <br>
                            <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-1"
                                href="Job_details.php?Job_details=<?php echo $the_id ?>"
                                target="_blank"><?php echo $Job_title; ?></a>
                            <p class="u-text u-text-default u-text-2">Posted by <span
                                    style="color:crimson"><?php echo $Fullname ?></span></p>
                            <p class="u-text u-text-default u-text-2"><?php echo $Job_posted ?></p>
                            <p class="u-text u-text-default u-text-2"><?php echo $Location ?></p>
                            <p class="u-text u-text-2"><textarea class="textarea" rows="8" cols="120"
                                    style="border: none;"><?php echo $Job_description; ?></textarea></p>
                            <br>
                            <h3 class="u-align-left u-text u-text-custom-color-1 u-text-2">skills</h3>
                            <p class="u-align-left u-text u-text-2"><?php echo $Skills; ?></p>
                        </div>
                    </div>
                </div>
                <br>

                <div class="container" style="align-right">

                    <?php

                        if($_SESSION['User_type'] == 'Admin'){

                    ?>

                    <div class="copy-link">
                        <input type="text" class="copy-link-input" placeholder="https://jopo.co.in/Job_details.php?Job_details=<?php echo $the_id ?>">
                        <button type="button" class="copy-link-button">
                            <span class="material-icons">content_copy</span>
                        </button>
                    </div>

                    <?php

                        }

                    ?>

                    <br>

                    <a href="Apply_Job.php?Job_details=<?php echo $the_id ?>&<?php echo $Job_title ?>"
                        class="btn head-btn1" target="_blank">Apply Now</a>
                        
    


                                
        <?php

        if($_SESSION['User_type'] == 'Admin'){


         echo "<a class='btn head-btn1' onClick=\"javascript:return confirm('Are you Sure you want to delete $Job_title Job');\"href='Available_jobs.php?delete={$the_id}'>Delete this job</a>";

         }

        ?>
                             
            </div>

<?php

    }

?>

   <ul class="pager">

        <?php
                 
              
              for($i=1; $i<=$count; $i++){
                  
                  if($i == $page){
                  
                    echo "<li><a class='active_link' style='background-color : #000;' href='Available_jobs.php?page={$i}'>{$i}</a></li>";
                     
                } else {
                      
                    echo "<li><a href='Available_jobs.php?page={$i}'>{$i}</a></li>";    
                      
                  }
                  
              }


          ?>
    </ul>

<?php

  }
  
?>

                <?php

     if(isset($_GET['delete'])){
         $the_id=$_GET['delete'];
         $query="DELETE FROM jobs WHERE id={$the_id}";
         $delete_query=mysqli_query($connection,$query);
         header("Location:Available_jobs.php");
     }
?>

            </div>
        </section>
    </div>

    <style>
        .copy-link{
            --height: 36px;

            display: flex;
            max-width: 365px;
        }
        .copy-link-input{
            flex-grow: 1;
            padding: 0 8px;
            font-size: 14px;
            border: 1px solid #cccccc;
            outline: black;

        }

        .copy-link-input:hover{
            background: #eeeeee;
        }
        .copy-link-button{
            flex-shrink: 0;
            width: var(--height);
            height: var(--height);
            display: flex;
            align-items: center;
            justify-content: center;
            background: #fb246a;
            color: #333333;
            outline: none;
            border: 1px solid #fb246a;
            cursor: pointer;
        }
        .copy-link-button:hover{
            background: #cccccc;
        }

    </style>


    <!-- Autocomplete Script -->
    <script>
    // (C) ATTACH AUTOCOMPLETE TO INPUT FIELDS
    window.addEventListener("DOMContentLoaded", function() {
        ac.attach({
            target: "Jobtitle",
            data: "search.php",
            post: {
                type: "Name"
            },
            // OPTIONAL
            delay: 50,
            min: 1
        });
    });
    </script>



<script>
    document.querySelectorAll(".copy-link").forEach(copyLinkContainer =>{
        const inputField = copyLinkContainer.querySelector(".copy-link-input");
        const copyButton = copyLinkContainer.querySelector(".copy-link-button");

        inputField.addEventListener("focus", () => inputField.select());

        copyButton.addEventListener("click",() => {
            const text = inputField.placeholder;

            inputField.select();
            navigator.clipboard.writeText(text);


            inputField.placeholder = "Copied To Share !";
            setTimeout(() =>inputField.placeholder = text, 2000);

        })

    })
</script>
    




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
        </div><!-- </footer> -->
        <section class="u-backlink u-clearfix u-footer">
            <main>
                <p>Copyright &copy; Cognate Global alphabet 2021</p>
            </main>
        </section>

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
<?php session_start(); ?>
<?php include "db.php"; ?>


<?php 
    // if($_SESSION['User_type'] !== 'Recruiter'){
     
    if(!$_SESSION['User_type']){
   
      header("Location:Member-Login.php");
  
  }
?>
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
<?php 

     if(isset($_POST['submit'])){

         $id = $_POST['id'];
         $Job_title = $_POST['Job_title'];
         $Job_description = $_POST['Job_description'];
         $Service = $_POST['Service'];
         $Location_country =  $_POST['Location_country'];
         $Location =  $_POST['Location'];
         $Experience_Range =  $_POST['Experience_Range'];
         $Salary_Range =  $_POST['Salary_Range'];
         $Skills = $_POST['Skills'];
         $Sector = $_POST['Sector'];
         $Job_type=  $_POST['Job_type']; 
         $Work_type=  $_POST['Work_type']; 
         $Job_posted = $_POST['Job_posted'];
         $Fullname=  $_POST['Fullname'];
         $Email    = $_POST['Email'];
         $Phone=  $_POST['Phone'];
         $Company_name=  $_POST['Company_name'];
         $Job_posted = date('d M Y');

         $error = 0;

      if(!empty($Job_title) && !empty($Job_description) && !empty($Location_country) && !empty($Job_type) && !empty($Work_type)){
      // if(!empty($Skills)){ 

      // if(preg_match('/^[\p{L} ]+$/u', $Fullname)) {
        
      //   if(preg_match("/^[0-9]{10}$/", $Phone)) {   


        // if(!$error){
        // $check_query= "SELECT * FROM jobs WHERE Email = '{$Email}' ";
        // $check_jobs_query = mysqli_query($connection,$check_query);

        // if(mysqli_num_rows($check_jobs_query) > 0){

        //   $row = mysqli_fetch_assoc($check_jobs_query);

        //     if($Email==$row['Email'])
        //     {
        //         $message_Email= "Email already exists";
        //     }
        // }else {

        
        $query = "INSERT INTO jobs (Job_title,Location,Location_country,Experience_Range,Salary_Range,Service,Sector,Skills,Job_description,Job_type,Work_type,Job_posted,Fullname,Email,Company_name,Phone) ";
        $query .= "VALUES ('{$Job_title}','{$Location}','{$Location_country}','{$Experience_Range}','{$Salary_Range}','{$Service}','{$Sector}','{$Skills}','{$Job_description}','{$Job_type}','{$Work_type}','{$Job_posted}','{$Login_Fullname}','{$Email}','Cognate Global Business Solutions PRIVATE LIMITED','{$Phone}')";
             
        $jobs_query = mysqli_query($connection,$query);
      
        if(!$jobs_query) {
            
            die("Query Failed" . mysqli_error($connection) .' '. mysqli_error($connection));
        }
         
         $id = $connection -> insert_id;

        $_SESSION['Apply_Job'] = "https://jopo.co.in/Job_details.php?Job_details=$id";

          // header( "refresh:20;url=submit_job.php" );
//  }

// }
       //    }else{
       //        $message_phone = "Invalid Phone No";
            
       //  }

       //    }else{
       //        $message_Fullname ="Only Alphabets are allowed in Fullname";
          
       // }

         
       // }else{
       //  $message_skills = "Skill is required";
       // } 

          }else{
        $message = "All fields are required *";
       }  
         
          }else {         
              $message = ""; 
       }

  ?>

<!doctype html>
<html class="no-js" lang="zxx">

<!--tittle-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>JOPO-Post Job</title>

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


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="nicepage.css" media="screen">
    <link rel="stylesheet" href="new_post_job.css" media="screen">
    <!-- <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script> -->
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.28.7, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">

    <!-- Password Icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

    <!-- Profile Icon -->
    <link rel="stylesheet" href="assets/css/shared/style.css">
    <!-- <script src="assets/vendors/js/vendor.bundle.base.js"></script> -->

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/fontawesome.min.css">

    <!-- Autocomplete -->
    <script type='text/javascript' src='js/autocomplete.js'></script>
    <link rel="stylesheet" type='text/css' href="css/autocomplete.css">

    <!--jQuery libary -->
    <script src="js/jquery.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

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
                                                                style="color:crimson"></i></i>&nbsp;Post Job</a></li>
                                                    <br>
                                                    <li><a href="Jobseeker_profile.php"><i
                                                                class="fa-solid fa-users-line"
                                                                style="color:crimson"></i>Search Applicants</a></li>
                                                    <li><a href="Add_applicants.php"><i class="fas fa-user-plus"
                                                                style="color:crimson"></i> Add Applicant</a></li>
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

    @media (max-width: 575px) {
        .row {
            margin-top: 0;
            margin-right: 0;
            /* background: -webkit-linear-gradient(#DC143C, #261DCF); */
            /* background: -webkit-linear-gradient(#FD0342, #03FBFD); */
            /* background: -webkit-linear-gradient(#F50F2A, #F50F2A); */
            /* -webkit-background-clip: text; */
            /* -webkit-text-fill-color: transparent; */
            /* font-family: Copperplate, Papyrus, fantasy; */
            /* color: crimson; */
            /* margin-left: 300px; */
        }
    }
    </style>

    <script>
    function Location_country_Code() {
        var val = document.getElementById("country").value;

        if (val === "select Country") {
            document.getElementById("output").value == "";
        } else if (val === "India") {
            document.getElementById("output").value == "select Location_india";
        } else if (val === "US") {
            document.getElementById("output").value == "select Location_US";
        } else if (val === "UK") {
            document.getElementById("output").value == "select Location_UK";
        }
        //  else if (val === "br") {
        //   document.getElementById("output").value == "";
        // }
    }
    </script>

    <body class="my-login-page">
        <div class="u-opacity u-opacity-80 u-shape u-shape-svg u-text-palette-1-light-2 u-shape-1">

            <!-- <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 150 100" style="">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-0197"></use>
            </svg>
            <svg class="u-svg-content" viewBox="0 0 100 100" x="10px" y="35px" id="svg-0197" style="fill:#fb246a">
                <path d="M43.2,126.9c14.2,1.3,27.6,7,39.1,15.6c8.3,6.1,19.4,10.3,32.7,5.3c11.7-4.4,18.6-17.4,21-30.2c2.6-13.3,8.1-25.9,15.7-37.1
    c8.3-12.1,10.8-27.9,5.3-42.7C150.5,20.3,134.6,9,117,7.6C107.9,6.9,98.8,5,90.1,1.9C83-0.6,75-0.7,67.4,2.1
    c-9.9,3.7-17,11.6-20.1,21c-3.3,10.1-10.9,18-20.6,22.2c-0.1,0-0.1,0.1-0.2,0.1c-20.3,8.9-31,32-24.6,53.2
    C6.9,115.6,25.2,125.2,43.2,126.9z"></path>
            </svg> -->
        </div>
        <section class="h-100">
            <div class="container h-100" style="opacity:0.9">
                <div class="row justify-content-md-center align-items-center h-100">
                    <div class="card-wrapper">

                        <!-- <div class="card fat"
                            style=" background-image: linear-gradient(to bottom right, #f56991, #5ffff1);">
                            <div class="card-body " style='background-image:url("image/post-job.webp"); height: 700px;
  background-size: cover;'>
                                <img src="image/post-job.webp" width="300px" height="200px" alt=""> -->
                        <!-- <p style="font-size: 20px; color:black; padding-top:150px;"> Job posting allows <br>you
                            to post job online through<br> <span style="color:crimson"><b
                                    style="color:crimson">JOPO</b></span>
                            platform <br>where
                            interested
                            candidates can apply.<br>Its allows you to <span style="color:crimson"><b
                                    style="color:crimson">search
                                    resumes</b></span><br> and reach out to
                            the
                            relevant<br>
                            candidates from <span> <b style="color:crimson">India's </b></span><br> largest pool
                            of
                            jobseekers.</p> -->



                        <!-- <img src="image/post-job.webp" width="300px" height="200px" alt=""> -->
                        <!-- hi are you im fine ramya meena subha reshma -->
                        <!-- <img src="/image/edit.png" alt=""> -->
                        <!-- </div>
                        </div> -->

                        <div class="card fat">
                            <div class="card-body">
                                <h4 class="card-title">Post Job &nbsp;<i class="fas fa-edit"
                                        style='color:crimson; font-size:15px;'></i>
                                </h4>

                                <h6 class="" style="color:#ff0017"><?php echo $message; ?></h6>

                                <form method="POST" class="my-login-validation" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label for="text">Job title <span style="color:red">*</span></label>
                                        <input type="text"
                                            value="<?php echo isset($_POST["Job_title"]) ? $_POST["Job_title"] : ''; ?>"
                                            class="form-control" name="Job_title" required autofocus>

                                        <span style="color:#ff0000"><?php echo $message_Job_title ; ?></span>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Job description <span style="color:red">*</span></label>
                                        <textarea type="textarea" class="form-control" rows="8"
                                            name="Job_description"><?php echo isset($_POST["Job_description"]) ? $_POST["Job_description"] : ''; ?></textarea>

                                        <span style="color:#ff0000"><?php echo $message_Job_description; ?></span>
                                    </div>
                                    <div class="form-group">
                                    &nbsp;
                                        <!-- <div class="form-control"> -->
                                            <!-- <label>Country:</label> -->
                                            <label for="">Country <span style="color:red">*</span></label>
                                            <select class="country" type="text" name="Location_country" id="Job_type">
                                            <!-- <select type="text" class="form-control" name="states" id="Job_type"> -->
                                                <option value="">-- please select country --</option>
                                                <!-- <option>Select</option> -->
                                                <option value="usa">United States</option>
                                                <option value="india">India</option>
                                                <option value="uk">United Kingdom</option>
                                                <option value="Afganistan">Afganistan</option>
                                                <option value="Albania">Albania</option>
                                                <option value="Algeria">Algeria</option>
                                                <!-- <option value="">Andorra</option>
                                                <option value="">Angola</option>
                                                <option value="">Anguilla</option>
                                                <option value="">Antigua and Barbuda</option>
                                                <option value="">Argentina</option>
                                                <option value="">Armenia</option>
                                                <option value="">Aruba</option>
                                                <option value="">Australia</option>
                                                <option value="">Austria</option>
                                                <option value="">Azerbaijan</option>
                                                <option value="">Bahamas</option>
                                                <option value="">Bahrain</option>
                                                <option value="">Bangladesh</option>
                                                <option value="">Barbados</option>
                                                <option value="">Belarus</option>
                                                <option value="">Belgium</option>
                                                <option value="">Belize</option>
                                                <option value="">Benin</option>
                                                <option value="">Bermuda</option>
                                                <option value="">Bhutan</option>
                                                <option value="">Bolivia</option>
                                                <option value="">Bosnia and herzegovina</option>
                                                <option value="">Botswana</option>
                                                <option value="">Brazil</option>
                                                <option value="">Brunei Darussalam</option>
                                                <option value="">Bulgaria</option>
                                                <option value="">Burkina Faso</option>
                                                <option value="">Burundi</option>
                                                <option value="">Cambodia</option>
                                                <option value="">Cameroon</option>
                                                <option value="">Canada</option>
                                                <option value="">Cape Verde</option>
                                                <option value="">Central African Republic</option>
                                                <option value="">Chad</option>
                                                <option value="">Chile</option>
                                                <option value="">China</option> -->

                                            </select>
                                        <!-- </div> -->
                                        <div id="response">
                                            <!--Response will be inserted here-->
                                        </div>
                                    </div>
                                    <!-- ============= -->
                                    <div class="form-group">
                                        &nbsp;
                                        <label for="state">Experience Range</label>

                                        <div style="position:relative" id="">
                                            <input class="form-control" placeholder="Experience" name="Experience_Range"
                                                list="Experience_Range" type="text" autocomplete="off"
                                                value="<?php echo isset($_POST["Experience_Range"]) ? $_POST["Experience_Range"] : ''; ?>"
                                                required="">
                                            <!-- <select type="text" class="form-control"> -->
                                            <datalist type="text" id="Experience_Range" name="Experience_Range">
                                                <!-- <select name="state" id="country" class="form-control"> -->
                                                <option value=""></option>

                                                <option value="0 Year -  2Years"></option>
                                                <option value="2 Years - 3 Years"></option>
                                                <option value="3 Years - 5 Years"></option>
                                                <option value="5 Years - 9 Years"></option>
                                                <option value="9 Year - 12 Years"></option>
                                                <option value="12 Years - 15 Years"></option>
                                                <option value="15 Years - 20 Years"></option>
                                                
                                            </datalist>
                                        </div>
                                    </div>
                                     <!-- ============= -->
                                    <div class="form-group">
                                        &nbsp;
                                        <label for="state">Salary Range</label>

                                        <div style="position:relative" id="">
                                            <input class="form-control" placeholder="Salary" name="Salary_Range"
                                                list="Salary_Range" type="text" autocomplete ="off"
                                                value="<?php echo isset($_POST["Salary_Range"]) ? $_POST["Salary_Range"] : ''; ?>"
                                                required="">
                                            <!-- <select type="text" class="form-control"> -->
                                            <datalist type="text" id="Salary_Range" name="Salary_Range"> 
                                                <!-- <select name="state" id="country" class="form-control"> -->
                                                <option value=""></option>
                                                <option value="1,00,000 - 2,00,000"></option>
                                                <option value="2,00,000 - 3,00,000"></option>
                                                <option value="3,00,000 - 5,00,000"></option>
                                                <option value="5,00,000 - 7,00,000"></option>
                                                <option value="7,00,000 - 9,00,000"></option>
                                                <option value="9,00,000 - 10,00,000"></option>
                                                <option value="10,00,000 - 15,00,000"></option>
                                                <option value="10,00,000 - 10,00,000"></option>
                                                <option value="15,00,000 - 20,00,000"></option>
                                                <option value="20,00,000 - 25,00,000"></option>
                                            </datalist>
                                        </div>
                                    </div>
                                    <!-- ============= -->
                                        <div class="form-group">
                                            &nbsp;
                                            <label for="">Workplace type <span style="color:red">*</span></label>
                                            <select type="text" class="form-control" name="Work_type" id="Job_type">
                                                <option value="">-- please select workplace type --</option>
                                                <option value="Onsite">Onsite</option>
                                                <option value="Hybrid">Hybrid</option>
                                                <option value="Remote">Remote</option>

                                            </select>
                                            <div class="invalid-feedback">

                                            </div>
                                            <span style="color:#ff0000"><?php echo $message_Work_type; ?></span>
                                        </div>
                                        <div class="form-group">
                                            &nbsp;
                                            <label for="">Job type <span style="color:red">*</span></label>
                                            <select type="text" class="form-control" name="Job_type" id="Job_type">
                                                <option value="">-- please select job type --</option>
                                                <option value="Full-time">Full-time</option>
                                                <option value="Part-time">Part-time</option>
                                                <option value="Contract">Contract</option>
                                                <option value="Temporary">Temporary</option>
                                                <option value="Volunteer">Volunteer</option>
                                                <option value="Internship">Internship</option>
                                                <option value="Other">Other</option>
                                            </select>
                                            <div class="invalid-feedback">

                                            </div>
                                            <span style="color:#ff0000"><?php echo $message_Job_type; ?></span>
                                        </div>
                                        <style>
                                        .skills {
                                            width: 820px;
                                        }

                                        </style>
        
                                        <div class="form-group">
                                            &nbsp;
                                            <label for="">Skills <span style="color:red">*</span> </label>
                                            <textarea class=" form-control " id="exampleFormControlTextarea4" row="0"
                                                id="Skills" name="Skills"
                                                require><?php echo isset($_POST["Skills"]) ? $_POST["Skills"] : ''; ?></textarea>

                                            <span style="color:#ff0000"><?php echo $message_skills; ?></span>
                                        </div>
                                        &nbsp;
                                        <div class="form-group m-0">
                                            <button type="submit" name="submit" data-toggle="modal"
                                                data-target="#view-modal"
                                                style="width: 100%; font-size: 1rem; border-radius: 0.25rem;"
                                                class="btn head-btn1">Submit
                                            </button>
                                        </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<style>
    .form-group .country{
        display: inline-block;
        width: 100%;
        border: 1px solid #dee2e6;
        font-family: "roboto", sans-serif;
        font-size: 0.75rem;
        color: #212529;
        padding: 0 0.75rem; 
        padding-top: 0.4rem; 
        padding-bottom: 0.4rem;
        line-height: 14px;
        font-weight: 300;
        box-shadow: none;
        background-color: #fff;
        background-clip: padding-box;
    }

</style>

        <script>
$(document).ready(function(){
    $("select.country").change(function(){
        var selectedCountry = $(".country option:selected").val();
        $.ajax({
            type: "POST",
            url: "country_state.php",
            data: { country : selectedCountry } 
        }).done(function(data){
            $("#response").html(data);
        });
    });
});
</script>
        <?php
      
    if(isset($_SESSION['Apply_Job'])){

     ?>

<div class="modal-wrapper">
   <div class="popup">
    <header>
      <span><b style="color:green; font-size: 20px;">Job
                                        submitted successfully</b></span>
      <div class="close"><a href="submit_job.php">x</a></div>
    </header>
    <div class="content">
      <a href="<?php echo $_SESSION['Apply_Job']; ?>">click here to view</a>
      <br>
      <br>
      <a href="submit_job.php">click here to Submit another Job</a>
      <br>
      <br>
       <a href="Available_jobs.php"> click here to View JobList</a>
      <div class="field">
        <input type="text" readonly value="<?php echo $_SESSION['Apply_Job']; ?>">
        <button>Copy</button>
      </div>
      
    </div>
  </div>
    </div>
        <?php

    unset($_SESSION['Apply_Job']);
  }
        
?>

        <style>
       @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
body{
  /* background: #f2f3fb; */
  background: #7d2ae8;
}
::selection{
  color: #fff;
  background: #7d2ae8;
}
.view-modal, .popup{
  margin-top: 170px;
  position: fixed;
  left: 50%;
}
button{
  outline: none;
  cursor: pointer;
  font-weight: 500;
  border-radius: 4px;
  border: 2px solid transparent;
  transition: background 0.1s linear, border-color 0.1s linear, color 0.1s linear;

}
.view-modal{
  top: 20%;
  color: #fbfbfb;
  font-size: 18px;
  padding: 10px 25px;
  background: #fb246a;
  transform: translate(-50%, -50%);
}
.modal-wrapper{
    background: rgba(0, 0, 0, 0.508);
    position: fixed;
    top: 0;
    left: 0;
    height: 100%;
    width: 100%;
    /* display: none; */

}
.popup{
  background: #fff;
  padding: 25px;
  border-radius: 15px;
  top: -150%;
  max-width: 380px;
  width: 100%;
  opacity: 0;
  pointer-events: none;
  box-shadow: 0px 10px 15px rgba(0,0,0,0.1);
  transform: translate(-50%, -50%) scale(1.2);
  transition: top 0s 0.2s ease-in-out,
              opacity 0.2s 0s ease-in-out,
              transform 0.2s 0s ease-in-out;
}
.popup.show{
  top: 20%;
  opacity: 1;
  pointer-events: auto;
  transform:translate(-50%, -50%) scale(1);
  transition: top 0s 0s ease-in-out,
              opacity 0.2s 0s ease-in-out,
              transform 0.2s 0s ease-in-out;

}
.popup :is(header, .icons, .field){
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.popup header{
  padding-bottom: 15px;
  border-bottom: 1px solid #ebedf9;
}
header span{
  font-size: 21px;
  font-weight: 600;
}
header .close, .icons a{
  display: flex;
  align-items: center;
  border-radius: 50%;
  justify-content: center;
  transition: all 0.3s ease-in-out;
}
header .close{
  color: #878787;
  font-size: 17px;
  background: #f2f3fb;
  height: 33px;
  width: 33px;
  cursor: pointer;
}
header .close:hover{
  background: #ebedf9;
}
.popup .content{
  margin: 20px 0;
}
.popup .icons{
  margin: 15px 0 20px 0;
}
.content p{
  font-size: 16px;
}
.content .icons a{
  height: 50px;
  width: 50px;
  font-size: 20px;
  text-decoration: none;
  border: 1px solid transparent;
}
.icons a i{
  transition: transform 0.3s ease-in-out;
}

.icons a:hover{
  color: #fff;
  border-color: transparent;
}
.icons a:hover i{
  transform: scale(1.2);
}
.content .field{
  margin: 12px 0 -5px 0;
  height: 45px;
  border-radius: 4px;
  padding: 0 5px;
  border: 1px solid #e1e1e1;
}
.field.active{
  border-color: #7d2ae8;
}
.field i{
  width: 50px;
  font-size: 18px;
  text-align: center;
}
.field.active i{
  color: #7d2ae8;
}
.field input{
  width: 100%;
  height: 100%;
  border: none;
  outline: none;
  font-size: 15px;
}
.field button{
  color: #fff;
  padding: 5px 18px;
  background: #7d2ae8;
}
.field button:hover{
  background: #8d39fa;
}

        </style>


      <script>
    const viewBtn = document.querySelector(".view-modal"),
    popup = document.querySelector(".popup"),
    close = popup.querySelector(".close"),
    field = popup.querySelector(".field"),
    input = field.querySelector("input"),
    copy = field.querySelector("button");

    {
      popup.classList.toggle("show");
    }
    close.onclick = ()=>{
      viewBtn.click();
    }

    copy.onclick = ()=>{
      input.select(); //select input value
      if(document.execCommand("copy")){ //if the selected text copy
        field.classList.add("active");
        copy.innerText = "Copied";
        setTimeout(()=>{
          window.getSelection().removeAllRanges(); //remove selection from document
          field.classList.remove("active");
          copy.innerText = "Copy";
        }, 3000);
      }
    }
  </script>


    <script>
    // (C) ATTACH AUTOCOMPLETE TO INPUT FIELDS
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
    </script>

    <br>
    <br>
    <br>
    <br>

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
    </footer>
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
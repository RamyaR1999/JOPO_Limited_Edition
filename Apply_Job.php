<?php session_start(); ?>
<?php ob_start (); ?>
<?php include "db.php"; ?>


<?php

if(isset($_GET['Job_details'])){

  $the_id = $_GET['Job_details'];

  $query="SELECT * FROM jobs WHERE id='$the_id'";
  $Jobs_list=mysqli_query($connection,$query);

  while($row=mysqli_fetch_array($Jobs_list)){

     $the_id = $row['id'];
     $Job_title = $row['Job_title'];
     $Job_Email = $row['Email'];
     $Job_Skills = $row['Skills'];
     $Job_description = $row['Job_description'];

}

}

?>

<?php

if(isset($_SESSION['id'])){

     $db_id =  $_SESSION['id'];  
           
     $query="SELECT * FROM users WHERE id = '{$db_id}' AND User_type ='Job Seeker'";
     $select_register_profile = mysqli_query($connection,$query);

      
     while($row=mysqli_fetch_array($select_register_profile)){

           $id = $row['id'];
           $Fullname=  $row['Fullname'];
           $Email    = $row['Email'];
           $Password = $row['Password'];
           $Phone=  $row['Phone'];
           $Image=  $row['Image'];
           $City=  $row['City'];
           $Skills=  $row['Skills'];
           $Industry=  $row['Industry'];
           $Function=  $row['Function'];
           $Education =$row['Education'];
           $Experience =$row['Experience'];
           $Expected_Salary_thousand =$row['Expected_Salary_thousand'];
           $CV = $row['CV'];
            
           }
         }

if(isset($_POST['submit'])){

// require 'PHPMailer/PHPMailerAutoload.php';
// require('phpmailer/class.phpmailer.php');

// $mail = new PHPMailer;

// $mail->isSMTP();

// $mail->Host = 'smtp.gmail.com';
// $mail->Port=587;
// $mail->SMTPAuth = true;
// $mail->SMTPSecure='tls';

           $Fullname=  $_POST['Fullname'];
           $Email    = $_POST['Email'];
           $Phone=  $_POST['Phone'];
           $City=  $_POST['City'];
           $Skills=  $_POST['Skills'];
           $Industry=  $_POST['Industry'];
           $Function=  $_POST['Function'];
           $Education =$_POST['Education'];
           $Expected_Salary_thousand =$_POST['Expected_Salary_thousand'];
           $CV = $_FILES['file']['name'];
       //     $upload = $_FILES['file']['tmp_name'];

       //  move_uploaded_file($upload,"images/$CV");
        
       // if(empty($CV)){

       //  $query = "SELECT * FROM users WHERE id = $id ";
       //  $select_cv = mysqli_query($connection,$query);
            
       //  while($row = mysqli_fetch_array($select_cv)){

       //  $CV = $row['CV'];
          
       //     }

       //  }
       
        if(preg_match('/^[\p{L} ]+$/u', $Fullname)) {

        // if(preg_match("/^[0-9]{10}$/", $Phone)) {


         if(!empty($CV)){
              
    // $query="UPDATE users SET Fullname= '{$Fullname}', Email= '{$Email}', Skills= '{$Skills}', CV='{$CV}' WHERE id= '{$db_id}' ";  
                      
    //     $update_profile_query=mysqli_query($connection,$query);

    //      if(!$update_profile_query) {
            
    //         die("Query Failed" . mysqli_error($connection));
    //     }


        $_SESSION['Fullname'] = $Fullname;
        $_SESSION['Image'] = $Image;
        $_SESSION['Email'] = $Email;
        $_SESSION['Phone'] = $Phone;
        $_SESSION['City'] = $City;
        $_SESSION['Skills'] = $Skills;
        $_SESSION['Industry'] = $Industry;
        $_SESSION['Function'] = $Function;
        $_SESSION['Education'] = $Education;
        $_SESSION['Expected_Salary_thousand'] = $Expected_Salary_thousand;
        $_SESSION['CV'] = $CV;


// $mail->Username = 'CGBSTech2021@gmail.com';
// $mail->Password = 'cgbs@2021';

// $mail->setFrom ('CGBSTech2021@gmail.com');
// $mail->addAddress($Email,$Fullname);

// $mail->isHTML(true);
// $mail->Subject = "Job Applied Successfully";
// $mail->Body    = 'Hi'.' '.$Fullname.'<br><br>You have successfully applied for a job';

// if(!$mail->send()) {
//    echo "Message could not be sent.". $mail->ErrorInfo;
//  }
//  else{
//      $_SESSION['apply_status']="You have successfully applied for a job you can update your details here";
//   // echo " otp sent successfully to ur mail: " ;
// }
// $_SESSION['apply_status']="You have successfully applied for a job you can update your details here";
 $the_id = $_GET['Job_details'];

  $query="SELECT * FROM jobs WHERE id='$the_id'";
  $Jobs_list=mysqli_query($connection,$query);

  while($row=mysqli_fetch_array($Jobs_list)){

     $the_id = $row['id'];
     $the_Fullname = $row['Fullname'];
     $Job_title = $row['Job_title'];
     $Job_Email = $row['Email'];
     $Job_Skills = $row['Skills'];
     $Job_description = $row['Job_description'];

 }

// $receiver_mail = new PHPMailer;

// $receiver_mail->isSMTP();

// $receiver_mail->Host = 'smtp.gmail.com';
// $receiver_mail->Port=587;
// $receiver_mail->SMTPAuth = true;
// $receiver_mail->SMTPSecure='tls';

// $receiver_mail->Username = 'CGBSTech2021@gmail.com';
// $receiver_mail->Password = 'cgbs@2021';

// $receiver_mail->setFrom ('CGBSTech2021@gmail.com');
// $receiver_mail->addAddress('CGBSTech2021@gmail.com',$the_Fullname);
// // $receiver_mail->addAttachment($CV);
// $receiver_mail->addAttachment($_FILES['file']['tmp_name'],$_FILES['file']['name']);
// $receiver_mail->isHTML(true);
// $receiver_mail->Subject = "Resume for a job";
// $receiver_mail->Body    = 'Hi'.' '.$the_Fullname.'<br><br>'.' '.$Fullname.' '.'Applied for a job';
// if(!$receiver_mail->send()) {
//    echo "Message could not be sent.". $receiver_mail->ErrorInfo;

// }else{

   $CV = $_FILES['file']['name'];
           $upload = $_FILES['file']['tmp_name'];

        move_uploaded_file($upload,"images/$CV");
   if(empty($CV)){

        $query = "SELECT * FROM users WHERE id = $id ";
        $select_cv = mysqli_query($connection,$query);
            
        while($row = mysqli_fetch_array($select_cv)){

        $CV = $row['CV'];
          
           }

        }
              
       $query="UPDATE users SET CV='{$CV}' WHERE id= '{$db_id}' ";  
                      
        $update_profile_query=mysqli_query($connection,$query);

         if(!$update_profile_query) {
            
            die("Query Failed" . mysqli_error($connection));
        }
        $message =  'You have Applied for a Job Successfully';

    // header("Location:Jobseeker_full_profile.php?profile=$id");
// }
 

        }else{
            $empty_cv ="please select cv";
             
         } 
    //     }else{
    //         $message_phone = "Invalid Phone No";

    // }

        }else{
             $message_Fullname ="Only Alphabets are allowed in Fullname";
          
        }

                   
}

  ?>
<!doctype html>
<html class="no-js" lang="zxx">

<!--tittle-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>JOPO-Apply job</title>
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
    <link rel="stylesheet" href="SignIn.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.28.7, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">

    <!-- Password Icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

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
                                                            <i class="fas fa-file-import" style="color:crimson">&nbsp;</i>
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


    <body class="my-login-page">

        <div class="u-opacity u-opacity-80 u-shape u-shape-svg u-text-palette-1-light-2 u-shape-1">
            <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 150 100" style="">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-0197"></use>
            </svg>
            <svg class="u-svg-content" viewBox="0 0 100 100" x="10px" y="35px" id="svg-0197" style="fill:#fb246a">
                <path d="M43.2,126.9c14.2,1.3,27.6,7,39.1,15.6c8.3,6.1,19.4,10.3,32.7,5.3c11.7-4.4,18.6-17.4,21-30.2c2.6-13.3,8.1-25.9,15.7-37.1
    c8.3-12.1,10.8-27.9,5.3-42.7C150.5,20.3,134.6,9,117,7.6C107.9,6.9,98.8,5,90.1,1.9C83-0.6,75-0.7,67.4,2.1
    c-9.9,3.7-17,11.6-20.1,21c-3.3,10.1-10.9,18-20.6,22.2c-0.1,0-0.1,0.1-0.2,0.1c-20.3,8.9-31,32-24.6,53.2
    C6.9,115.6,25.2,125.2,43.2,126.9z"></path>
            </svg>
        </div>
        <section class="h-100">
            <div class="container h-100" style="opacity: 0.9">
                <div class="row justify-content-md-center align-items-center h-100">
                    <div class="card-wrapper">

                        <div class="card fat">
                            <div class="card-body">
                                <h6 class="" style="color:#13b013"><?php echo $message; ?></h6>
                                <h4 class="card-title">Easy Apply</h4>
                                <h6>Applying For </h6>
                                <h6 style="color: grey;"><?php echo $Job_title; ?></h6>
                                <form method="POST" class="my-login-validation" enctype="multipart/form-data">
                                    <div class="form-group">
                                        &nbsp;
                                        <label for="text">Fullname *</label>
                                        <input type="text" value="<?php echo $Fullname; ?>" class="form-control"
                                            name="Fullname" required autofocus>

                                        <span style="color:#ff0000"><?php echo $message_Fullname; ?></span>
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Email *</label>
                                        <div style="position:relative" id="">
                                            <input type="email" id="email" name="Email" value="<?php echo $Email; ?>"
                                                class="form-control" required="">
                                            <span style="color:#ff0000"><?php echo $message_Email; ?></span>

                                        </div>
                                    </div>
                                    <!-- <div class="form-group">
                                        <label for="email">Phone *</label>
                                        <div style="position:relative" id="">
                                           <input type="text" value="<?php echo $Phone; ?>"class="form-control" name="Phone">
                                           <span style="color:#ff0000"><?php echo $message_phone; ?></span>
                                        </div>
                                    </div> -->
                                    
                                    <div class="form-group">
                                        <label for="">Skills *</label>
                                        <div style="position:relative" id="">
                                            <input type="text" id="" name="Skills" value="<?php echo $Job_Skills; ?>"
                                                class="form-control" required="">
                                        </div>
                                        <span style="color:#ff0000"><?php echo $message_Skills; ?></span>
                                    </div>

                                    <div class="form-group">
                                        <label for="text">Resume *</label>
                                        <div style="position:relative" id="">
                                            <input type="file" name="file"><!-- <?php echo $CV; ?> -->
                                            <h6 style="color:#ff0000"><?php echo $empty_cv; ?></h6>
                                        </div>
                                    </div>

                                    <div class="form-group m-0">
                                        <button type="submit" name="submit"
                                            style="width: 100%; font-size: 1rem; border-radius: 0.25rem;"
                                            class="btn head-btn1">Apply Now
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
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
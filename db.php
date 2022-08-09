<?php

$connection=mysqli_connect('localhost','root','','jopo_trial_version','3306');

   if($connection){
       
       echo "";
       
     } else{
       
        die ("connection failed");
     }
 
?>
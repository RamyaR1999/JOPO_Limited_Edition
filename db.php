<?php

$connection=mysqli_connect('localhost','root','','jopo_edition','3306');

   if($connection){
       
       echo "";
       
     } else{
       
        die ("connection failed");
     }
 
?>
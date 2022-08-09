<?php include "db.php"; ?>

<?php

$output = '';

$query = '';

if(isset($_POST["query"]))
{
 $search = str_replace(",", "|", $_POST["query"]);
 $query = "
 SELECT * FROM users 
 WHERE User_type='Users' AND Skills REGEXP '".$search."'
 OR CV_date REGEXP '".$search."' 
 OR Experience_years = '".$search."' 
 ";
 $search_users=mysqli_query($connection, $query); 

 if(!$search_users){
    die("QUERY FAILED" . mysqli_error($connection));
 }
 $count=mysqli_num_rows($search_users);
 if($count == 0){
    echo "<h3 style='color:#b0b5b1'>No Users Available on your search</h3>";
 }
}
else
{
 $query = "
 SELECT * FROM users WHERE User_type='Users' ORDER BY id 
 ";
}

// $statement = $connection->prepare($query);
$statement=mysqli_query($connection, $query); 
// $statement->execute();

// while($row = $statement->fetch(PDO::FETCH_ASSOC))
// {
while($row=mysqli_fetch_assoc($statement)){

 $data[] = $row;
 // $data[] = $row['CustomerID'];
 // $data[] = $row['CustomerName'];
 // $data[] = $row['Gender'];
 // $data[] = $row['Address'];
 // $data[] = $row['City'];
 // $data[] = $row['PostalCode'];
 // $data[] = $row['Country'];
}

echo json_encode($data);

?>
<?php

     if(isset($_GET['delete'])){
         $id=$_GET['delete'];
         $query="DELETE FROM users WHERE id={$id}";
         $delete_query=mysqli_query($connectionion,$query);
         header("Location:Jobseeker_profile.php");
     }
?>
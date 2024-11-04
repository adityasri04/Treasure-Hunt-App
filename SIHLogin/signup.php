<?php
    $db=mysqli_connect('localhost','root','','logindb');
    if(!$db){
        echo"Database connection failed";
    }

    $username=$_POST['UNAME'];
    $password=$_POST['UPASS'];
    $email=$_POST['Email'];

    $sql="SELECT * FROM users WHERE UNAME= '".$username."' AND UPASS= '".$password."' AND Email= '".$email."' ";

    $result = mysqli_query($db,$sql);
    $count = mysqli_num_rows($result);

    if($count==1){
        echo json_encode("Error");
    }
    else {
        $insert="INSERT INTO users(UNAME,UPASS)VALUES('".$username."','".$password."','".$email."')";
        $query = mysqli_query($db,$insert);
        if($query){
            echo json_encode("Success");
        }
} 
?>  
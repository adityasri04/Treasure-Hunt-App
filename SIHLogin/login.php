<?php
    $db=mysqli_connect('localhost','root','','logindb');
    $username=$_POST['UNAME'];
    $password=$_POST["UPASS"];

    $sql="SELECT * FROM users WHERE UNAME= '".$username."' AND UPASS= '".$password."' ";

    $result = mysqli_query($db,$sql);
    $count = mysqli_num_rows($result);
        
    if($count==1){
        echo json_encode("Success");
    }
    else {
        echo json_encode("Error");
    }

?>

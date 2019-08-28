<?php require_once('connect.php'); ?>
<?php 

session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="css/resultstyle.css"/>  
    
    <title>SL Quiz | Results</title>
</head>
<body>
        <div class="header">  
                <h1> Quiz Results</h1>
         </div> 
         <button onclick="location.href='logout.php';" id="btn">Home</button><br>
         <button onclick="location.href='quizpage.php';" id="btn">Try Again</button>

<table cellpadding="1" cellspacing="2" border="1" style="text-align:center">
        <tr>
            <th class="c1">Question No</th>
            <th class="c2">Question</th>
            <th class="c3">Your Answer</th>
            <th class="c3">Correct Answer</th>
            <th class="c4">Result</th>
            
        </tr>
<?php
if(isset($_POST['result'])) {
$score = 0;
 for($x=0;$x<count($_SESSION['answers']);$x++){
     $y=$x+1;
     $result;
     
     if($_POST['ans'.$y]==''){ 
        //header("location: quizpage.php");
        $_SESSION['fail']=true;
        header("Location: quizpage.php?message=Answer all Questions !!");
    }
     if($_SESSION["answers"][$x]==$_POST['ans'.$y]){
         $result="Correct";
         $score+=1;
     }
     else{$result="Wrong";}
 
    ?>
<tr>
                    <td class="c1"><?php echo $y; ?></td>
                    <td class="c2"><?php echo $_SESSION["questions"][$x]; ?></td>
                    <td class="c3"><?php echo $_POST['ans'.$y]; ?></td>
                    <td class="c3"><?php echo  $_SESSION["answers"][$x]; ?></td>
                    <td class="c4"><?php echo $result; ?></td>
                </tr>


    <?php
 }
}

?>
<div class="score">
    <p><?php 
    if($score==10){
    echo "Congratulations<br> You have scored ".($score*10)."%";}
    else{ echo "Your Score ".($score*10)."%";}
    
    ?></p>
</div>

</body>
</html>


<?php mysqli_close($connection); ?>
<?php
require_once('pokef.php');?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display</title>
    <style>
  .center {
    position: absolute;
    top: 0;
    left: 50%;
    transform: translateX(-50%);
    background: #fff;
  }
</style>
</head>

<body>
<div style="text-align: center;">
    <h1>ポケモン図鑑検索</h1>
    <form action="kensaku.php" method="post">
        <ul>
            <li><span>ポケモンの名前</span><input type="text" name="name"></li>
            <li><input type="submit" name="submit" value = "検索"></li>
        </ul>
        
    </form>
    <?php
      $name = '空白';
      if(isset($_POST["submit"])){
       $name = $_POST['name'];
       $name = htmlspecialchars($name,ENT_QUOTES);
       $dbh = db_connect();
      if($name === ""){
        echo '<img src="' .  999 . '.png " alt="Random Image">';


      }else{
      
     
       $sql = 'SELECT id  FROM pokemon WHERE name = ? ';
       $stmt = $dbh->prepare($sql);
       $stmt->bindValue(1,$name,PDO::PARAM_STR);
       $stmt->execute();
       $result = $stmt->fetch(PDO::FETCH_ASSOC);
       $key = $result['id'] ?? 0;
       if($key == 0 ){
        
        echo '<img src="' .  99911 . '.png " alt="Random Image">';
        
       
       }else{
       echo '<img src="' .  $result['id'] . '.png " alt="Random Image">';}
       
      }
     $dbh = null;
     }
    ?>
   
    
    <br>
</div>
</body>
</html>



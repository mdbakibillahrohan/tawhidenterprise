<?php
session_start();
include "db.php";
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require 'PHPMailer/PHPMailer.php';
require 'PHPMailer/SMTP.php';
require 'PHPMailer/Exception.php';

//Create an instance; passing `true` enables exceptions
$mail = new PHPMailer(true);
if (isset($_SESSION["uid"])) {

	$f_name = $_POST["firstname"];
	$email = $_POST['email'];
	$address = $_POST['address'];
    $city = $_POST['city'];
    $state = $_POST['state'];
    $zip= $_POST['zip'];
    $cardname= $_POST['cardname'];
    $cardnumber= $_POST['cardNumber'];
    $expdate= $_POST['expdate'];
    $cvv= $_POST['cvv'];
    $user_id=$_SESSION["uid"];
    $cardnumberstr=(string)$cardnumber;
    $total_count=$_POST['total_count'];
    $p_card = $_POST['p_card'];
    $prod_total = $_POST['total_price']; 
    $date = date("d. m. y");
    $time = date("h:i:sa");
    
    
    $sql0="SELECT order_id from `orders_info`";
    $runquery=mysqli_query($con,$sql0);
    if (mysqli_num_rows($runquery) == 0) {
        echo( mysqli_error($con));
        $order_id=1;
    }else if (mysqli_num_rows($runquery) > 0) {
        $sql2="SELECT MAX(order_id) AS max_val from `orders_info`";
        $runquery1=mysqli_query($con,$sql2);
        $row = mysqli_fetch_array($runquery1);
        $order_id= $row["max_val"];
        $order_id=$order_id+1;
        echo( mysqli_error($con));
    }

    $sql = "INSERT INTO `orders_info` 
    (`order_id`,`user_id`,`f_name`, `email`,`address`, 
       `city`, `state`, `zip`, `cardname`,`cardnumber`,`expdate`,`prod_count`,`total_amt`,`cvv`) 
    VALUES ($order_id, '$user_id','$f_name','$email', 
        '$address', '$city', '$state', '$zip','$cardname','$cardnumberstr','$expdate','$total_count','$prod_total','$cvv')";

     $mail->isSMTP();                                            //Send using SMTP
    $mail->Host       = 'mail.gtabd.com';                     //Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
    $mail->Username   = 'helal@hostingta.com';                     //SMTP username
    $mail->Password   = 'Afeef@1234';                               //SMTP password
    $mail->SMTPSecure = 'STARTTLS';            //Enable implicit TLS encryption
    $mail->Port       = 25;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

    //Recipients
    $mail->setFrom('helal@hostingta.com', 'Tawhid Enterprise');
    $mail->addAddress("$email");     //Add a recipient
    $mail->addAddress('csehelal@outlook.com', 'Tawhid Enterprise');               //Name is optional
    // $mail->addReplyTo('info@example.com', 'Information');
    // $mail->addCC('cc@example.com');
    // $mail->addBCC('bcc@example.com');

    //Attachments
    // $mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
    // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name

    //Content
    $mail->isHTML(true);                                  //Set email format to HTML
    $mail->Subject = 'Tawhid Enterprise New Order';   
    $mail->Body    = "
    <div style='text-align: center;'><img src='cid:logo'></div> <hr>
    <h2 style='text-align: center;'>Your Order has been Placed</h2>     
    <p style='color: lime; text-align: center;' ><b>Order #</b>$order_id</p>  

    <img src='cid:oheader'>
    <table style='border-collapse: collapse;
    width: 100%; border: 1px solid #FED14E;
    text-align: left;'>
    <tr>
    <th style= 'border-collapse: collapse;
    width: 100%; padding: 15px; border: 1px solid #ddd;
    text-align: left;'>Order ID</th>
    <th style= 'border-collapse: collapse;
    width: 100%; padding: 15px; border: 1px solid #ddd;
    text-align: left;'>Customer ID</th>
    <th style= 'border-collapse: collapse;
    width: 100%; padding: 15px; border: 1px solid #ddd;
    text-align: left;'>Customer Name</th>
    <th style= 'border-collapse: collapse;
    width: 100%; padding: 15px; border: 1px solid #ddd;
    text-align: left;'>Email Address</th>
    <th style= 'border-collapse: collapse;
    width: 100%; padding: 15px; border: 1px solid #ddd;
    text-align: left;'>Address</th>
    <th style= 'border-collapse: collapse;
    width: 100%; padding: 15px; border: 1px solid #ddd;
    text-align: left;'>Product Quantity</th>
    <th style= 'border-collapse: collapse;
    width: 100%; padding: 15px; border: 1px solid #ddd;
    text-align: left;'>Payment Method</th>
    <th style= 'border-collapse: collapse;
    width: 100%; padding: 15px; border: 1px solid #ddd;
    text-align: left;'>Total Amount</th>
    </tr>
    <tr>
    <td style= 'border-collapse: collapse;
    width: 100%; padding: 15px; border: 1px solid #ddd;
    text-align: left;'>$order_id</td>
    <td style= 'border-collapse: collapse;
    width: 100%; padding: 15px; border: 1px solid #ddd;
    text-align: left;'>$user_id</td>
    <td style= 'border-collapse: collapse;
    width: 100%; padding: 15px; border: 1px solid #ddd;
    text-align: left;'>$f_name</td>
    <td style= 'border-collapse: collapse;
    width: 100%; padding: 15px; border: 1px solid #ddd;
    text-align: left;'>$email</td>
    <td style= 'border-collapse: collapse;
    width: 100%; padding: 15px; border: 1px solid #ddd;
    text-align: left;'>$address</td>
    <td style= 'border-collapse: collapse;
    width: 100%; padding: 15px; border: 1px solid #ddd;
    text-align: left;'>$total_count</td>
    <td style= 'border-collapse: collapse;
    width: 100%; padding: 15px; border: 1px solid #ddd;
    text-align: left;'>$p_card</td>
    <td style= 'border-collapse: collapse;
    width: 100%; padding: 15px; border: 1px solid #ddd;
    text-align: left;'>$prod_total</td>
    </tr>
    </table>

   <div style='width: 100%; height: 100px; background: #F0F0F0'> <p>Hey <b>$f_name</b> ,
Your order #$order_id has been placed on, $date $time via Bkash Payment Cash On Delivery. You will be updated with another email after your item(s) has been Confirmed.</p></div>


    ";
    $mail ->addEmbeddedImage(dirname(__FILE__) . '/img/gvlogo.jpg', 'logo');
    $mail ->addEmbeddedImage(dirname(__FILE__) . '/img/orderheader.png', 'oheader');
    // $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

    $mail->send();
    // echo 'Message has been sent';

    if(mysqli_query($con,$sql)){
        $i=1;
        $prod_id_=0;
        $prod_price_=0;
        $prod_qty_=0;
        while($i<=$total_count){
            $str=(string)$i;
            $prod_id_+$str = $_POST['prod_id_'.$i];
            $prod_id=$prod_id_+$str;		
            $prod_price_+$str = $_POST['prod_price_'.$i];
            $prod_price=$prod_price_+$str;
            $prod_qty_+$str = $_POST['prod_qty_'.$i];
            $prod_qty=$prod_qty_+$str;
            $sub_total=(int)$prod_price*(int)$prod_qty;
            $sql1="INSERT INTO `order_products` 
            (`order_pro_id`,`order_id`,`product_id`,`qty`,`amt`) 
            VALUES (NULL, '$order_id','$prod_id','$prod_qty','$sub_total')";
            if(mysqli_query($con,$sql1)){
                $del_sql="DELETE from cart where user_id=$user_id";
                if(mysqli_query($con,$del_sql)){
                    echo"<script>window.location.href='checkout_core.php?price=$prod_total&name= $f_name&action=success'</script>";
                }else{
                    echo(mysqli_error($con));   
                }

            }else{
                echo(mysqli_error($con));
            }
            $i++;


        }
    }else{

        echo(mysqli_error($con));
        
    }
    
}else{
    echo"<script>window.location.href='index.php'</script>";
}





?>

 

    <?php
session_start();
include("../db.php");

error_reporting(0);
if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='update_order')
{
$order_id=$_GET['order_id'];

/*this is delet query*/
mysqli_query($con,"update orders set p_status = 'Completed' where order_id='$order_id'")or die("delete query is incorrect...");
} 

///pagination
$page=$_GET['page'];

if($page=="" || $page=="1")
{
$page1=0;	
}
else
{
$page1=($page*10)-10;	
}

include "sidenav.php";
include "topheader.php";
?>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <!-- your content here -->
          <div class="col-md-14">
            <div class="card ">
              <div class="card-header card-header-primary">
                <h4 class="card-title">Orders  / Page <?php echo $page;?> </h4>
              </div>
              <div class="card-body">
                <div class="table-responsive ps">
                  <table class="table table-hover tablesorter " id="">
                    <thead class=" text-primary">
                      <tr><th>Customer</th><th>Products</th><th>Contact </th><th>Email</th><th>Address</th><th>Price</th><th>Shipping</th><th>Quantity</th>
                    </tr></thead>
                    <tbody>
                      <?php 
                        $result=mysqli_query($con,"select order_id, product_title, first_name, mobile, email, address1, address2, product_price,address2, qty,p_status from orders,products,user_info where orders.product_id=products.product_id and user_info.user_id=orders.user_id ")or die ("query 1 incorrect.....");

                        while(list($order_id,$p_names,$cus_name,$contact_no,$email,$address,$country,$price,$zip_code,$quantity,$p_status)=mysqli_fetch_array($result))
                        {	
                        echo "<tr><td>$cus_name</td><td>$p_names</td><td>$contact_no</td><td>$email</td></td><td>$address<br>ZIP: $zip_code<br>$country</td><td>$price</td><td>$address<br>ZIP: $zip_code<br>$country</td><td>$quantity</td><td>$time</td>

                        <td>
                        <a class='text-primary' href='orders.php?order_id=$order_id&action=update_order'>Confirm</a>
                        <a class='text-success' href=''>$p_status</a>
                        </td></tr>

                        ";
                        }
                        ?>
                    </tbody>
                  </table>
                  
                <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
              </div>
            </div>
          </div>
          
        </div>
      </div>
      <?php
include "footer.php";
?>
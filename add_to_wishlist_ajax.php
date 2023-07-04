<?php 
include('admin/config/config.php');

$prdt_id=$_POST['txt1'];

if(isset($_SESSION['user_id']))
{
 $usr_id=$_SESSION['user_id'];



$clt_dt="select count(id) as wishcount from `wishlist` where `user_id`='$usr_id' and `product_id`='$prdt_id'";
$qst_clt_dt=$db->query($clt_dt);
$clct_clt_count = $qst_clt_dt->fetch_assoc();

$wsh_count = $clct_clt_count['wishcount'];

if($wsh_count==0)
{
$add_wshlst="insert into wishlist set
user_id='$usr_id',
product_id='$prdt_id'";
$qst_add_wshlst=$db->query($add_wshlst);
if($qst_add_wshlst)
{
echo json_encode(['status'=>'1','response'=>"Product added into wishlist"]);
}

}
else
{
echo json_encode(['status'=>'0','response'=>"This product is already in wishlist"]);
    
}
}
else
{
   echo json_encode(['status'=>'0','response'=>"Please Login"]); 
}
?>
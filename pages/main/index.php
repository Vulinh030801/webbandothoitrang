
<div class="logo">
	<img src="./images/shopee.png" alt="" class="img-logo">

</div>

<div class="slider">
	<img src="./images/bg1.png" alt="" class="img-slider">
</div>

<?php
	if(isset($_GET['trang'])){
		$page = $_GET['trang'];
	}else{
		$page = 1;
	}
	if($page == '' || $page == 1){
		$begin = 0;
	}else{
		$begin = ($page*3)-3;
	}
	$sql_pro = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id_danhmuc ORDER BY tbl_sanpham.id_sanpham DESC LIMIT $begin,8";
	$query_pro = mysqli_query($mysqli,$sql_pro);
	
?>
			<div class="content-1">

<div class="ds-list">
	<a href="https://shopee.vn/m/don-dau-tien-mien-phi" class="ds-list-1"><img src="./images/deal1.png" alt="" class="sk-img"></a>
	<a href="https://shopee.vn/m/12-12" class="ds-list-1"><img src="./images/deal2.png" alt="" class="sk-img"></a>
	<a href="https://shopee.vn/m/don-cho-sieu-sale" class="ds-list-1"><img src="./images/deal3.png" alt="" class="sk-img"></>
</div>
</div>
<h3 class="tieude">Sản Phẩm Bán Chạy</h3>
				<ul class="product_list">
					<?php
					while($row = mysqli_fetch_array($query_pro)){ 
					?>
					<div class="hv">
					<li>
						<a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham'] ?>">
							<img src="admincp/modules/quanlysp/uploads/<?php echo $row['hinhanh'] ?>">
							<p class="title_product"><?php echo $row['tensanpham'] ?></p>
							<p class="price_product"><?php echo number_format($row['giasp'],0,',','.').'vnđ' ?></p>
							<p style="text-align: center;"><del class="price-old" style="color: #999;"><?php echo $row['giakm']?></del></p>
						</a>
					</li>
				</div>
					<?php
					} 
					?>
				</ul>
				<div style="clear:both;"></div>
				<style type="text/css">
					ul.list_trang {
					    padding: 0;
					    /* padding-top: 100px; */
					    list-style: none;
					}
					ul.list_trang li {
					    float: left;
					    padding: 5px 13px;
					    margin: 5px;
					    background: #7e1117;
					    display: block;
						border-radius: 10%;
					}
					ul.list_trang li a {
					    color: #fff;
					    text-align: center;
					    text-decoration: none;
					 
					}
				</style>
				<!-- <?php
				$sql_trang = mysqli_query($mysqli,"SELECT * FROM tbl_sanpham");
				$row_count = mysqli_num_rows($sql_trang);  
				$trang = ceil($row_count/3);
				?>
				<p style="margin-top: 300px; font-weight:600">Trang hiện tại : <?php echo $page ?>/<?php echo $trang ?> </p>
				
				<ul class="list_trang">

					<?php
					
					for($i=1;$i<=$trang;$i++){ 
					?>
						<li <?php if($i==$page){echo 'style="background: #111; "';}else{ echo ''; }  ?>><a href="index.php?trang=<?php echo $i ?>"><?php echo $i ?></a></li>
					<?php
					} 
					?> -->
					
				</ul>
				<div class="click-2">
                    <a href="index.php?quanly=danhmucsanpham&id=2">XEM THÊM</a>
                </div>

			<div class="content-2">
                <div class="text-1">
                    <p class="content-text-1">Sự Kiện Mới Nhất</p>
                </div>
                <div class="list-3">
                    <div class="colections non-paddingleft"><img src="./images/6.jpg" alt="" class="colections-img"></div>
                    <div class="colections"><img src="./images/7.jpg" alt="" class="colections-img"></div>
                    <div class="colections"><img src="./images/8.jpg" alt="" class="colections-img"></div>
                </div>
            </div>
			<hr>
        </div>
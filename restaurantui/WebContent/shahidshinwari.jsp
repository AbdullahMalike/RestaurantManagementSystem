<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shahid Shinwari</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="shahid.css">
</head>
<body>
   
    <!-- navbar start  -->

    <nav class="navbar navbar-expand-lg bg-dark navbar-dark sticky-top">
        <div class="container-fluid">
            <img alt="" class="imageedit " id="customedit" src="data:image/png;base64,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">
          <a class="navbar-brand" href="#">Shahid Shinwari</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Shahid Shinwari</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#reservation">Table Reservation</a>
              </li>
              
            </ul>
            <div class="d-flex" >
              
               <a href="index.jsp" class="btn btn-outline-success">Back To Home</a>
            </div>
          </div>
        </div>
      </nav>

<!-- navbar end  -->

<!-- banner work start  -->

<div class="editbanner">
    <div class="addcolor">
      <div class="text-white text-center mx-auto p-5 ">
        <h1>Welcome To Shahid Shanwari</h1>
         <h2>Restaurant</h2>
        <h3>Best Quality Online Food Order in Karachi</h3>
    </div>
    <div class="text-center">
        <a href="#foodorder" class="btn btn-outline-warning">Food Order</a>
        <a href="#reservation" class="btn btn-outline-warning">Table Reservation</a>
    
  </div>
  </div>
  </div>

  <!-- baner work end  -->

 <!-- food menu title start  -->

<div class="mt-5">
    <h1 id="foodorder" class="text-center editheading">Menu</h1>
</div>

 <!-- food menu title end  -->



<!-- menu work start  -->

<div class="container-fluid mt-5">

    <!-- 1st row  -->

    <div class="row">
   
        <!-- first menu  -->

<div class="col-md-4  border shadow-lg p-3 mb-5 bg-body rounded w-25 mx-auto pt-5">

<div class="d-flex">
    <img class="w-75 mx-auto " src="https://foodbrigade.com.pk/wp-content/uploads/2022/08/food-brigade-mutton-white-karahi2.jpg" alt="">
</div>
<div id="item1" class="text-center" >
<h5>Beef White Karahi</h5>
<p>1kg Beef White Karahi</p>
<p >Price : 1400</p>
</div>
<div class="d-flex">
<button type="button" onclick="addtocart()" class="btn btn-outline-success mx-auto">Add to Cart</button>
</div>

</div>

<!-- 2nd menu  -->

<div class="col-md-4 border shadow-lg p-3 mb-5 bg-body rounded w-25 mx-auto pt-5">

    <div class="d-flex">
        <img class="w-75 mx-auto " src="http://3.bp.blogspot.com/-1WjLzJSMAGQ/VOPOaC3fmCI/AAAAAAAAHW4/hykmbbB83Uo/s1600/Grilled%2Bfish.jpg" alt="">
    </div>
    <div class="text-center" >
    <h5>Grill Fish</h5>
    <p>Full fish spicy Grill Fish</p>
    <p>Price : 1600</p>
    </div>
    <div class="d-flex">
    <button type="button"  class="btn btn-outline-success mx-auto">Add to Cart</button>
    </div>
    

</div>

<!-- 3rd menu  -->

<div class="col-md-4 border shadow-lg p-3 mb-5 bg-body rounded w-25 mx-auto pt-5">

    <div class="d-flex">
        <img class="w-75 mx-auto " src="https://travelfoodatlas.com/wp-content/uploads/2021/11/turkish-adana-kebab-735x521.jpg" alt="">
    </div>
    <div class="text-center">
    <h5>Turkish kabab</h5>
    <p>6 pieces in one plate</p>
    <p>Price : 650</p>
    </div>
    <div class="d-flex">
    <button type="button" class="btn btn-outline-success mx-auto">Add to Cart</button>
    </div>

</div>
    </div>


<!-- 2nd row  -->

<div class="row">
   
    <!-- first menu  -->

<div class="col-md-4 border shadow-lg p-3 mb-5 bg-body rounded w-25 mx-auto pt-5">

<div class="d-flex">
<img class="w-75 mx-auto " src="https://www.foodfusion.com/wp-content/uploads/2021/08/Mutton-Makhni-handi-Recipe-by-Food-fusion-4.jpg" alt="">
</div>
<div class="text-center">
<h5>Mutton Makhan Handi</h5>
<p>1kg Mutton Makhni Handi</p>
<p>Price : 2100</p>
</div>
<div class="d-flex">
<button type="button" class="btn btn-outline-success mx-auto">Add to Cart</button>
</div>

</div>

<!-- 2nd menu  -->

<div class="col-md-4 border shadow-lg p-3 mb-5 bg-body rounded w-25 mx-auto pt-5">

<div class="d-flex">
    <img class="w-75 mx-auto " src="https://lalqila.com/karachi/wp-content/uploads/2021/02/tikka.jpg" alt="">
</div>
<div class="text-center">
<h5>Tikka</h5>
<p>Leg spicy chicken Tikka</p>
<p>Price : 180</p>
</div>
<div class="d-flex">
<button type="button" class="btn btn-outline-success mx-auto">Add to Cart</button>
</div>


</div>

<!-- 3rd menu  -->

<div class="col-md-4 border shadow-lg p-3 mb-5 bg-body rounded w-25 mx-auto pt-5">

<div class="d-flex">
    <img class="w-75 mx-auto " src="https://tawaqqo.com/wp-content/uploads/2020/10/6-1.png" alt="">
</div>
<div class="text-center">
<h5>Tikka</h5>
<p>Chest spicy Chicken Tikka</p>
<p>Price : 220</p>
</div>
<div class="d-flex">
<button type="button" class="btn btn-outline-success mx-auto">Add to Cart</button>
</div>

</div>
</div>


<!-- 3rd row start -->

<div class="row">
   
    <!-- first menu  -->

<div class="col-md-4 border shadow-lg p-3 mb-5 bg-body rounded w-25 mx-auto pt-5">

<div class="d-flex">
<img class="w-75 mx-auto " src="https://img.freepik.com/premium-photo/simple-naan-sada-naan-served-dish-isolated-grey-background-top-view-indian-pakistani-food_689047-3009.jpg?w=2000" alt="">
</div>
<div class="text-center">
<h5>Nan</h5>
<p>Sada Nan</p>
<p>Price : 25</p>
</div>
<div class="d-flex">
<button type="button" class="btn btn-outline-success mx-auto">Add to Cart</button>
</div>

</div>

<!-- 2nd menu  -->

<div class="col-md-4 border shadow-lg p-3 mb-5 bg-body rounded w-25 mx-auto pt-5">

<div class="d-flex">
    <img class="w-75 mx-auto " src="https://www.whiskaffair.com/wp-content/uploads/2019/12/Garlic-Naan-1-3.jpg" alt="">
</div>
<div class="text-center">
<h5>Special Nan</h5>
<p>Garlic Nan</p>
<p>Price : 40</p>
</div>
<div class="d-flex">
<button type="button" class="btn btn-outline-success mx-auto">Add to Cart</button>
</div>


</div>

<!-- 3rd menu  -->

<div class="col-md-4 border shadow-lg p-3 mb-5 bg-body rounded w-25 mx-auto pt-5">

<div class="d-flex">
    <img class="w-75 mx-auto " src="https://i.ytimg.com/vi/Zy-F1eDm4mM/maxresdefault.jpg" alt="">
</div>
<div class="text-center">
<h5>Raita</h5>
<p>Dahi Raita with salad</p>
<p>Price : 70</p>
</div>
<div class="d-flex">
<button type="button" class="btn btn-outline-success mx-auto">Add to Cart</button>
</div>

</div>
</div>



</div>

<!-- menu work end  -->

<!-- table reservation start -->

<div class="mt-5 mb-5">
    <h1 id="reservation" class="text-center editheading">Table Reservation</h1>
</div>

<!-- table reservation end -->

<div class="container">
<div class="row">
<div class="col-md-6">
    <img class="img-fluid" src="https://www.hotelierindia.com/cloud/2021/11/22/DTOm7Duo-shutterstock_1278665539_3.jpg" alt="">
</div>
<div class="col-md-6 bg-dark">
    <div>
        <h3 class="editheading py-5">Online Table Reservation</h3>
    </div>


    <!-- label work  -->
    <div class="row d-flex justify-content-center">
        <div class="col-md-4">
        <!-- 1st label  -->
        <div class="form-floating mb-3 w-100 mx-2">
            <input type="text" class="form-control" id="floatingInput" placeholder="name">
            <label for="floatingInput">Enter Name</label>
          </div>
        </div>
        <div class="col-md-4">
          <!-- 2nd label  -->
          <div class="form-floating mb-3 w-100 mx-2">
            <input type="number" class="form-control" id="floatingInput" placeholder="number">
            <label for="floatingPassword">Total Members</label>
          </div>
        </div>
        <div class="col-md-4">
            <!-- 3rd label  -->
            <div class="form-floating mb-3 w-100">
                <input type="text" class="form-control" id="floatingInput" placeholder="date">
                <label for="floatingPassword">Enter Date</label>
              </div>
            </div>
            
              <!-- 4th label  -->
              <div class="form-floating mb-3 w-50">
                <input type="number" class="form-control" id="floatingInput" placeholder="number">
                <label for="floatingPassword">Enter total seats</label>
              </div>


    </div>
    <div class="text-center">
    <button type="button" class="btn btn-outline-warning">confirm reservation</button>
</div>
</div>
</div>
</div>


<!-- footer work start -->

<div class="container-fluid bg-dark p-5 mt-4">
    <div class="row">
      <div class="col-md-4">
        <h1 class="text-white text-center">Shahid Shinwari Restaurant</h1>
        <p class="text-white py-5 p-5 customborder">Welcome to Shahid Shinwari Restaurant. Online Restaurant store in Karachi. Order food online at the best quality in Karachi.</p>
      </div>
      <div class="col-md-4">
        <div class="ratio ratio-16x9">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14475.945016335125!2d67.116924!3d24.8984505!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfe2a3e5483647ee0!2sSHAHID%20SHINWARI%20RESTAURANT!5e0!3m2!1sen!2s!4v1672336869053!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          
        </div>
      </div>
      <div class="col-md-4">
        <h1 class="text-white text-center">Contact</h1>
        <div class="text-white py-5 p-5">
        <p ><i class="fa-solid fa-location-dot"></i> &nbsp; rashid minhas road,opp askari 4, Block D Gulshan e Jamal, Karachi, Karachi City, Sindh 74000</p>
        <p ><i class="fa-solid fa-phone"></i> &nbsp; +92 000022222</p>
        <p ><i class="fa-regular fa-envelope"></i> &nbsp;  ShahidShinwari.restaurant@gmail.com</p>
      </div>
      </div>
    </div>
     </div>
    
     <div class="container-fluid customecolor p-5">
      <div class="row">
       
        <div class="col-md-12">
          <p class="text-white text-center">Designed by Abdullah & Bushra ®</p>
        </div>
      </div>
     </div>
  
  <!-- footer work end -->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="shahid.js"></script>
</body>
</html>
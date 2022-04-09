<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>AutoComplete Search Using Bootstrap 4, PHP, PDO - MySQL & Ajax</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css">
<style>
    #listm{
        position: relative;margin-top: -38px;margin-left: 215px;
    }
    
    </style>
</head>

<body class="bg-info">
  <div class="container">
    <div class="row mt-4">
      <div class="col-md-8 mx-auto bg-light rounded p-4">
        <h5 class="text-center font-weight-bold">AutoComplete Search </h5>
        <hr class="my-1">
        <h5 class="text-center text-secondary">Write any Product</h5>
        <form action="details.php" method="post" class="p-3">
          <div class="input-group">
            <input type="text" name="search" id="search" class="form-control form-control-lg rounded-0 border-info" placeholder="Search..." autocomplete="off" required>
            <div class="input-group-append">
              <input type="submit" name="submit" value="Search" class="btn btn-info btn-lg rounded-0">
            </div>
          </div>
        </form>
      </div>
      <div class="col-md-5" style="" id="listm">
        <div class="list-group" id="show-list">
          <!-- Here autocomplete list will be display -->
        </div>
      </div>
    </div>
  </div>
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="script.js"></script>
    <script>
       
        
        window.onload = function(){
            
   setInterval(function(){ 
        var element = $('#listm');
       if ($(window).width() < 1200) {
    //element.style.marginLeft = "150px";
            $('#listm').css('marginLeft', '185px');
}
  if ($(window).width() < 1030) {
     
  //element.style.marginLeft = "190px";
      $('#listm').css('marginLeft', '190px');
   
}
        if ($(window).width() < 992) {
    //element.style.marginLeft = "150px";
            $('#listm').css('marginLeft', '150px');
}
        if ($(window).width() < 768) {
    //element.style.marginLeft = "150px";
            $('#listm').css('marginLeft', '25px');
}
        if ($(window).width() > 1200) {
    //element.style.marginLeft = "150px";
            $('#listm').css('marginLeft', '215px');
}
       
              }, 100);  
            
            
            
            
  /* var $img = $('.container');
        
var paddT = $img.css('margin-left');
        alert(paddT);*/
};
    </script>
</body>

</html>

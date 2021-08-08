<!doctype html>
<html lang="en">
  <head>
    <title>Laravel 8 Import Export Excel</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


    <!-- load that FontAwesome library -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

   <style>
    @import url(https://fonts.googleapis.com/css?family=Arimo);



html, body{
  background: #AEDCC0;
  font-family: 'Arimo', sans-serif;
}


.container h1{
  color: #373737;
}

.btn{
  background: #F6FEAA;
  width: 200px;
  padding: 15px;
  color: green;
  font-weight: bold;
  border-radius: 3em;
  box-shadow: 1px 1px 17px blue;
  cursor: pointer;
  text-align: center;
  margin: 2em auto;
  -webkit-transition: all 500ms cubic-bezier(0.6, -0.28, 0.735, 0.045);
  transition: all 500ms cubic-bezier(0.6, -0.28, 0.735, 0.045);
  webkit-transition-timing-function: cubic-bezier(0.6, -0.28, 0.735, 0.045);
  transition-timing-function: cubic-bezier(0.6, -0.28, 0.735, 0.045);
}

.btn__progress{
  padding: 5px;
  width: 500px;
  color: transparent;
}

.btn__progress--fill:after{
  content: '';
  margin: -25.9px -5px;
  position: absolute;
  display: block;
  background:green;
  padding: 0.98em;
  border-radius: 3em;
  -webkit-animation: fill 3.4s linear forwards;
  animation: fill 3.4s linear forwards;
}

.btn__complete{
  padding: 10px;
  width: 42px;
  color: transparent;
  pointer-events: none;
}

.btn__complete:after{
  font-family: FontAwesome;
  content: "\f00c";
  color: #373737;
  margin: -18px 3px;
  position: absolute;
  display: block;
}

@-webkit-keyframes fill{
  from{
    width: 0;
  }
  to{
    width: 470px;
  }
}

@keyframes fill{
  from{
    width: 0;
  }
  to{
    width: 470px;
  }
}
.footer-bar
{
    display: block;
    width: 100%;
    height: 45px;
    line-height: 45px;
    background: #111;
    border-top: 1px solid #E62600;
    position: fixed;
    bottom: 0;
    left: 0;
}
.footer-bar .article-wrapper{
    font-family: arial, sans-serif;
    font-size: 14px;
    color: #888;
    float: left;
    margin-left: 10%;
}
.footer-bar .article-link a, .footer-bar .article-link a:visited{
    text-decoration: none;
    color: #fff;
}
.site-link a, .site-link a:visited{
    color: #888;
    font-size: 14px;
    font-family: arial, sans-serif;
    float: right;
    margin-right: 10%;
    text-decoration: none;
}
.site-link a:hover{
    color: green;
}
#box {
  border: 1px solid red;
  background: yellow;
}


  </style>
  </head>
  <body>
      <div class="container py-4">
          <div class="row">
              <div class="col-xl-12 text-right">
              <div class="container">
                  <a id="fileUploadForm" href="{{ route('export') }} " onclick="move()"  class="btn btn-primary">Export to Excel/CSV</a>
              </div>
              </div>
              <div class="container">
                <div id="box">Download</div>
              </div>
          </div>

          <div class="card mt-4">
              <div class="card-header">
                <h5 class="card-title font-weight-bold">Export/Import Tutorial in Laravel 8</h5>
              </div>
              <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Email</th>
                        </tr>                  
                    </thead>

                    <tbody>
                      @forelse ($users as $user)
                          <tr>
                              <td>{{ $user->id }}</td>
                              <td>{{ $user->name }}</td>
                              <td>{{ $user->email }}</td>
                          </tr>
                      @empty

                      @endforelse
                    </tbody>
                </table>
              </div>
          </div>
      </div>
      <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.min.js"></script> -->

<script src="jquery-1.7.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function(){
  var btn = $(".btn");
  btn.on("click", function(){
    start();

    $(this).addClass('btn__progress')
    setTimeout(function(){
      btn.addClass('btn__progress--fill')
    }, 500);
    setTimeout(function(){
      btn.removeClass('btn__progress--fill')
    }, 4100);
    setTimeout(function(){
      btn.addClass('btn__complete')
    }, 4400);
  });

})
// ==========================
function start() {
  var duration = 500; // it should finish in 5 seconds !
  var st = window.performance.now();
  window.requestAnimationFrame(function step(time) {
    var diff = Math.round(time - st),
      val = Math.round(diff / duration * 100);
    val = val > 100 ? 100 : val;
    $("#box").css("width", val + "px");
    $("#box").text(val + "%");
    if (diff < duration) {
      window.requestAnimationFrame(step);
    }
  })
}

</script>
  </body>
</html>
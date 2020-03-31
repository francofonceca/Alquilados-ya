<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
   <title>Alquilados Ya! Tu alquiler en un Click</title>
    <link rel="stylesheet" href="css/materialize.css">
    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/checkout/">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="./css/bootstrap/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="./css/style.css" type="text/css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      #estilo-foto {
  width: 150px;
  padding: 20px;
  margin: 50px;
  position: relative;
  font-size: 30px;
}
#foto {
    left: 0;
    top: 0;
    right: 0;
    bottom: 0;
    width: 100%;
    height: 100%;
    position: absolute;
    opacity: 0;
}
    </style>
    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">
  </head>
  <body class="bg-light">
  
  <nav>
		    <div class="nav-wrapper  blue darken-3 col s12 m12 l12 " style="opacity:0.9;">
		    	 <div class="col s1 left ">
		 			<img class="tooltipped"data-position="bottom" data-tooltip="Alquilados Ya" src="img/logoarcoiris.png" class="circle  bg-white " height="55" style="margin-top: 3.5px; margin-left:5px;">
		 		</div>
		        <ul id="nav-mobile" class=" brand-logo sans-serif  hide-on-med-and-down flow-text ">
		         	<li><a href="#" >Bienvenido <%out.println(session.getAttribute("nombre"));%></a></li>
		        </ul>
		        
		        
		        <div class="brand-logo container center">
		        	<a href="#">
			        AGREGAR PUBLICACIÓN
			        </a>
		        </div>
		        
		  		<ul id="nav-mobile" class="  sans-serif  hide-on-med-and-down flow-text right">
		        	  <li>
		        			<a href="busqueda1.jsp"class="tooltipped" title="Volver" data-position="left" data-tooltip="Volver">
		        				<i class="material-icons">arrow_back</i>
		        			</a>
		        		</li>
		        </ul>
		        
		        <ul id="nav-mobile" class="  sans-serif  hide-on-med-and-down flow-text right">
		          	<li>
		          		<a class='dropdown-trigger tooltipped' data-position="left" data-tooltip="Notificaciones" href='#' data-target='dropdown1' >
		          				<i class="material-icons input-fiel" >favorite</i>
		          		</a>
		          	</li>
		        </ul>
		        
		        <ul id="nav-mobile" class="  sans-serif  hide-on-med-and-down flow-text right" >
		        	  <li>
		        			<a href="minipublis.jsp?afuera=salir" class="tooltipped" data-position="left" data-tooltip="Salir">
		        				<i class="material-icons">exit_to_app</i>
		        			</a>
		        		</li>
		        </ul>
		        
		        </div>
		    </div>
 	</nav>
  <%
  if(request.getParameter("datos")!=null){
		session.setAttribute("direccion",request.getParameter("direccion"));
		session.setAttribute("localidad",request.getParameter("localidad"));
		session.setAttribute("tipo",request.getParameter("tipo"));
  }
  %>
    <div class="container">
  <div class="py-5 text-center">
      <div class="row">
          <div class="col-lg-3 col-md-4 col-xs-4 thumb">
          <p><img class="d-block mx-auto mb-3" src="./css/img/cm.png" alt="" width="50" height="50">
          <span class="text-muted">Ubicacion</span></p>
         </div>
         <div class="col-lg-3 col-md-4 col-xs-4 thumb">
          <p><img class="d-block mx-auto mb-3" src="./css/img/in.png" alt="" width="50" height="50">
          <span class="text-muted">Fotos</span></p>
         </div>
         <div class="col-lg-3 col-md-4 col-xs-4 thumb">
          <p><img class="d-block mx-auto mb-3" src="./css/img/in.png" alt="" width="50" height="50">
          <span class="text-muted">Descripcion</span></p>
         </div>
         <div class="col-lg-3 col-md-4 col-xs-4 thumb">
          <p><img class="d-block mx-auto mb-3" src="./css/img/in.png" alt="" width="50" height="50">
          <span class="text-muted">Caracteristicas</span></p>
         </div>
</div>
    <h1 style="family-font:'Montserrat', serif;">Imágenes</h1>
    <p class="lead">¡Es hora de lucir tu propiedad!
Subí las fotos de la propiedad a alquilar.</p>
  </div>
    <div class="col-md-8 order-md-1">
      <h4 class="mb-3">Todos los campos son obligatorios</h4>
      <form method="POST" action="descripcion.jsp" >
        <div class="row">
          <div class="col-md-10 mb-3">
          <div id="estilo-foto" class="add_photo_alternate">
              
                        <label for="foto">Seleccione imagenes</label>
                        <img src="./css/img/ft.png">
                        <input type="file" class="form-control-file" id="foto">
                    </div>
            
          </div>
        </div>
        
        
        <hr class="mb-4">
        <button class="btn btn-primary btn-lg btn-block" type="submit">Continuar</button>
      </form>
    </div>
  </div>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2017-2019 Company Name</p>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">Privacy</a></li>
      <li class="list-inline-item"><a href="#">Terms</a></li>
      <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
  </footer>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')</script><script src="/docs/4.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
        <script src="form-validation.js"></script></body>
</html>
                   
                   
                  
                    
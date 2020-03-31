<%@ page language="java" import="paqueteclases.*, java.util.List, java.io.*, java.util.*, java.net.*, java.sql.*" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"
   %>
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
    <link href="https://fonts.googleapis.com/css?family=Montserrat|Roboto|Merriweather|Staatliches|Poppins|Ubuntu&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="./css/bootstrap/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="./css/style.css" type="text/css">

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
  Connection canal = null; 
	ResultSet tabla= null; 
	ResultSet tabla2= null;
	ResultSet tabla3=null;
	Statement instruccion=null; 
	String strcon = "jdbc:mysql://localhost:3306/proyectodb?user=root&password=admin"; 
	String cadSQL = ""; 
	
	 try  
    { Class.forName("com.mysql.jdbc.Driver").newInstance(); 
      canal=DriverManager.getConnection(strcon); 
      instruccion = canal.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, 
      ResultSet.CONCUR_UPDATABLE); 
    } catch(java.lang.ClassNotFoundException e) {
  	  out.println(e);
    } catch(SQLException e) {
  	  out.println(e);
    } 	

	
	if(request.getParameter("datosd")!=null){
		instruccion.execute("INSERT INTO publicaciones (idusuario, direccion, localidad,descripcion,titulo,reportes) values ("+session.getAttribute("id")+",'"+session.getAttribute("direccion")+"','"+session.getAttribute("localidad")+"','"+request.getParameter("descripcion")+"','"+request.getParameter("titulo")+"',0)");
		tabla= instruccion.executeQuery("SELECT idpublicacion from publicaciones where direccion='"+session.getAttribute("direccion")+"'");
		tabla.first();
		int i=Integer.parseInt(tabla.getString("idpublicacion"));
		tabla.close();
		if(i!=0){
		instruccion.execute("INSERT INTO tags (etiqueta,contadorbusqueda, idpublicacion) values('"+session.getAttribute("tipo")+"',0,"+i+")");
		instruccion.execute("INSERT INTO tags (etiqueta,contadorbusqueda, idpublicacion) values('"+request.getParameter("moneda")+"',0,"+i+")");
		instruccion.execute("INSERT INTO tags (etiqueta,contadorbusqueda, idpublicacion) values('"+request.getParameter("precio")+"',0,"+i+")");
		instruccion.execute("INSERT INTO tags (etiqueta,contadorbusqueda, idpublicacion,cantidad)  values('ambientes',0,"+i+","+request.getParameter("ambientes")+")");
		instruccion.execute("INSERT INTO tags (etiqueta,contadorbusqueda, idpublicacion,cantidad) values('dormitorios',0,"+i+","+request.getParameter("dormitorios")+")");
		instruccion.execute("INSERT INTO tags (etiqueta,contadorbusqueda, idpublicacion,cantidad) values('baños',0,"+i+","+request.getParameter("baños")+")");
		session.setAttribute("tipo",i);
		response.sendRedirect("caracteristicas.jsp");
		}
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
          <p><img class="d-block mx-auto mb-3" src="./css/img/cm.png" alt="" width="50" height="50">
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
    <h1 style="font-family:'Montserrat', serif;">Descripcion</h1>
    <p class="lead">¿Cómo es tu propiedad?</p>
  </div>

    <div class="col-md-8 order-md-1">
      <h4 class="mb-3">Todos los campos son obligatorios</h4>
      <form method="POST" action="descripcion.jsp" >
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="propiedad">Titulo</label>
            <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text"><img src="./css/img/lupa.png" width="20" height="20" class="d-inline-block align-top" alt=""></span>
            </div>
            <input name="titulo" type="text" class="form-control" id="username" placeholder="Ingrese titulo que veran las personas" required>           
            </div>
            </div>
        </div>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="state">Descripcion</label>
            <div class="input-group">
            <div class="input-group-prepend">
            <span class="input-group-text"><img src="./css/img/book.png" width="20" height="20" class="d-inline-block align-top" alt=""></span>
                    <input type="textarea" name="descripcion" rows="6" cols="34" placeholder="Escriba">
          </div>
        </div>
        </div>
        </div>
        <div class="row">
          <div class="col-md-3 mb-3">
            <label for="state"><span class="text-muted">Tipo de moneda</span></label>
            <select name="moneda"class="custom-select d-block w-100" id="state" required>
              <option disabled selected>Moneda...</option>
              <option>Pesos</option>
                    <option>Dolares</option>
            </select>
          </div>
        
        <div class="col-md-3 mb-3">
        <label for="state"><span class="text-muted">Precio</span></label>
            <input name="precio" type="text" class="form-control" id="username" placeholder="$" required>           

          </div>
          </div>
          Espacios
      <div class="row">
        <div class="col-md-2 mb-3">
          <label for="username"><span class="text-muted">Ambiente</span></label>
            <input name="ambientes" type="text" class="form-control" id="username" placeholder="0" required>           
          </div>
          <div class="col-md-2 mb-3">
          <label for="username"><span class="text-muted">Dormitorios</span></label>
              <input name="dormitorios" type="text" class="form-control" id="username" placeholder="0" required>
            </div>
            <div class="col-md-2 mb-3">
          <label for="username"><span class="text-muted">BaÃ±os</span></label>
            <input name="baños" type="text" class="form-control" id="username" placeholder="0" required>   
        </div>
        </div>
        Garage
        <div class="row">
        <div class="col-md-3 mb-3 d-block my-3">
                  <div class="custom-control custom-radio">
                    <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                    <label class="custom-control-label" for="credit">Si</label>
                  </div>
                  <div class="custom-control custom-radio">
                    <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
                    <label class="custom-control-label" for="debit">No</label>
                  </div>
        </div> 
        </div> 
        Antiguedad
        <div class="row">
        <div class="col-md-3 mb-3 d-block my-3">
                  <div class="custom-control custom-radio">
                    <input id="estrenar" name="antiguedad" type="radio" class="custom-control-input" checked required>
                    <label class="custom-control-label" for="estrenar">A estrenar</label>
                  </div>
                  <div class="custom-control custom-radio">
                    <input id="aÃ±os" name="antiguedad" type="radio" class="custom-control-input" required>
                    <label class="custom-control-label" for="aÃ±os">Años</label>
                  </div>
        </div> 
        </div>          
        

        
        <hr class="mb-4">
        <input name="datosd" class="btn btn-primary btn-lg btn-block" type="submit" value="Continuar">
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
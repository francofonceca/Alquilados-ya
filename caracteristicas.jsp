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
    <title>Alquilados Ya!</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/checkout/">

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
	if(request.getParameter("btn")!=null){
		 if(request.getParameter("agua")!=null){
			 instruccion.execute("INSERT INTO tags (etiqueta,contadorbusqueda, idpublicacion) values('agua',0,"+session.getAttribute("tipo")+")");		
		 }
		 if(request.getParameter("luz")!=null){
			 instruccion.execute("INSERT INTO tags (etiqueta,contadorbusqueda, idpublicacion) values('luz',0,"+session.getAttribute("tipo")+")");
		 }
		 if(request.getParameter("telefono")!=null){
			 instruccion.execute("INSERT INTO tags (etiqueta,contadorbusqueda, idpublicacion) values('telefono',0,"+session.getAttribute("tipo")+")");
			
		 }
		 if(request.getParameter("internet")!=null){
			 instruccion.execute("INSERT INTO tags (etiqueta,contadorbusqueda, idpublicacion) values('internet',0,"+session.getAttribute("tipo")+")");
				
		 }
		 if(request.getParameter("gas")!=null){
			 instruccion.execute("INSERT INTO tags (etiqueta,contadorbusqueda, idpublicacion) values('gas',0,"+session.getAttribute("tipo")+")");
			 	
		 }
		 if(request.getParameter("calle")!=null){
			 instruccion.execute("INSERT INTO tags (etiqueta,contadorbusqueda, idpublicacion) values('asfalto',0,"+session.getAttribute("tipo")+")");
			 	
		 }
		 instruccion.execute("INSERT INTO notificaciones (descripcion,idusuario) values ('Publicacion agregada correctamente',"+session.getAttribute("id")+")");
		 response.sendRedirect("perfil.jsp");	
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
          <p><img class="d-block mx-auto mb-3" src="./css/img/cm.png" alt="" width="50" height="50">
          <span class="text-muted">Descripcion</span></p>
         </div>
         <div class="col-lg-3 col-md-4 col-xs-4 thumb">
          <p><img class="d-block mx-auto mb-3" src="./css/img/in.png" alt="" width="50" height="50">
          <span class="text-muted">Caracteristicas</span></p>
         </div>
        </div>
    <h1 style="font-family:'Montserrat', serif;">Caracteristicas</h1>
    <p class="lead">Ya hiciste gran parte del trabajo y ahora le vamos a dar algunas caracteristicas más.</p>
  </div>

    <div class="col-md-8 order-md-1">
      <h4 class="mb-3">Todos los campos son obligatorios</h4>
      <form method="get" action="caracteristicas.jsp" >
            <label for="state"><span class="text-muted">Servicios</span></label>
        <div class="row">
            
                    <div class="col-md-3 mb-3 d-block my-3">
                            
                      <div class="custom-control custom-checkbox">
                            <input id="agua" name="agua" type="checkbox" class="custom-control-input" checked>
                            <label class="custom-control-label" for="agua">Agua corriente</label>
                      </div>
                    </div>        
                      <div class="col-md-3 mb-3 d-block my-3">
                        <div class="custom-control custom-checkbox">
                            <input id="telefono" name="telefono" type="checkbox" class="custom-control-input" >
                            <label class="custom-control-label" for="telefono">Telefono</label>
                        </div>
                      </div>
             
        </div>
        <div class="row">
            <div class="col-md-3 mb-3 d-block my-3">
                      <div class="custom-control custom-checkbox">
                        <input id="luz" name="luz" type="checkbox" class="custom-control-input" checked>
                        <label class="custom-control-label" for="luz">Luz</label>
                      </div>
                    </div>        
                      <div class="col-md-3 mb-3 d-block my-3">
                      <div class="custom-control custom-checkbox">
                        <input id="internet" name="internet" type="checkbox" class="custom-control-input">
                        <label class="custom-control-label" for="internet">Internet</label>
                      </div>
                    </div>
             
        </div> 
        <div class="row">
            <div class="col-md-3 mb-3 d-block my-3">
                      <div class="custom-control custom-checkbox">
                        <input id="gas" name="gas" type="checkbox" class="custom-control-input" checked >
                        <label class="custom-control-label" for="gas">Gas natural</label>
                      </div>
                    </div>        
                      <div class="col-md-3 mb-3 d-block my-3">
                      <div class="custom-control custom-checkbox">
                        <input id="calle" name="calle" type="checkbox" class="custom-control-input" >
                        <label class="custom-control-label" for="calle">Pavimento</label>
                      </div>
                    </div>
            
        </div>  
        
        <hr class="mb-4">
        <input class="btn btn-primary btn-lg btn-block" type="submit" value="Confirmar" name="btn">
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
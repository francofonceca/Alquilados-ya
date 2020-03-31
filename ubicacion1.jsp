<%@ page language="java" import="paqueteclases.*, java.util.List, java.io.*, java.util.*, java.net.*, java.sql.*" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alquilados Ya! Tu alquiler en un Click</title>
	<!-- ICONOS  -->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- CLASES DE CSS  -->
    <link rel="stylesheet" href="js/materialize.js">
    <link rel="stylesheet" href="css/materialize.css">
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <script type="text/javascript" src="js/materialize.js"></script>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/checkout/">
	<link href="https://fonts.googleapis.com/css?family=Montserrat|Roboto|Merriweather|Staatliches|Poppins|Ubuntu&display=swap" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="css/bootstrap/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    
    </head>
<body>
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
	/*
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
	
		
		if(request.getParameter("datos")!=null){
			String d=request.getParameter("direccion");
			String l=request.getParameter("localidad");
			instruccion.execute("INSERT INTO publicaciones (idusuario, direccion, localidad) values ("+session.getAttribute("id")+",'"+d+"','"+l+"')");
			response.sendRedirect("multimedia.jsp");
			session.setAttribute("direccion",d);
		}
	*/
	%>
	<!-- ACA EMPIEZA TODO EL CANCER HECHO X WIROX -->
    <div class="container">
  <div class="py-5 text-center">
		<div class="row">
				<div class="col-lg-3 col-md-4 col-xs-4 thumb">
				<p><img class="d-block mx-auto mb-3" src="css/img/in.png"  alt="" width="50" height="50"><a href="ubicacion1.jsp">
				<span class="text-muted">Ubicacion</span></p></a>
			   </div>
			   <div class="col-lg-3 col-md-4 col-xs-4 thumb">
				<p><img class="d-block mx-auto mb-3" src="css/img/in.png" alt="" width="50" height="50">
				<span class="text-muted">Fotos</span></p>
			   </div>
			   <div class="col-lg-3 col-md-4 col-xs-4 thumb">
				<p><img class="d-block mx-auto mb-3" src="css/img/in.png" alt="" width="50" height="50">
				<span class="text-muted">Descripcion</span></p>
			   </div>
			   <div class="col-lg-3 col-md-4 col-xs-4 thumb">
				<p><img class="d-block mx-auto mb-3" src="css/img/in.png" alt="" width="50" height="50">
				<span class="text-muted">Caracteristicas</span></p>
			   </div>
				
			  
				</div>
    <h1 style="font-family:'Montserrat', serif;">Bienvenido a Agregar Publicación</h1>
    <p class="lead">¡Es un gusto tenerte con nosotros! 
      Empecemos por lo basico: Ingresa el tipo de propiedad y ubicación!</p>
  </div>

    <div class="col-md-8 order-md-1">
      <h4 class="mb-3">Todos los campos son obligatorios</h4>
      <form method="get" action="multimedia.jsp" >
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="propiedad">Que propiedad queres publicar?</label>
            <select name="tipo" class="custom-select d-block w-100" id="state" required >
            <option disabled selected>Elegir...</option>
              <option>Departamento</option>
                <option>Local</option>
                <option>Casa</option>
                <option>Oficina</option>
            </select>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="state">Ubicacion<span class="text-muted"> (Seleccione su localidad)</span></label>
            <select name="localidad"class="custom-select d-block w-100" id="state" required>
              <option disabled selected>Localidad</option>
              <option>Tortuguitas</option>
              <option>Del Viso</option>
              <option>Grand Bourg</option>
              <option>Tierras Altas</option>
			  <option>Manuel Alberti</option>
            </select>
          </div>
        </div>
        <div class="row">
        <div class="col-md-6 mb-3">
          <label for="username"><span class="text-muted">Ingrese su direccion</span></label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text"><img src="./css/img/lupa.png" width="20" height="20" class="d-inline-block align-top" alt=""></span>
            </div>
            <input name="direccion" type="text" class="form-control" id="username" placeholder="Direccion" required>           
          </div>
        </div>
        </div>
       

        
        <hr class="mb-4">
        <input  name="datos" value="Continuar" class="btn btn-primary btn-lg btn-block" type="submit">
      </form>
    </div>
  </div>






<div class="row">
	<div class="col s12 m12 l12 card sans-serif" style="left:0px;height:200px; width:100%!important; position:static; bottom:0px;">
		<br>
		<p><h3 class="brand-logo center  ">Alquilados Ya!</h3>
	
	
	</div>
</div>	
		
				  
 <script>
    document.addEventListener('DOMContentLoaded', function() {
    	var elems = document.querySelectorAll('.dropdown-trigger');
		var instances = M.Dropdown.init(elems);
        var elems = document.querySelectorAll('.sidenav');
		var instances=M.Sidenav.init(elems);
		var elems = document.querySelectorAll('select'); 
	    var instances = M.FormSelect.init(elems);
	    var elems = document.querySelectorAll('.dropdown-trigger');
	    var instances = M.Dropdown.init(elems);
	    var elems = document.querySelectorAll('.modal');
	    var instances = M.Modal.init(elems);
	    var elems = document.querySelectorAll('.fixed-action-btn');
	    var instances = M.FloatingActionButton.init(elems);
	    var elems = document.querySelectorAll('.tooltipped');
	    var instances = M.Tooltip.init(elems);
	});
	
	  
	  </script>
</body>
</html>
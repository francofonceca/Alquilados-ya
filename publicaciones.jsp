<%@ page language="java" import="paqueteclases.*, java.util.List, java.io.*, java.util.*, java.net.*, java.sql.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
</head>
<body>
	<!-- BARRA DE MENU -->	
	<nav>
		    <div class="nav-wrapper   lime col s12 m12 l12 " style="opacity:0.9;">
		        <ul id="nav-mobile" class=" brand-logo sans-serif  hide-on-med-and-down flow-text ">
		         	<li><a href="#" title="Bienvenido">Bienvenido <%out.println(session.getAttribute("nombre")); %></a></li>
		        </ul>
		        
		        <ul class="col s12 m12 l6" style="opacity:0.0;">
		        	<li>aaaaaaaaaaaaaaaaaaaaaaaaaaaa</li>
		        </ul>
		        
		        <div class="brand-logo container center" >
			        <a href="busqueda1.jsp">
			        TUS PUBLICACIONES
			        </a>
		        </div>
		        		
		        <ul id="nav-mobile" class="  sans-serif  hide-on-med-and-down flow-text right">
		        	  <li>
		        			<a href="busqueda1.jsp" title="Volver">
		        				<i class="material-icons">arrow_back</i>
		        			</a>
		        		</li>
		        </ul>
		        <ul id="nav-mobile" class="  sans-serif  hide-on-med-and-down flow-text right">
		          	<li>
		          		<a class='dropdown-trigger' href='#' data-target='dropdown1' title="Notificaciones">
		          				<i class="material-icons input-fiel" >favorite</i>
		          		</a>
		          	</li>
		        </ul>
		        
		        <ul id="nav-mobile" class="  sans-serif  hide-on-med-and-down flow-text right">
		        	  <li>
		        			<a href="minipublis.jsp?a=1" title="Salir">
		        				<i class="material-icons">exit_to_app</i>
		        			</a>
		        		</li>
		        </ul>
		        
		        </div>
		    </div>
 	</nav>
 	
 	
 	
 	<!-- NOTIFICACIONES -->
		  <ul  id='dropdown1' class='dropdown-content' style="min-width: 25rem;">
		  <%
		  Connection canal = null; 
			ResultSet tabla= null; 
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
			 tabla = instruccion.executeQuery("select descripcion,DATE(fecha) AS fecha from notificaciones where idusuario= '"+session.getAttribute("id")+"'");
			 if(tabla.first()){
				 out.println(" <li><a href=\"#!\"> "+ tabla.getString("descripcion")+ " | "+tabla.getString("fecha")+"</a></li>");
					out.println("<li class=\"divider\" tabindex=\"-1\"></li>");
				 while(tabla.next()){
					 out.println(" <li><a href=\"#!\"> "+ tabla.getString("descripcion")+ " | "+tabla.getString("fecha")+"</a></li>");
						out.println("<li class=\"divider\" tabindex=\"-1\"></li>");
					
				 }
			 }else{
				 out.println(" <li><a href=\"#!\">No tienes notificaciones</a></li>");
					out.println("<li class=\"divider\" tabindex=\"-1\"></li>");
				}
		  	%>
		  </ul>
		  
		  
				
	<!-- ACA EMPIEZA EL FOOTEEEERRRRRR PERROO -->
<br>
<br>
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
	    var elems = document.querySelectorAll('.modal');
	    var instances = M.Modal.init(elems);
	    var elems = document.querySelectorAll('.fixed-action-btn');
	    var instances = M.FloatingActionButton.init(elems);
	    var elems = document.querySelectorAll('.carousel');
	    var instances = M.Carousel.init(elems,{
	    	fullWidth: true,
	 			 indicators: true
	    });
	    
	});
	
	  
	  </script>
</body>
</html>
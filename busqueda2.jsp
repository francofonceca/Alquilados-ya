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
    </head>
<body>
		
	<!-- BARRA DE MENU -->	
	<nav>
		    <div class="nav-wrapper  cyan col s12 m12 l12 " style="opacity:0.9;">
		        <ul id="nav-mobile" class=" brand-logo sans-serif  hide-on-med-and-down flow-text ">
		         	<li><a href="#">Bienvenido <%out.println(session.getAttribute("nombre")); %></a></li>
		        </ul>
		        
		        <ul class="col s12 m12 l6" style="opacity:0.0;">
		        	<li>aaaaaaaaaaaaaaaaaaaaaaaaaaaa</li>
		        </ul>
		        
		        <div class="brand-logo container center">
			        ALQUILADOS YA !
		        </div>
		        
		  		<ul id="nav-mobile" class="  sans-serif  hide-on-med-and-down flow-text">
		        	  <li class="right">
		        			<a href="#">
		        				<i class="material-icons">account_circle</i>
		        			</a>
		        		</li>
		        </ul>
		        
		        <ul id="nav-mobile" class="  sans-serif  hide-on-med-and-down flow-text right">
		          	<li>
		          		<a class='dropdown-trigger' href='#' data-target='dropdown1'>
		          				<i class="material-icons input-fiel" >favorite</i>
		          		</a>
		          	</li>
		        </ul>
		        
		        <ul id="nav-mobile" class="  sans-serif  hide-on-med-and-down flow-text right">
		        	  <li>
		        			<a href="index.html">
		        				<i class="material-icons">exit_to_app</i>
		        			</a>
		        		</li>
		        </ul>
		        
		        </div>
		    </div>
 	</nav>
  
   
  				<br>
				<br>
  <!--  LA BARRA DE BUSQUEDA  -->
		<div class="container">
				<center>
					<div class="row" style="margin-top:20px;"> 
						<div class=" col m12 l12 s12">        
							<nav>
							    <div class="nav-wrapper">
									<form method="get" action="busqueda1.jsp">
								         	<div class="input-field">
												<input id="search" type="search" name="search" required>
							         			<label class="label-icon" placeholder="search">
							         				<i class=" large material-icons">search</i>
							         			</label>
							         			<i class="material-icons">close</i>
									   		</div>
									</form>    
							   </div>
							</nav>
				    	</div>
					</div>
				</center>

		<!-- PUBLICACIONES  -->
			<div class="row">
				<div class="col m12 l12 s12">
					<%	
					
							if(request.getParameter("search")!=null){
								int cant=Integer.parseInt(request.getParameter("search"));
								publicacion muestra = new publicacion();
								for(int x=1;x<=cant;x++){
					 				out.println(muestra.getPublicacion());
								}
							}else{
								out.println("<div class=\"col m12 l12 s12 card\"' style=\"height:800px;\"></div>");
							}
					%>
				</div>
			</div>
	</div>
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
			 tabla = instruccion.executeQuery("select descripcion from notificaciones where idusuario= '"+session.getAttribute("id")+"'");
			 while(tabla.next()){
					out.println(" <li><a href=\"#!\">"+tabla.getString("descripcion")+"</a></li>");
					out.println("<li class=\"divider\" tabindex=\"-1\"></li>");
				
			 }
		  	%>
		  </ul>
</div>
<!-- ACA EMPIEZA EL FOOTEEEERRRRRR PERROO -->
<br>
<br>
<div class="row">
	<div class="col s12 m12 l12 card sans-serif" style="left:0px;height:200px; width:100%!important; position:static; bottom:0px;">
		<br>
		<p><h3 class="brand-logo center  ">Alquilados Ya!</h3>
	
	
	</div>
</div>	

 <!-- ACA VAN SCRIPTS PERROOO LLEGAMO AL FINAL -->
    <script>
    
    document.addEventListener('DOMContentLoaded', function() {
    	var elems = document.querySelectorAll('.dropdown-trigger');
		var instances = M.Dropdown.init(elems, {
		});
      });
    
	document.addEventListener('DOMContentLoaded', function() {
        var elems = document.querySelectorAll('.sidenav');
		var instances=M.Sidenav.init(elems, options);
		var elems = document.querySelectorAll('select'); 
	    var instances = M.FormSelect.init(elems);
	    var elems = document.querySelectorAll('.dropdown-trigger');
	    var instances = M.Dropdown.init(elems);
	});
	
	  
	  </script>
</body>
</html>
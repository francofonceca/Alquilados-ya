<%@ page language="java" import="paqueteclases.*, java.util.List, java.io.*, java.util.*, java.net.*, java.sql.*" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alquilados Ya! Tu alquiler en un Click</title>
	<!-- ICONOS  -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat|Roboto|Merriweather|Staatliches|Poppins|Ubuntu&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- CLASES DE CSS  -->
    <link rel="stylesheet" href="js/materialize.js">
    <link rel="stylesheet" href="css/materialize.css">
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <script type="text/javascript" src="js/materialize.js"></script>
    </head>
<body>
		
	<!-- BARRA DE MENU -->	
	<nav style="z-index:1000; position:relative;">
		    <div class="nav-wrapper  cyan col s12 m12 l12 " style="opacity:0.9;">
		    	 <div class="col s1 left ">
		 			<img class="tooltipped"data-position="bottom" data-tooltip="Alquilados Ya" src="img/logoarcoiris.png" class="circle  bg-white " height="55" style="margin-top: 3.5px; margin-left:5px;">
		 		</div>
		        <ul id="nav-mobile" class=" brand-logo   hide-on-med-and-down flow-text ">
		         	<li><a href="#" style="font-family:'Montserrat', serif;">Bienvenido <%out.println(session.getAttribute("nombre"));%></a></li>
		        </ul>
		        
		        <ul class="col s12 m12 l6" style="opacity:0.0;">
		        	<li>aaaaaaaaaaaaaaaaaaaaaaaaaaaa</li>
		        </ul>
		        
		        <div class="brand-logo container center">
		        	<a href="busqueda1.jsp">
			        ALQUILADOS YA !
			        </a>
		        </div>
		        
		  		<ul id="nav-mobile" class="  sans-serif  hide-on-med-and-down flow-text">
		        	  <li class="right">
		        			<a href="perfil.jsp" class="tooltipped"  data-position="left" data-tooltip="Perfil" >
		        				<i class="material-icons">account_circle</i>
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
  
   
  				<br>
				<br>
				
  <!--  LA BARRA DE BUSQUEDA  -->
		<div class="container" style="z-index:1;" >
				<center>
					<div class="row" style="margin-top:20px;"> 
						<div class=" col m12 l12 s12" style="border-radius:20px">        
							<nav>
							    <div class="nav-wrapper">
							    	
									<form method="get" action="busqueda1.jsp">
								         	<div class="input-field">
												<input class="tooltipped"data-position="left" data-tooltip="Buscar" id="search" type="search" name="search"  placeholder="Buscar.." ></input>
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
			<div class="row"style="z-index:1;">
				<div class="col m12 l12 s12">
					<%	
							String pr=request.getParameter("search");
							if(pr!=null){
								int cant=Integer.parseInt(request.getParameter("search"));
								if(cant==0){
									out.println("<div style=\"z-index:1;\" class= \"col m12 l12 s12 card\" style=\"height:700px;\">\r\n" + 
											"				<div class=\"col s12 center\" >\r\n" + 
											"		 			<img src=\"img/logogris.jfif\" class=\"circle responsive-img bg-white\">\r\n" + 
											"		 		</div>\r\n" + 
											"			</div>");
								}else{
								publicacion muestra = new publicacion();
								for(int x=1;x<=cant;x++){
					 				out.println(muestra.getPublicacion());
								}
								}
							}else{
								out.println("<div class= \"col m12 l12 s12 card\" style=\"height:700px;\">\r\n" + 
										"				<div class=\"col s12 center\" >\r\n" + 
										"		 			<img src=\"img/logogris.jfif\" class=\"circle responsive-img bg-white\">\r\n" + 
										"		 		</div>\r\n" + 
										"			</div>");
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
		  
		  
		  <!-- EL BOTON DE AGREGAR PUBLICACION -->
			
			<div class="fixed-action-btn">
		  <a class="btn-floating btn-large cyan">
		    <i class="large material-icons">add</i>
		  </a>
		  <ul>
		    <li><a href="#" data-position="left" data-tooltip="Editar Publicacion" class="tooltipped btn-floating red"><i class="material-icons">mode_edit</i></a></li>
		    <li><a  href="ubicacion1.jsp" data-position="left" data-tooltip="Agregar Publicacion" class="tooltipped btn-floating blue"><i class="material-icons">home</i></a></li>
		  </ul>
		</div>
		  
		  
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
		var instances = M.Dropdown.init(elems);
        var elems = document.querySelectorAll('.sidenav');
		var instances=M.Sidenav.init(elems);
		var elems = document.querySelectorAll('select'); 
	    var instances = M.FormSelect.init(elems);
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
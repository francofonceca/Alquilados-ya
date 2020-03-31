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
    <!-- background-color:#eceff1!important -->
<body style="background-color:#eceff1!important ">
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
	 	 
	 	if(request.getParameter("id")!=null){
	 		instruccion.execute("DELETE FROM contactos where idusuario='"+session.getAttribute("id")+"' and idusuariocontacto='"+request.getParameter("id")+"'");
	 		instruccion.execute("INSERT INTO notificaciones (descripcion,idusuario) values ('Uuario eliminado correctamente',"+session.getAttribute("id")+")");
			response.sendRedirect("busqueda1.jsp");
	 	}
		if(request.getParameter("datos")!=null){
			String n=request.getParameter("nombre");
			String a=request.getParameter("apellido");
			String d=request.getParameter("descripcion");
			String l=request.getParameter("localidad");
			instruccion.execute("UPDATE usuario SET  nombre='"+n+"', apellido='"+a+"', descripcion='"+d+"', localidad='"+l+"' WHERE idusuario='"+session.getAttribute("id")+"';");
			instruccion.execute("INSERT INTO notificaciones (descripcion,idusuario) values ('Datos modificados correctamente',"+session.getAttribute("id")+")");
			response.sendRedirect("busqueda1.jsp");
		}else{
			 tabla = instruccion.executeQuery("select * from usuario where idusuario ='"+session.getAttribute("id")+"'");
			    while(tabla.next()){	 
			    	  		session.setAttribute("id",tabla.getString("idusuario"));
			    	  		session.setAttribute("nombre", tabla.getString("nombre"));
			    	  		session.setAttribute("apellido", tabla.getString("apellido"));
			    	  		session.setAttribute("email", tabla.getString("email"));
			    	  		session.setAttribute("direccion", tabla.getString("direccion"));
			    	  		session.setAttribute("localidad", tabla.getString("localidad"));
			    	  		session.setAttribute("descripcion", tabla.getString("descripcion"));  
			    }
		}
		if(request.getParameter("linkinstagram")!=null){
			instruccion.execute("UPDATE links SET instagram='"+request.getParameter("instagram")+"'  WHERE idusuario='"+session.getAttribute("id")+"';");
			response.sendRedirect("busqueda1.jsp");
			instruccion.execute("INSERT INTO notificaciones (descripcion,idusuario) values ('link instagram modificado correctamente',"+session.getAttribute("id")+")");
		}
		if(request.getParameter("linkfacebook")!=null){
			instruccion.execute("UPDATE links SET facebook='"+request.getParameter("facebook")+"'  WHERE idusuario='"+session.getAttribute("id")+"';");
			response.sendRedirect("busqueda1.jsp");
			instruccion.execute("INSERT INTO notificaciones (descripcion,idusuario) values ('link facebook modificado correctamente',"+session.getAttribute("id")+")");
		}
		if(request.getParameter("linkwhatsapp")!=null){
			instruccion.execute("UPDATE links SET whatsapp='"+request.getParameter("whatsapp")+"'  WHERE idusuario='"+session.getAttribute("id")+"';");
			response.sendRedirect("busqueda1.jsp");
			instruccion.execute("INSERT INTO notificaciones (descripcion,idusuario) values ('link whatsapp modificado correctamente',"+session.getAttribute("id")+")");
		}
		if(request.getParameter("linktwitter")!=null){
			instruccion.execute("UPDATE links SET twitter='"+request.getParameter("twitter")+"'  WHERE idusuario='"+session.getAttribute("id")+"';");
			response.sendRedirect("busqueda1.jsp");
			instruccion.execute("INSERT INTO notificaciones (descripcion,idusuario) values ('link twitter modificado correctamente',"+session.getAttribute("id")+")");
		}
		
	%>
	<!-- BARRA DE MENU -->	
	<!-- BARRA DE MENU -->	
	<nav style="position:relative;">
		    <div class="nav-wrapper  blue darken-3 col s12 m12 l12 " style="opacity:0.9;">
		    	 <div class="col s1 left ">
		 			<img class="tooltipped"data-position="bottom" data-tooltip="Alquilados Ya" src="img/logoarcoiris.png" class="circle  bg-white " height="55" style="margin-top: 3.5px; margin-left:5px;">
		 		</div>
		        <ul id="nav-mobile" class=" brand-logo sans-serif  hide-on-med-and-down flow-text ">
		         	<li><a href="#" >Bienvenido <%out.println(session.getAttribute("nombre"));%></a></li>
		        </ul>
		        
		        <ul class="col s12 m12 l6" style="opacity:0.0;">
		        	<li>aaaaaaaaaaaaaaaaaaaaaaaaaaaa</li>
		        </ul>
		        
		        <div class="brand-logo container center">
		        	<a href="#">
			        PERFIL
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
 	
 	
 	
 	
 		<!-- NOTIFICACIONES -->
		  <ul  id='dropdown1' class='dropdown-content' style="min-width: 25rem;  overflow:scroll;">
		  <%
		 
			 tabla = instruccion.executeQuery("select descripcion from notificaciones where idusuario= '"+session.getAttribute("id")+"'");
			 if(tabla.first()){
				 out.println(" <li><a href=\"#!\">"+tabla.getString("descripcion")+"</a></li>");
					out.println("<li class=\"divider\" tabindex=\"-1\"></li>");
				 while(tabla.next()){
						out.println(" <li><a href=\"#!\">"+tabla.getString("descripcion")+"</a></li>");
						out.println("<li class=\"divider\" tabindex=\"-1\"></li>");
					
				 }
				 tabla.close();
			 }else{
				 out.println(" <li><a href=\"#!\">No tienes notificaciones</a></li>");
					out.println("<li class=\"divider\" tabindex=\"-1\"></li>");
				}
			
		  	%>
		  </ul>
		  
<div class="row" style="margin-top:10px;">
	<div class="col s12" >
	<!-- COL S CELULAR COL M INTERMEDIO COL L CUANDO LA PAGINA ESTA NORMAL -->
	<!-- FOTO DE PERFIL Y DESCRIPCION -->
		<div class="col s12 l12 m12 card " style="height:305px;  ">
			<div class=" col s6 l3 m4" style="height:290px; width:290px;padding:40px;">
		          <img class="circle responsive-img"  style="height:100%;" src="img/fotoperfil.png" >
			</div>
			<div class="col s4 l6 m6 " style="height:280px;">
				<!-- NOMBRE Y APELLIDO -->
				<div class="col s12 l12 m12">
				<h4 class="sans-serif top"><center><%
											String nombre=String.valueOf(session.getAttribute("nombre"));
											String apellido=String.valueOf(session.getAttribute("apellido"));
											String resultado = nombre.toUpperCase().charAt(0) + nombre.substring(1, nombre.length()).toLowerCase();
											String resultado2 = apellido.toUpperCase().charAt(0) + apellido.substring(1, apellido.length()).toLowerCase();
											out.println(resultado + " " +resultado2 );
										%>
										
				</center></h4>
				</div>
				
				<!-- DESCRIPCION DOW -->
				<div class="col s12 l12 m12 sans-serif" style="height:105px">
				<%		if(session.getAttribute("descripcion")==null){
							out.println("<center><h4>Ingresa una Descripcion</h4></center>");	
						}else{
								out.println("<p><h6>" +session.getAttribute("descripcion") + "</h6>");
						}
					  %>
				</div>	  
				<div class="col s12 l12 m12 sans-serif" style="height:100px">
				<h5> <% if(session.getAttribute("localidad")==null){
								out.println("<h4>Ingresa una Localidad</h4>");	
						}else{
							out.println("<p>"+session.getAttribute("localidad")+", Buenos Aires."); 
						}
						%></h5>
				</div>
			
			</div>
			
			
			<!--  EL ICONO DE EDITAR DESCRIPCION NOMBRE APELLIDO Y EDITAR LOCALIDAD -->
			<div class="col l2  " style="height:50px">
			</div>
			<div  class=" col l2" >
		        <a href="#modaldatoss" class="btn-floating btn-large blue darken-3 modal-trigger" style="opacity:0.9;">
		    <i class="large material-icons" ">mode_edit</i>
		  </a>
			</div>
			
			<!-- EL MODAL DE EDITAR DESCRIPCION NOMBRE APELLIDO Y LOCALIDAD -->
			
					<div id="modaldatoss" class="modal">
						    <div class="modal-content">
						      <h4>Cambia tus datos</h4>
						      <form method="get" action="perfil.jsp">
						      	<p>Nombre
						      	<p><input type="text" value="<%out.println(session.getAttribute("nombre")); %>" class=" validate" required name="nombre">
						      	<p>Apellido
						      	<p><input type="text" value="<%out.println(session.getAttribute("apellido")); %>" class=" validate" required name="apellido">
						      	<p>Descripción
						      	<p><input type="text" value="<%out.println(session.getAttribute("descripcion")); %>" class=" validate" required name="descripcion">
						    	<p>Localidad
						    	<select name="localidad">
									
									      <option>Tortuguitas</option>
									
									      <option>Grand Bourg</option>
									
									      <option>Del Viso</option>
									
									      <option>Manuel Alberti</option>
									
									      <option>Tierras Altas</option>
									
								</select>
						    	<!-- <div class="file-field input-field">
								  <div class="file-field input-field">
								      <div class="btn">
								        <span>Cargar Imagen</span>
								        <input type="file" name="imagen">
								      </div>
								      <div class="file-path-wrapper col s8">
								        <input class="file-path validate" type="text">
								      </div>
								    </div>
							    </div>	
						    	 -->
						    	 <div class="modal-footer">
						      		<input type="submit" name="datos" value="Guardar" class="modal-close blue darken-3 btn-flat right" style="opacity:0.9;">
						    	</div>
						      </form>
						    </div>
						    <br>
						    <div class="modal-footer">
						      <a href="#!" class="modal-close blue darken-3 btn-flat" style="opacity:0.9;">Cancelar</a>
						    </div>
						  </div>
			
			
			
			<!-- LOS ICONOS DE REDES SOCIALES -->
			
			<!-- CODIGO PARA MOSTRAR LOS ICONOS COMO LINKS Y QUE FUNCIONEN -->
			<%/*
			 tabla = instruccion.executeQuery("select * from links where idusuario= '"+session.getAttribute("id")+"'");
			 if(tabla.first()){
				 	out.println("<div class=\"  col s2 l1 m2\" style=\"margin-top:60px;\">\r\n" + 
							"				  <div class=\" col s12 l12 m12 modal-trigger \"style=\"height:50px;\">\r\n" + 
							"		          	<a  href='"+tabla.getString("instagram")+"' class=\"modal-trigger\"><img src=\"img/instagram.png\" style=\"height:41px;\" title=\"Instagramee\"></a>\r\n" + 
							"		          </div>\r\n" + 
							"		          <div class=\" col s12 l12 m12\" style=\"height:50px;\">\r\n" + 
							"		          	<a  href='"+tabla.getString("facebook")+"' class=\"modal-trigger\"><img src=\"img/facebook.png\" style=\"height:41px;\"title=\"Facebook\"></a>\r\n" + 
							"		          </div>\r\n" + 
							"		          <div class=\" col s12 l12 m12\"style=\"height:50px;\">\r\n" + 
							"		          	<a  href='"+tabla.getString("twitter")+"' class=\"modal-trigger\"><img src=\"img/twiter.png\" style=\"height:41px;\" title=\"Twitter\"></a>\r\n" + 
							"		          </div>\r\n" + 
							"		          <div class=\" col s12 l12 m12\" style=\"height:50px;\">\r\n" + 
							"		          	<a  href='"+tabla.getString("whatsapp")+"'  class=\"modal-trigger\"><img src=\"img/whatsapp.png\" style=\"height:41px;\"title=\"Whatsapp\"></a>\r\n" + 
							"		          </div>		          \r\n" + 
							"			</div>");
			 }*/
			%>
			 <div class="  col s2 l1 m2" style="">
				  <div class=" col s12 l12 m12 modal-trigger "style="height:60px;">
		          	<a href="#modalinstagram"  class="modal-trigger"><img src="img/instagram.png" style="height:50px;" title="Instagram"></a>
		          </div>
		          <div class=" col s12 l12 m12" style="height:60px;">
		          	<a href="#modalfacebook" class="modal-trigger"><img src="img/facebook.png" style="height:47px;"title="Facebook"></a>
		          </div>
		          <div class=" col s12 l12 m12"style="height:60px;">
		          	<a href="#modaltwitter"class="modal-trigger"><img src="img/twiter.png" style="height:50px;" title="Twitter"></a>
		          </div>
		          <div class=" col s12 l12 m12" style="height:60px;">
		          	<a href="#modalwhatsapp"class="modal-trigger"><img src="img/whatsapp.png" style="height:50px;"title="Whatsapp"></a>
		          </div>		          
			</div> 
		</div>
			
						<!-- MODAL DE EDITAR LINKS DE REDES SOCIALES-->
							<%
								 tabla = instruccion.executeQuery("select * from links where idusuario= '"+session.getAttribute("id")+"'");
			 					if(tabla.first()){
			 						
			 				
			 				%>
			 					<form action="perfil.jsp" method="get">
									  <div id="modalinstagram" class="modal">
									    <div class="modal-content">
									      <h4>Cambiar link de Instagram</h4>
									      <form method="get" action="perfil.jsp">
									      	<input type="text" value="<%out.println(tabla.getString("instagram")); %>" class=" validate" required name="instagram">
									    	<div class="modal-footer" >
									      		<input type="submit" name="linkinstagram" value="Guardar"  style="opacity:0.9;" class="modal-close blue darken-3 btn-flat">
									    	</div>
									      </form>
									    </div>
									    <div class="modal-footer" >
									      <a href="#!"style="opacity:0.9;" class="modal-close blue darken-3 btn-flat">Cancelar</a>
									    </div>
									  </div>
									  
									  <div id="modalfacebook" class="modal">
									    <div class="modal-content">
									      <h4>Cambiar link de Facebook</h4>
									      <form method="get" action="perfil.jsp">
									      	<input type="text" value="<%out.println(tabla.getString("facebook")); %>" class=" validate" required name="facebook">
									    	<div class="modal-footer">
									      		<input type="submit" name="linkfacebook" value="Guardar"  style="opacity:0.9;" class="modal-close blue darken-3 btn-flat">
									    	</div>
									      </form>
									    </div>
									    <div class="modal-footer">
									      <a href="#!" style="opacity:0.9;" class="modal-close blue darken-3 btn-flat">Cancelar</a>
									    </div>
									  </div>
									  
									  <div id="modalwhatsapp" class="modal">
									    <div class="modal-content">
									      <h4>Cambiar número de WhatsApp</h4>
									      <form method="get" action="perfil.jsp">
									      	<input type="text" value="<%out.println(tabla.getString("whatsapp")); %>" class=" validate" required name="whatsapp">
									    	<div class="modal-footer">
									      		<input type="submit" name="linkwhatsapp" value="Guardar"  style="opacity:0.9;" class="modal-close blue darken-3 btn-flat">
									    	</div>
									      </form>
									    </div>
									    <div class="modal-footer">
									      <a href="#!" class="modal-close blue darken-3 btn-flat"style="opacity:0.9;">Cancelar</a>
									    </div>
									  </div>
									  
									  <div id="modaltwitter" class="modal">
									    <div class="modal-content">
									      <h4>Cambiar link de Twitter</h4>
									      <form method="get" action="perfil.jsp">
									      	<input type="text" value="<%out.println(tabla.getString("twitter")); %>" class=" validate" required name="twitter">
									    	<div class="modal-footer">
									      		<input type="submit" name="linktwitter" value="Guardar"  style="opacity:0.9;" class="modal-close blue darken-3 btn-flat">
									    	</div>
									      </form>
									    </div>
									    <div class="modal-footer">
									      <a href="#!" class="modal-close blue darken-3 btn-flat"style="opacity:0.9;">Cancelar</a>
									    </div>
									  </div>
									 </form>
							<%
							tabla.close();}%>
	<!-- LOS MENSAJES -->
	
		<div class="col s4 card  blue darken-3" style="height:500px;opacity:0.9;">
			<ul class="center sans-serif white-text left"><h4>Tus Comentarios</h4></ul>	
			<div class="row">
				<div class="col s12">
				<%
					if(session.getAttribute("id")!=null){
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
					 tabla=instruccion.executeQuery("select * from comentarios_perfil where idusuario= '"+session.getAttribute("id")+"'");
					 if(tabla.first()){
						 out.println("<div style=\"\" class=\"col s12 card white center sans-serif black-text\">\r\n" + 
									"					<p><h6>"+tabla.getString("descripcion")+"\r\n" + 
									"					</h6></div>");
						 	while(tabla.next()){
						 		 out.println("<div style=\"\" class=\"col s12 card white center sans-serif black-text\">\r\n" + 
											"					<p><h6>"+tabla.getString("descripcion")+"\r\n" + 
											"					</h6></div>");
						 	}
					 }else{
						 out.println("<div  class=\"col s12 card white sans-serif black-text\">\r\n" + 
									"					<p>No tienes comentarios en tus publicaciones \r\n" + 
									"					</div>");
					 }
						 	tabla.close();
					/* while(tabla.next()){
							 tabla2=instruccion.executeQuery("select nombre from usuario where idusuario='"+tabla.getString("idusuario_f")+"'");	
							 out.println("<div class=\"col s12 card\">\r\n" + 
										"					<p>"+ tabla2.getString("nombre") +"\r\n" + 
										"					</div>");
						 }*/
					 }else{
						 out.println("<div  class=\"col s12 card white sans-serif black-text\">\r\n" + 
									"					<p>No tienes comentarios en tus publicaciones \r\n" + 
									"					</div>");
					 }
		  	%>
					
				</div>
			</div>
		</div>
	<!-- ESPACIO SEPARADOR UWU -->	
		<div class="col s1 ">
			
		</div>		
	<!-- LAS PUBLICACIONES -->	
		<div class="col s7 card  blue darken-3 lighten-4" style="height:500px;overflow:scroll; opacity:0.9;">
			<ul class="left white-text"><h4>Tus Publicaciones</h4></ul>
			<!-- ACA EMPIEZA EL CODIGO DE LA PUBLICACION -->
			<%
				if(session.getAttribute("id")!=null){
					tabla=instruccion.executeQuery("select * from publicaciones where idusuario= '"+session.getAttribute("id")+"'");
					if(tabla.first()){
						out.println("<div class=\"row\" style=\"padding:10px;\">\r\n" + 
								"				<div class=\"col s12 white card\">\r\n" + 
								"					<div class=\"row\">\r\n" + 
								"						<div class=\"col s1\">\r\n" + 
								"								<i class=\"Large material-icons white-icon right\" style=\"padding-top:10px;\">location_on</i>\r\n" + 
								"						</div>\r\n" + 
								"						<div class=\"col s7 left black-text\" style=\"padding-top:2px;\">\r\n" + 
								"							<h6>"+tabla.getString("direccion")+", "+tabla.getString("localidad")+"</h6>\r\n" + 
								"							<p class=\"center white-text sans-serif\"><h4>"+tabla.getString("titulo")+"</h4></p>\r\n" + 
								"							<p>"+tabla.getString("descripcion")+"</p>\r\n" + 
								"						</div>\r\n" + 
								"						<div class=\"col s4\" style=\"height:240px; padding:12px;\">\r\n" + 
								"							<img class=\"responsive-img\" src=\"img/casa1.jpg\" style=\"height:100%\">\r\n" + 
								"						</div>\r\n" + 
								"						<div class=\"col s11\">\r\n" + 
								"							<a href=\"publicaciones.jsp\" class=\"blue-text center\">Ver publicación</a>\r\n" + 
								"						</div>\r\n" + 
								"					</div>\r\n" + 
								"				</div>\r\n" + 
								"			</div>");
						while(tabla.next()){
							out.println("<div class=\"row\" style=\"padding:10px;\">\r\n" + 
									"				<div class=\"col s12 white card\">\r\n" + 
									"					<div class=\"row\">\r\n" + 
									"						<div class=\"col s1\">\r\n" + 
									"								<i class=\"Large material-icons white-icon right\" style=\"padding-top:10px;\">location_on</i>\r\n" + 
									"						</div>\r\n" + 
									"						<div class=\"col s7 left black-text\" style=\"padding-top:2px;\">\r\n" + 
									"							<h6>"+tabla.getString("direccion")+", "+tabla.getString("localidad")+"</h6>\r\n" + 
									"							<p class=\"center white-text sans-serif\"><h4>"+tabla.getString("titulo")+"</h4></p>\r\n" + 
									"							<p>"+tabla.getString("descripcion")+"</p>\r\n" + 
									"						</div>\r\n" + 
									"						<div class=\"col s4\" style=\"height:240px; padding:12px;\">\r\n" + 
									"							<img class=\"responsive-img\" src=\"img/casa1.jpg\" style=\"height:100%\">\r\n" + 
									"						</div>\r\n" + 
									"						<div class=\"col s11\">\r\n" + 
									"							<a href=\"publicaciones.jsp\" class=\"blue-text center\">Ver publicación</a>\r\n" + 
									"						</div>\r\n" + 
									"					</div>\r\n" + 
									"				</div>\r\n" + 
									"			</div>");
						}
					}else{
						out.println("<div  class=\"col s12 card white sans-serif black-text\">\r\n" + 
								"					<p>No tienes publicaciones \r\n" + 
								"					</div>");
					}
			%>
			<!-- 	<div class="row" style="padding:10px;">
					<div class="col s12 white card">
						<div class="row">
							<div class="col s1">
									<i class="Large material-icons white-icon right" style="padding-top:10px;">location_on</i>
							</div>
							<div class="col s7 left black-text" style="padding-top:2px;">
								<h6>Alfredo Palacios 3677, Tortuguitas.</h6>
								<p class="center white-text sans-serif"><h4>Alquilo Casa re villera jo</h4></p>
								<p>Soy una persona que busca inquilinos que no me ocacionen problemas con el tiempo, ordenados y responsables, tengo m?s de cincuenta departamentos y locales, contactate estoy en busca de petes</p>
							</div>
							<div class="col s4" style="height:240px; padding:12px;">
								<img class="responsive-img" src="img/casa1.jpg" style="height:100%">
							</div>
							<div class="col s11">
								<a href="publicaciones.jsp" class="blue-text center">Ver publicación</a>
							</div>
						</div>
					</div>
				</div>
				 -->
			<%}else{
				out.println("<div  class=\"col s12 card white sans-serif black-text\">\r\n" + 
						"					<p>No tienes publicaciones \r\n" + 
						"					</div>");
			} %>
			<!-- ACA TERMINA EL CODIGO DE LA PUBLICACION -->
		</div>
	

<!-- ACA EMPIEZA EL DE LOS CONTACTOS -->

<div class="row">
	<div class="col s12" style="height:500px; opacity:0.9;">
		<div class="col s4 card  blue darken-3" style="opacity:0.9;">
				<ul class="center sans-serif white-text left"><h4>Tus Contactos</h4></ul>	
			<%
				int cont=0;
			int[] f={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
				tabla=instruccion.executeQuery("SELECT idusuariocontacto from contactos where idusuario="+session.getAttribute("id")+"");
				if(tabla.first()){
					f[cont]=tabla.getInt("idusuariocontacto");
					while(tabla.next()){
						cont++;
						f[cont]=(int)tabla.getInt("idusuariocontacto");	
					}
					tabla.close();	
					while(cont>=0){
						int id=f[cont];
						tabla=instruccion.executeQuery("SELECT idusuario,nombre,apellido from usuario where idusuario="+id+"");
						if(tabla.first()){
						out.println("<div class=\"row\" style=\"padding:5px;\">\r\n" + 
								"					<div class=\"card white col s12\">\r\n" + 
								"						<div class=\"col s3\" style=\"padding:5px; height:85px;\">\r\n" + 
								"							<img src=\"img/fotoperfil.png\" style=\"height:100%\"alt=\"\" class=\"circle responsive-img\"> \r\n" + 
								"						</div>\r\n" + 
								"						<div class=\"col s7\"style=\"padding-top:9px;\">\r\n" + 
								"							<p class=\"left sans-serif black-text\" ><h6>"+tabla.getString("nombre")+", "+ tabla.getString("apellido")+"</h6>\r\n" + 
								"						</div>\r\n" + 
								"						<div class=\"col s2\" style=\"padding-top:10px;\">\r\n" + 
								"							<a href=\"perfil.jsp?id="+tabla.getString("idusuario")+"\"><i class=\"material-icons small\">person</i></a>\r\n" + 
								"							<a href=\"perfil.jsp?id="+tabla.getString("idusuario")+"?delete=t\"><i class=\"material-icons small\">cancel</i></a>\r\n" + 
								"						</div>\r\n" + 
								"					</div>\r\n" + 
								"				</div>");
						}else{
							out.println(instruccion.executeQuery("SELECT idusuario,nombre,apellido from usuario where idusuario="+id+""));
						}
						tabla.close();
						cont--;
					}	
				
				}else{
					out.println("<div class=\"row\" style=\"padding:5px;\">\r\n" + 
							"					<div class=\"card white col s12\">\r\n" +  
							"						<div class=\"col s12\"style=\"\">\r\n" + 
							"							<p class=\"left sans-serif black-text\"><h5>No tenes contactos, vamos!</h5>\r\n" + 
							"						</div>\r\n" + 
							"					</div>\r\n" + 
							"				</div>");
				}
			%>
		</div>
		
		<!-- ESPACIO SEPARADOR -->
		<div class="col s1">
		</div>
<!-- ACA EMPIEZA EL DE LAS PUBLIS FAVORITAS -->		
		<div class="col s7 card  blue darken-3" style=" opacity:0.9;">
			<ul class="left white-text"><h4>Tus Publicaciones Favoritas</h4></ul>
			
		</div>
	</div>	
</div>			
			
			
			
			
			
	</div>
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
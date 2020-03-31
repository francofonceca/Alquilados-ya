<%@ page language="java" import="paqueteclases.*, java.util.List, java.io.*, java.util.*, java.net.*, java.sql.*" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"
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
    <div class="nav-wrapper teal lighten-1 col s12 m12 l12" style="opacity:0.9;">
  			 <ul id="nav-mobile" class="  sans-serif  hide-on-med-and-down flow-text right">
          <li><a href="#"><i class="material-icons">persona</i></a></li>
        </ul>
        
        <ul id="nav-mobile" class="  sans-serif  hide-on-med-and-down flow-text right">
          <li><a href="#">
          		<i class="material-icons input-field" style="margin-left:20px;">notifications</i>
          		</a>
          </li>
        </ul>
         <ul id="nav-mobile" class="  sans-serif  hide-on-med-and-down flow-text ">
          <li><a href="#">Bienvenido <%out.println(session.getAttribute("nombre")); %></a></li>
        </ul>
        <ul class="col s12 m12 l6" style="opacity:0.0;">
        	<li>aaaaaaaaaaaaaaaaaaaaaaaaaaaa</li>
        </ul>
       <!--   <ul class="flow-text blanco negrita col s12 m8 l4 ">
          <li>ALQUILADOS YA !</li></div>
        </ul>-->
        <div class="brand-logo container center">
	        ALQUILADOS YA !
        </div>
  
    </div>
  </nav>
  <!--  LA BARRA DE BUSQUEDA  -->
		<div class="container">
		<center>
		<div class="row" style="margin-top:20px;"> 
		<div class=" col m12 l12 s12">        
		<nav>
		    <div class="nav-wrapper">
			<form method="get" action="busquedaInt.jsp">
		         	<div class="input-field">
					<input id="search" type="search" name="search" required>
	         			<label class="label-icon" placeholder="search"><i class=" large material-icons">search</i></label>
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
				<%/*	
				if(request.getParameter("search")!=null){
				int cant=Integer.parseInt(request.getParameter("search"));
						publicacion muestra = new publicacion();
						for(int x=1;x<=cant;x++){
			 				out.println(muestra.getPublicacion());
						}
				}*/
				%>
			</div>
		</div>
		
	</div>
	<% 
	Connection canal = null; 
	ResultSet tabla= null; 
	Statement instruccion=null; 
	String strcon = "jdbc:mysql://localhost:3306/proyectodb?user=root&password=admin"; 
	String cadSQL = ""; 
	
	String mail = request.getParameter("email"); 
	String contra = request.getParameter("contra"); 
	int error=0;

try  
  { Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    canal=DriverManager.getConnection(strcon); 
    instruccion = canal.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, 
    ResultSet.CONCUR_UPDATABLE); 
  } catch(java.lang.ClassNotFoundException e){} catch(SQLException e) {}; 


 try{
		if(request.getParameter("search")!=null){
			String busqueda=request.getParameter("search");
			StringBuilder constructor = new StringBuilder();
			for (int x=0; x<busqueda.length(); x++){
				switch(busqueda.charAt(x)){
					case 'á':
						constructor.append('a');
						break;
					case 'é':
						constructor.append('e');
						break;
					case 'í':
						constructor.append('i');
						break;
					case 'ó':
						constructor.append('o');
						break;
					case 'ú':
						constructor.append('u');
						break;
					default:
						constructor.append(busqueda.charAt(x));
				}
			
			}
		String f=constructor.toString();
		int a=f.indexOf(' ');
		String[] tags  =f.split(" ");
		int p=0;
 		System.out.println(tags[0]);
	 tabla = instruccion.executeQuery("select * from tags");
	 int tam=tags.length;
	 for(int z=0;z <= tam; z++){
		 System.out.println(tags.length);
		 System.out.println(tags[0]);
		 System.out.println(tags[1]);
		 System.out.println("a");
	   	 while(tabla.next()){	 
		 	if (tags[z].equals(tabla.getString("etiqueta"))) {
		 			System.out.println("entrowhile");
	    	  		String contadors=tabla.getString("contadorbusqueda");
	    	  		int contadort=Integer.parseInt(contadors);
	    	  		contadort++;
					System.out.println(contadort);
	    	  		instruccion.executeUpdate("UPDATE tags SET contadorbusqueda="+ contadort +" WHERE etiqueta='"+ tags[z]+"'");
					System.out.println(contadort);
			 		out.println(tags[z]);
	    		}
	    }
   	 System.out.println(z);
   	 tabla.first();
	}
	} 
   }catch(SQLException e){};
	%>

 <!-- Dropdown Trigger -->
  <a class='dropdown-trigger btn' href='#' data-target='dropdown1'>Drop Me!</a>

  <!-- Dropdown Structure -->
  <ul id='dropdown1' class='dropdown-content'>
  <%
  notificacion mensaje= new notificacion();
  for(int x=1;x<=10;x++){
		out.println(mensaje.getNotificacion());
		out.println("<li class=\"divider\" tabindex=\"-1\"></li>");
	}
  	%>
    <!--  <li><a href="#!">one</a></li>
    <li><a href="#!">two</a></li>
    <li class="divider" tabindex="-1"></li>
    <li><a href="#!">three</a></li>
  </ul>-->
	 
    <script>
    
    document.addEventListener('DOMContentLoaded', function() {
    	var elems = document.querySelectorAll('.dropdown-trigger');
		var instances = M.Dropdown.init(elems, {
			alignment: 'center',
			coverTriger: false,
			inDuration: 300,
			outDuration: 300
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
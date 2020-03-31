<%@ page language="java" import="paqueteclases.*, java.util.List, java.io.*, java.util.*, java.net.*, java.sql.*" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"
   %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/materialize.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat|Roboto|Merriweather|Staatliches|Poppins|Ubuntu&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script type="text/javascript" src="js/materialize.js"></script>
    <script src="js/materialize.min.js"></script>
    <title>Alquilados Ya! Tu alquiler en un Click</title>
</head>
<body style="background-color:#eceff1!important ">
	<%
		String arafue = request.getParameter("afuera");
			if(arafue=="salir"){
		    	session.setAttribute("nombre",null);
		    	session.setAttribute("apellido",null);
		    	session.setAttribute("descripcion",null);
		    	session.setAttribute("id",null);
		    
			}else{
	%>
	<!-- EL NAVBAR -->
	<nav >
		    <div class="nav-wrapper   cyan darken-4 col s12 m12 l12" style="opacity:0.9;">
		        <div class="col s1 left ">
		 			<img src="img/logoarcoiris.png" class="circle  bg-white " height="55" style="margin-top: 3.5px; margin-left:5px;">
		 		</div>
		 		
		        <ul id="nav-mobile" class=" s12 m8 l4  sans-serif  hide-on-med-and-down flow-text">
		          <li><a href="registro.html" style="font-family:'Montserrat', serif;">Registrarse</a></li>
		        </ul>
		        <ul id="nav-mobile" class=" s12 m8 l4  sans-serif  hide-on-med-and-down flow-text">
		          <li><a href="index.html" style="font-family:'Montserrat', serif;">Iniciar Sesion</a></li>
		        </ul>
				
		       <!--  
		        <div class="s12 m8 l4 sans-serif   right">
		          <a style="font-family:'Merriweather', serif;">Iniciar Sesion o Registrate para continuar</a>
		        </div>
		 		
		        <div class="brand-logo container center">
			        ALQUILADOS YA !
		        </div>
		        --> 
		      </ul>
		    </div>
		  </nav>
		  <!-- TERMINA EL NAVBAR -->
		  

	<!-- EMPIEZA EL SLIDER DE INICIO -->
	<div class="carousel carousel-slider center" >
				    <div class="carousel-fixed-item center">
				    </div>
				    <div class="carousel-item fondo white-text" href="#one!">
				    		
				     		<div class="row col s12 cyan darken-4" style="margin-top:60px;height:285px; opacity:0.7;">
				     			
				     			<br>
				     			<p><h1 class="brand-logo center sans-serif white-text" style="font-size:100px;font-family:'Montserrat', serif;">Alquilados Ya!</h1>
				     			<p><h4 class="white-text" style="font-family:'Montserrat', serif;">El alquiler deseado a un solo click.</h4>
				     			<!-- <p><h5 class="white-text" >Tu alquiler deseado en una sola búsqueda.</h5> -->
				     		</div>
				    </div>
				    <div class="carousel-item white-text fondo" href="#two!">
				       <div class="row col s12 cyan darken-4" style="margin-top:60px;height:285px; opacity:0.7;">
				     			<p><h3 class="brand-logo  sans-serif white-text" style="font-size:100px;font-family:'Montserrat', serif;">Que es Alquilados ya?</h3>
				     			<p><h5 class="white-text" style="font-family:'Montserrat', serif;" >Alquilados ya! Es un buscador de alquileres de forma online.</h5>
								<p><h5 class="white-text center"style="font-family:'Montserrat', serif;">Desde tu ordenador podrás encontrar el alquiler que más te guste de manera sencilla y segura.</h5>
				       			<p><h5 class="white-text center"style="font-family:'Montserrat', serif;">Además, también podrás interactuar con otros usuarios ahorrándote más tiempo.</h5>
				       </div>
				    </div>
				    <div class="carousel-item white-text fondo" href="#three!">
				      <div class="row col s12 cyan darken-4" style="margin-top:60px;height:285px; opacity:0.7;">
				     			<p><h3 class="brand-logo  sans-serif white-text" style="font-size:100px;font-family:'Montserrat', serif;">Nuestro Buscador</h3>
				     			<p><h5 class="white-text"style="font-family:'Montserrat', serif;" >Alquilados ya! Cuenta con un buscador donde deberás colocar las características que debe tener el alquiler que deseas, incluyendo la zona, y también contamos con la opción de ingresar si queres que haya cerca algun Establecimiento como por ejemplo un hospital, escuela u otra Institución que necesites. Logrando así una búsqueda más eficaz y exitosa.</h5>
				       </div>
				    </div>
				    <div class="carousel-item fondo white-text" href="#four!">
				      <div class="row col s12 cyan darken-4" style="margin-top:60px;height:285px; opacity:0.7;">
				     		 	<p><h3 class="brand-logo  sans-serif white-text" style="font-size:86px;font-family:'Montserrat', serif;">Tus publicaciones</h3>
				     		 	<p><h5 class="white-text center"style="font-family:'Montserrat', serif;">En Alquilados ya! deberás ingresar la información del alquiler que deseas publicar, también podrás especificar que requisitos debe cumplir la persona para ser tu inquilino. De esta manera, tu publicación no será visible para aquellos que no cuentan con los requisitos deseados evitando futuros conflictos.</h5>
				      			<p><h5 class="white-text center"style="font-family:'Montserrat', serif;">Recibiras notificaciones si alguien vio algunas de tus publicaciones y
				      			También vas a poder recibir comentarios en la misma.</h5>
				      </div>	
				    </div>
				    <div class="carousel-item fondo white-text" href="#five!">
				      <div class="row col s12 cyan darken-4" style="margin-top:60px;height:285px; opacity:0.7;">
				     			<p><h4 class="brand-logo  sans-serif white-text" style="font-size:70px;font-family:'Montserrat', serif;">Un poco de lo que podrás hacer</h4>
				     			<p><h5 class="white-text"style="font-family:'Montserrat', serif;">En alquilados ya! Contas con la posibilidad de aceptar quienes podrán ver tus publicaciones, comentar en las publicaciones y/o perfiles de otros usuarios así como ellos a ti.</h5>
								<p><h5 class="white-text"style="font-family:'Montserrat', serif;">En tu perfil se encontrarán tus datos, en el mismo podrás colocar tus datos, como las redes sociales si es que así lo deseas..</h5>
				       			<p><h5 class="white-text"style="font-family:'Montserrat', serif;">Podés guardar publicaciones como favoritas en caso de que lo necesites y recibiras notificaciones por cada movimiento o cambio que hagas dentro de la Página.</h5>
				       </div>
				    </div>
				    <div class="carousel-item fondo white-text" href="#six!">
				      <div class="row col s12 cyan darken-4" style="margin-top:60px;height:285px; opacity:0.7;">
				    			<br>
				     			<p><h4 class="brand-logo  sans-serif white-text" style="font-size:100px;font-family:'Montserrat', serif;">Encontranos cómo</h4>
				     			<div class="col s12">
				     				 <i class="material-icons medium">markunread</i>
				     				 <p><h5 class="white-text"style="font-family:'Montserrat', serif;" >Alquiladosya@gmail.com</h5>
				     			</div>
				    	
				       </div>
				    </div>
			  </div>
<div class="row">
    <br>
    <br>
    
        
        <!--SEGUNDOS TRES SLIDERS-->
        
        
        <div class="row" style=" padding-top:30px;">
        <h4 class="center" style="font-family:'Poppins', sans-serif;">Recomendado en Alquiler de casas</h4>
        <br>
                <div class=" col s12" >
                <div class="slider">
                        <ul class="slides"  style="background-color:#eceff1!important ">
                            <!-- PRIMERAS TRES PUBLICACIONES DEL SLIDEEEEEEEER-->
                          <li>
                                                <div class="col s3 ">
                                                    <div class="card ">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa1.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">Tortuguitas alquiler</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3 ">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa2.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">Alquiler en Tortuguitas!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3 ">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa3.jfif">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3 ">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa4.jfif">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                          </li>
                          <!-- SEGUNDAS TRES PUBLICACIONES DEL SLIDERRR-->
                          <li>
                                                <div class="col s3 ">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa2.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">Tortuguitas alquiler</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3 ">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa6.jfif">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">Alquiler en Tortuguitas!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3 ">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/fondo2.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3 ">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa3.jfif">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                          </li>
                           <!-- TERCERAS TRES PUBLICACIONES DEL SLIDEEEEEEEER-->
	                           <li>
	                                <div class="col s3 ">
	                                    <div class="card">
	                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
	                                            <img class="activator responsive-img" src="img/casa2.jpg">
	                                        </div>
	                                        <div class="card-content">
	                                            <span class="card-title activator grey-text text-darken-4">Tortuguitas alquiler</span>
	                                            <center>
	                                                <p><a href="#">Ver perfil</a></p>
	                                            </center>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="col s3 ">
	                                    <div class="card">
	                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
	                                            <img class="activator responsive-img" src="img/casa6.jfif">
	                                        </div>
	                                        <div class="card-content">
	                                            <span class="card-title activator grey-text text-darken-4">Alquiler en Tortuguitas!</span>
	                                            <center>
	                                                <p><a href="#">Ver perfil</a></p>
	                                            </center>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="col s3 ">
	                                    <div class="card">
	                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
	                                            <img class="activator responsive-img" src="img/casa1.jpg">
	                                        </div>
	                                        <div class="card-content">
	                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
	                                            <center>
	                                                <p><a href="#">Ver perfil</a></p>
	                                            </center>
	                                        </div>
	                                    </div>
	                                </div>
	                                 <div class="col s3 ">
	                                    <div class="card">
	                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
	                                            <img class="activator responsive-img" src="img/casa3.jfif">
	                                        </div>
	                                        <div class="card-content">
	                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
	                                            <center>
	                                                <p><a href="#">Ver perfil</a></p>
	                                            </center>
	                                        </div>
	                                    </div>
	                                </div>
	                        </li>
                    </ul>
                </div>
            </div>
        </div>
 <h4 class="center" style="font-family:'Poppins', sans-serif;">Recomendado en Departamentos</h4>
     <br>
        <!--SEGUNDOS TRES SLIDERS-->
        <div class="row" >
                <div class=" col s12" >
                <div class="slider">
                        <ul class="slides" style="background-color:#eceff1!important ">
                            <!-- PRIMERAS TRES PUBLICACIONES DEL SLIDEEEEEEEER-->
                          <li>
                                                <div class="col s3 ">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa2.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">Tortuguitas alquiler</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3 ">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa1.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">Alquiler en Tortuguitas!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3 ">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa1.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                 <div class="col s3 ">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa1.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                          </li>
                          <!-- SEGUNDAS TRES PUBLICACIONES DEL SLIDERRR-->
                          <li>
                                                <div class="col s3">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa1.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">Tortuguitas alquiler</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa2.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">Alquiler en Tortuguitas!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/fondo2.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/fondo2.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                          </li>
                           <!-- TERCERAS TRES PUBLICACIONES DEL SLIDEEEEEEEER-->
                           <li>
                                <div class="col s3 ">
                                    <div class="card">
                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                            <img class="activator responsive-img" src="img/casa2.jpg">
                                        </div>
                                        <div class="card-content">
                                            <span class="card-title activator grey-text text-darken-4">Tortuguitas alquiler</span>
                                            <center>
                                                <p><a href="#">Ver perfil</a></p>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                                <div class="col s3 ">
                                    <div class="card">
                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                            <img class="activator responsive-img" src="img/casa1.jpg">
                                        </div>
                                        <div class="card-content">
                                            <span class="card-title activator grey-text text-darken-4">Alquiler en Tortuguitas!</span>
                                            <center>
                                                <p><a href="#">Ver perfil</a></p>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                                <div class="col s3 ">
                                    <div class="card">
                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                            <img class="activator responsive-img" src="img/casa1.jpg">
                                        </div>
                                        <div class="card-content">
                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
                                            <center>
                                                <p><a href="#">Ver perfil</a></p>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                                <div class="col s3 ">
                                    <div class="card">
                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                            <img class="activator responsive-img" src="img/casa1.jpg">
                                        </div>
                                        <div class="card-content">
                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
                                            <center>
                                                <p><a href="#">Ver perfil</a></p>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <h4 class="center" style="font-family:'Poppins', sans-serif;">Recomendado en Locales</h4>
        <br>
        <!--TERCER TRES SLIDERS-->
        <div class="row" >
                <div class=" col s12" >
                <div class="slider">
                        <ul class="slides"  style="background-color:#eceff1!important ">
                            <!-- PRIMERAS TRES PUBLICACIONES DEL SLIDEEEEEEEER-->
                          <li>
                                                <div class="col s3 ">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa2.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">Tortuguitas alquiler</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa1.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">Alquiler en Tortuguitas!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3 ">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa1.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3 ">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa1.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                          </li>
                          <!-- SEGUNDAS TRES PUBLICACIONES DEL SLIDERRR-->
                          <li>
                                                <div class="col s3">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa1.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">Tortuguitas alquiler</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/casa2.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">Alquiler en Tortuguitas!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3 ">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/fondo2.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col s3 ">
                                                    <div class="card">
                                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                                            <img class="activator responsive-img" src="img/fondo2.jpg">
                                                        </div>
                                                        <div class="card-content">
                                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
                                                            <center>
                                                                <p><a href="#">Ver perfil</a></p>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>
                          </li>
                           <!-- TERCERAS TRES PUBLICACIONES DEL SLIDEEEEEEEER-->
                           <li>
                                <div class="col s3">
                                    <div class="card">
                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                            <img class="activator responsive-img" src="img/casa2.jpg">
                                        </div>
                                        <div class="card-content">
                                            <span class="card-title activator grey-text text-darken-4">Tortuguitas alquiler</span>
                                            <center>
                                                <p><a href="#">Ver perfil</a></p>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                                <div class="col s3">
                                    <div class="card">
                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                            <img class="activator responsive-img" src="img/casa1.jpg">
                                        </div>
                                        <div class="card-content">
                                            <span class="card-title activator grey-text text-darken-4">Alquiler en Tortuguitas!</span>
                                            <center>
                                                <p><a href="#">Ver perfil</a></p>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                                <div class="col s3">
                                    <div class="card">
                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                            <img class="activator responsive-img" src="img/casa1.jpg">
                                        </div>
                                        <div class="card-content">
                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
                                            <center>
                                                <p><a href="#">Ver perfil</a></p>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                                 <div class="col s3">
                                    <div class="card">
                                        <div class="card-image waves-effect waves-block waves-light col s12" style="margin-top: 5px">
                                            <img class="activator responsive-img" src="img/casa1.jpg">
                                        </div>
                                        <div class="card-content">
                                            <span class="card-title activator grey-text text-darken-4">ALquiler Mensual!</span>
                                            <center>
                                                <p><a href="#">Ver perfil</a></p>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                        </li>
                    </ul>
                </div>
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


	 <%
	 }
	 %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
        	var elems = document.querySelectorAll('.slider');
            var instances = M.Slider.init(elems,{
                height:400,
    		interval:1400,
            });
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
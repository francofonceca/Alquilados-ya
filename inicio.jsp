<%@ page language="java" import="paqueteclases.*, java.util.List, java.io.*, java.util.*, java.net.*, java.sql.*" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"
   %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
  <!-- ICONOS  -->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- CLASES DE CSS  -->
    <link rel="stylesheet" href="css/materialize.css">
    <link rel="stylesheet" href="css/materialize.min.css">
    <title>Alquilados Ya! Tu alquiler en un Click</title>
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <script type="text/javascript" src="js/materialize.js"></script>
</head>
<body>
        <div class="navbar-fixed">
            <div class="teal">
                <div class="container">
                    <div class="nav-wrapper">
                        <a href="#" class="brand-logo">Alquilados YA!</a>
                        <a href="#" data-target="mobile-nav" class="sidenav-trigger">
                            <i class="material-icons">Menú</i>
                        </a>
                        <ul class="right hide-on-med-and-down">
                            <li>
                                <a href="#home">Home</a>
                            </li>
                            <li>
                                <a href="#search">Search</a>
                            </li>
                            <li>
                                <a href="#popular">Weas populares</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>




	
    <script>
        document.addEventListener('DOMContentLoaded', function() {
        var elems = document.querySelectorAll('.slider');
        var instances = M.Slider.init(elems,{
            height:400,
		interval:10000,
        });
        var elems = document.querySelectorAll('.sidenav');
		var instances=M.Sidenav.init(elems, options);
		var elems = document.querySelectorAll('select');
    	var instances = M.FormSelect.init(elems);
	});
	
    </script>
</body>
</html>
<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %> 
 
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
    	 tabla = instruccion.executeQuery("select * from usuario");
	    while(tabla.next()){	 
    	 	if ((mail.equals(tabla.getString("email"))) && (contra.equals(tabla.getString("contra")))){	
	    	  		session.setAttribute("id",tabla.getString("idusuario"));
	    	  		session.setAttribute("nombre", tabla.getString("nombre"));
	    	  		session.setAttribute("apellido", tabla.getString("apellido"));
	    	  		session.setAttribute("email", tabla.getString("email"));
	    	  		session.setAttribute("direccion", tabla.getString("direccion"));
	    	  		session.setAttribute("localidad", tabla.getString("localidad"));
	    	  		session.setAttribute("descripcion", tabla.getString("descripcion"));
	     			error=1;    
	    		}
	    }
	    
    }catch(SQLException e){};
    	if(error==0){
	    	response.sendRedirect("index.html");
	    	session.setAttribute("control",1);
	    }else{
	    	response.sendRedirect("busqueda1.jsp");
		}
    
     
 %>
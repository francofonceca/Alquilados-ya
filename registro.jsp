<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %> 
 
<%
		Connection canal = null; 
		ResultSet tabla= null; 
		Statement instruccion=null; 
		String strcon = "jdbc:mysql://localhost:3306/proyectodb?user=root&password=admin"; 
		String cadSQL = ""; 
		
		String mail = request.getParameter("email"); 
		int error=0;

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
   	
   	try{
   		tabla = instruccion.executeQuery("select * from usuario");
   		while(tabla.next()){
   			if(tabla.getString("email").equals(mail)){
   				error=1;
   				 
   		}
   	}
   		
   	}catch(SQLException e) {out.println(e);}
   	if(error==1){
	   	session.setAttribute("control",3);
   }else{
	   
   	instruccion.execute("INSERT INTO usuario (idusuario,nombre,apellido,dni,email,contra) values (null,'"+request.getParameter("nom") +"','"+request.getParameter("ape") +"','"+ request.getParameter("dni")+"','"+mail+"','"+request.getParameter("contra") +"')");
   	tabla = instruccion.executeQuery("select idusuario,nombre,descripcion,apellido,email from usuario where email='"+mail+"'");
   	tabla.first();
   	session.setAttribute("id", tabla.getString("idusuario"));
   	session.setAttribute("nombre", tabla.getString("nombre"));
   	session.setAttribute("descripcion", tabla.getString("descripcion"));
   	session.setAttribute("apellido", tabla.getString("apellido"));
   	session.setAttribute("email", tabla.getString("email"));
   	instruccion.execute("INSERT INTO links(idusuario, instagram,facebook,twitter,whatsapp) values ("+tabla.getString("idusuario")+",'https://www.instagram.com', 'https://www.facebook.com' , 'https://www.twitter.com' , 'https://www.whatsapp.com' )");
   	response.sendRedirect("busqueda1.jsp");
}	
%>
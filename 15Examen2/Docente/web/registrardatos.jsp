<%-- 
    Document   : registrardatos
    Created on : 18/04/2022, 10:45:34 PM
    Author     : cferg
--%>

<%@page contentType="text/html" language="java"
        import="java.sql.*, java.util.*, java.text.*" 
        pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        //esa codigo java
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
        
        String userName, URL, password, driver;
        
        URL = "jdbc:mysql://localhost/docente";
        userName = "Cinthya";
        password = "cecyt9jigc";
        driver = "com.mysql.jdbc.Driver";
        
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(URL, userName, password);
            
            try{
                //necesitamos los parametros
                String nom, appat, apmat, sex, fechanac;
                int numeroempleado;
                                
                nom = request.getParameter("nombre");
                appat = request.getParameter("appat");
                apmat = request.getParameter("apmat");
                sex = request.getParameter("sexo");
                numeroempleado = Integer.parseInt(request.getParameter("numempleado"));
                fechanac=request.getParameter("fechanac");

                set = con.createStatement();
                
                String q = "insert into docentereal"
                        + "values ("+nom+", '"+appat+"', '"+apmat+"', '"+sex+"', '"+numeroempleado+"','"+fechanac+"')";
                
                int registro = set.executeUpdate(q);
                
                %>
                 <h1>Registro del Docente Exitoso</h1>
                <%
            
            }catch(SQLException es){
                System.out.println("Error al registrar en la tabla");
                System.out.println(es.getMessage());
                %>
                 <h1>Error en el registro de la tabla</h1>
                <%
                
            }
        }catch(Exception e){
        System.out.println("Error al conectar BD");
        System.out.println(e.getMessage());
        %>
        <h1>No se conectó, chilla pues :C</h1>
        <%
        
        }
        
        
        
        
        
        %>
        
        <br>
        <a href="index.html" >Regresar a Principal</a>
    </body>
</html>
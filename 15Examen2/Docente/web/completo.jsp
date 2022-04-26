<%-- 
    Document   : completo
    Created on : 20/04/2022, 07:38:07 PM
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
        <link rel="stylesheet" a href="css/style.css">

    </head>
    <body>
        
        <table border="2">
            <thead>
                <tr>
                    
                    <th>Número</th>
                    <th>Problema</th>
                    <th>Número</th>
                    <th>Problema</th>
                    <th>Número</th>
                    <th>Problema</th>
                    <th>Número</th>
                    <th>Problema</th>
                    
                </tr>
            </thead>
            <tbody>
                
            
        
        
        
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
                String q = "select * from mcpu, mmouse, mteclado, mconfiguracion";
                
                set = con.createStatement();
                
                rs = set.executeQuery(q);
                
                while(rs.next()){
                
                %>
                <tr>
                    
                    <td><%=rs.getString("idMcpu")%></td>
                    <td><%=rs.getString("descripcion")%></td>
                    <td><%=rs.getString("idMmouse")%></td>
                    <td><%=rs.getString("descripcionmouse")%></td>
                    <td><%=rs.getString("idmteclado")%></td>
                    <td><%=rs.getString("descripcionteclado")%></td>
                    <td><%=rs.getString("idmconfiguracion")%></td>
                    <td><%=rs.getString("descripcionconfiguracion")%></td>
                    
                    
                </tr>
                <%
                    }
            }catch(SQLException es){
                System.out.println("Error al registrar en la tabla");
                System.out.println(es.getMessage());
                %>
                 <h1>Error al consultar la tabla de la tabla</h1>
                <%
                
            }
        }catch(Exception e){
        System.out.println("Error al conectar BD");
        System.out.println(e.getMessage());
        %>
        <h1>No conected T_T</h1>
        <%
        
        }
        
        
        
        
        
        %>
        </tbody>
        </table>
        <br>
        <a href="index.html" >Regresar a Principal</a>
        <br>
        <a href="registroalumno.jsp" >Registrar Nuevo Alumno</a>     
    </body>
</html>
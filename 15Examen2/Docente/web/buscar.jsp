<%-- 
    Document   : buscar
    Created on : 21/04/2022, 07:39:22 PM
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
        <div class="navbar">
            <input type="search" name="buscar" class="form-control">
            <input type="submit" name="accion">
            
        </div>
        <table border="2">
            <thead>
                <tr>
                    <th>Número de empleado</th>
                    <th>Nombre</th>
                    <th>Apellido Paterno</th>
                    <th>Apellido Materno</th>
                    <th>Sexo</th>
                    <th>Fecha de nacimiento</th>
                    <th>Editar</th>
                    <th>Borrar</th>
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
                int id = Integer.parseInt(request.getParameter("id"));
                String q = "select * from docentereal where num_empleado="+id;
                
                set = con.createStatement();
                
                rs = set.executeQuery(q);
                
                while(rs.next()){
                
                %>
                <tr>
                    <td><%=rs.getInt("num_empleado")%></td>
                    <td><%=rs.getString("nombre")%></td>
                    <td><%=rs.getString("appat")%></td>
                    <td><%=rs.getString("apmat")%></td>
                    <td><%=rs.getString("sexo")%></td>
                    <td><%=rs.getString("fechanacimiento")%></td>
                   
                    
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
        <a href="registrardatos.html" >Registrar</a>     
    </body>
</html>
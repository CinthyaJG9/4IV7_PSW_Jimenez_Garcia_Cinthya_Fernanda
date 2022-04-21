<%-- 
    Document   : registroalumno
    Created on : 4/04/2022, 03:25:10 PM
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
                String q = "select * from docentereal";
                
                set = con.createStatement();
                
                rs = set.executeQuery(q);
                
                while(rs.next()){
                
                %>
                <tr>
                    <td><%=rs.getInt("numempleado")%></td>
                    <td><%=rs.getString("nombre")%></td>
                    <td><%=rs.getString("appat")%></td>
                    <td><%=rs.getString("apmat")%></td>
                    <td><%=rs.getString("sex")%></td>
                    <td><%=rs.getString("fechanac")%></td>
                    <td><a href="editarperfil.jsp?id=<%=rs.getInt("boleta")%>" >Editar</a></td>
                    
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
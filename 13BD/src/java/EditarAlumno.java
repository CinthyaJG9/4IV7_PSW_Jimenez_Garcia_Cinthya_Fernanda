/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author cferg
 */
public class EditarAlumno extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
      
    private Connection con;
    private Statement set;
    private ResultSet rs;
    
    public void init (ServletConfig cfg) throws ServletException{
        
        //se define como se conecta a la base de datos
        String URL="jdbc:mysql:3306//localhost/alumnos"; //tipo de conector:manejador de base de datos::puerto//IP//nombrebd
        String userName="Cinthya";
        String password="cecyt9jigc";
        
        try{
            
           Class.forName("com.mysql.cj.jdbc.Driver");
           
           URL="jdbc:mysql://localhost/alumnos";
           con= DriverManager.getConnection(URL, userName, password);
           set=con.createStatement();
           
           System.out.println("Se conecto a la BD");
                      
        }catch(Exception e){
            
            System.out.println("No se conectaron :C");
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }
        
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     processRequest(request, response);
                

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Editar alumno</title>");            
            out.println("</head>");
            out.println("<body>");
            try{
                int bol;
                String nom, appat, apmat, tel;
                
                nom=request.getParameter("nombre");
                appat=request.getParameter("appat");
                apmat=request.getParameter("apmat");
                tel=request.getParameter("tel");
                bol=Integer.parseInt(request.getParameter("boleta"));
                
                //hacer query
                
                if(nom!= ""){
                    
                    String q = "update alumnobatiz set nombre='"+ nom + "' where boleta="+bol; 
                    set.executeUpdate(q);
                    System.out.println("Nombre modificado");
                }
                else if(appat!= ""){
                    
                    String q = "update alumnobatiz set nombre='"+ appat + "' where boleta="+bol; 
                    set.executeUpdate(q);
                    System.out.println("Apellido paterno modificado");
                }
                else if (apmat!= ""){
                    
                    String q = "update alumnobatiz set nombre='"+ apmat + "' where boleta="+bol; 
                    set.executeUpdate(q);
                    System.out.println("Apellido materno modificado");
                }
                else if(tel!= ""){
                    
                    String q = "update alumnobatiz set nombre='"+ tel + "' where boleta="+bol; 
                    set.executeUpdate(q);
                    System.out.println("Telefono modificado");
                }
                else{
                    
                    out.println("<h1>Verifique que haya ingresado datos<h1>");
                }
            }catch(Exception e){
                 System.out.println("Error al editar en la tabla");
                 out.println("<h1>Edici??n NO exitosa</h1>");
                 System.out.println(e.getMessage());
                 System.out.println(e.getStackTrace());
                
            }
           out.println("<a href='ConsultarAlumnos'> Consultar alumnos </a>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
        public void destroy(){
        try{
            con.close();
        }catch(Exception e){
            super.destroy();
        }
    }

}


<%//@ page import="com.utilitario.DataBaseHelper" %>
<%@ page import="java.util.*" %>

<%
   /* //realizo la consulta usando el DBHelper y el codigo queda simplificado


    String isbn= request.getParameter("isbn");
    System.out.println(request.getParameter("isbn"));
    String titulo= request.getParameter("titulo");
    String categoria= request.getParameter("categoria");
    String consultaSQL= "insert into Libros (isbn,titulo,categoria) values ";
    consultaSQL+= "('" +isbn+ "','" +titulo + "','" +categoria+"')";

    DataBaseHelper db= new DataBaseHelper();
    int filas=db.modificarRegistro(consultaSQL);
    response.sendRedirect("MostrarLibros.jsp");

    */
    System.out.println("holis");
  //  System.getproperty("java.classpath");
%>
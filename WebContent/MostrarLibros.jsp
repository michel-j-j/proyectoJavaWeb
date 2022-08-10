<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.List"%>
<%@ page import="com.Utilitarios.DataBaseHelper"%>
<!—omitimos cabeceraà
<body>
<%
	ResultSet rs = null;
	try {
		String consultaSQL = "select isbn,titulo,categoria from Libros";
		DataBaseHelper helper = new DataBaseHelper();
		rs = helper.seleccionarRegistros(consultaSQL);
		while (rs.next()) {
%>
<%=rs.getString("isbn")%>
<%=rs.getString("titulo")%>
<%=rs.getString("categoria")%>
<br />
<%
		}}
	catch (SQLException e) {
		System.out.println("Error accediendo a la base de datos"
				+ e.getMessage());
	} finally {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				System.out.println("Error cerrando el resultset"
						+ e.getMessage());
			}
		}
	}
%>
<a href="FormularioInsertarLibro.jsp">Insertar Libro</a>
</body>
</html>
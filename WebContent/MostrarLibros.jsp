<%@ page import="utilitario.DataBaseHelper" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<body>
<select name="categoria">
	<option value="seleccionar">seleccionar</option>
	<%
		ResultSet rs=null;
		try {
			String consultaSQL = "select distinct(categoria) from Libros";
			DataBaseHelper helper = new DataBaseHelper();
			helper.ver();
			rs=helper.seleccionarRegistros(consultaSQL);
			while(rs.next()) { %>
	<option value="<%=rs.getString("categoria")%>">
		<%=rs.getString("categoria")%></option>
	<% }
	}
	finally{
	}%>
</select>
</body>
</html>
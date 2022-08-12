import java.sql.*;

public class DataBaseHelper {
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/arquitecturajava?characterEncoding=utf8";
    private static final String USUARIO = "root";
    private static final String CLAVE = "";

    public DataBaseHelper(){
        super();
    }

    private Connection conectar() throws ClassNotFoundException, SQLException {   Connection conexion = null;
        Class.forName(DRIVER);
        conexion = DriverManager.getConnection(URL, USUARIO, CLAVE);
        return conexion;
    }
    public int modificarRegistro(String consultaSQL) {

        Connection conexion = null;
        Statement sentencia = null;
        int filasAfectadas = 0;
        try {
            conexion = conectar();
            sentencia = conexion.createStatement();
            filasAfectadas = sentencia.executeUpdate(consultaSQL);
        } catch (ClassNotFoundException e) {
            System.out.println("Error driver" + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Error de SQL" + e.getMessage());
        } finally {
            if (sentencia != null) {
                try {sentencia.close();} catch (SQLException e) {}
            }
            if (conexion != null) {
                try {conexion.close();} catch (SQLException e) {}
            }
        }

        return filasAfectadas;

    }
    public ResultSet seleccionarRegistros(String consultaSQL) {
        Connection conexion = null;
        Statement sentencia = null;
        ResultSet filas = null;
        try {
            Class.forName(DRIVER);
            conexion = DriverManager.getConnection(URL,

                    USUARIO, CLAVE);

            sentencia = conexion.createStatement();
            filas = sentencia.executeQuery(consultaSQL);
        } catch (ClassNotFoundException e) {
            System.out.println("Error Driver" + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Error de SQL " + e.getMessage());
        }
        return filas;
    }


    public void ver() {
        System.out.println("HOlaa");
    }
}
package co.com.soundMusic.Seguridad.Usuario;

import co.com.soundMusic.utilidades.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Santiago Medina Pelaez
 */
public class UsuarioDaoImpl implements IUsuarioDao {

    private Connection conexion;

    public UsuarioDaoImpl() {
        conexion = DBUtil.getConexion();
    }

    @Override
    public List<Usuario> obtenerUsuarios() throws SQLException {
        List<Usuario> listaUsuarios = new ArrayList<>();

        Statement stmt = conexion.createStatement();
        String sql = "SELECT ID_USUARIO,PRIMER_NOMBRE,SEGUNDO_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,\n"
                + "FECHA_CREACION,STATUS,ID_PERFIL_USUARIO,ID_LOGIN_USUARIO,ID_CONTACTO_USUARIO\n"
                + "FROM USUARIO";

        ResultSet rs = stmt.executeQuery(sql);

        // Se avanza el cursor de a una fila 
        // Cuando se alcalza el fin del cursor, la funcion retorna false
        while (rs.next()) {
            //Codigo para guardar los datos de las filas en 
            //modelo Usuario y agregar a la arraylist
        }

        stmt.close();
        return listaUsuarios;
    }

    @Override
    public Usuario obtenerUsuario(int idUsuario) throws SQLException {
        String sql = "SELECT ID_USUARIO,PRIMER_NOMBRE,SEGUNDO_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,\n"
                + "FECHA_CREACION,STATUS,ID_PERFIL_USUARIO,ID_LOGIN_USUARIO,ID_CONTACTO_USUARIO\n"
                + "FROM USUARIO\n"
                + "WHERE ID_USUARIO=?";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ps.setInt(0, idUsuario);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            //Codigo para guardar los datos de la consulta en
            //un objeto artista

        }
        Usuario usuario = new Usuario();
        return usuario;
    }

    @Override
    public void crearUsuario(Usuario usuario) throws SQLException {
        String sql = "INSERT INTO USUARIO (PRIMER_NOMBRE,SEGUNDO_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,\n"
                + "FECHA_CREACION,STATUS,ID_PERFIL_USUARIO,ID_LOGIN_USUARIO,ID_CONTACTO_USUARIO)\n"
                + "VALUES (?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps = conexion.prepareStatement(sql);

        //Codigo para guardar cada parametro de usuario en el
        // ps: ps.setString(1, usuario.getidUsuario());
        ps.executeUpdate();
    }

    @Override
    public void eliminarUsuario(int idUsuario) throws SQLException {
        String sql = "UPDATE USUARIO\n"
                + "SET STATUS=?\n"
                + "WHERE ID_USUARIO=?;";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ps.setInt(1, idUsuario);
        ps.executeUpdate();
    }

    @Override
    public void actualizarUsuario(Usuario usuario) throws SQLException {
        String sql = "UPDATE USUARIO\n"
                + "SET PRIMER_NOMBRE=?,SEGUNDO_NOMBRE=?,PRIMER_APELLIDO=?,SEGUNDO_APELLIDO=?,\n"
                + "FECHA_CREACION=?,STATUS=?,ID_PERFIL_USUARIO=?,ID_LOGIN_USUARIO=?,ID_CONTACTO_USUARIO=?\n"
                + "WHERE ID_USUARIO=?; ";
        PreparedStatement ps = conexion.prepareStatement(sql);

        //Codigo para guardar cada parametro de artista en el
        // ps: ps.setString(1, usuario.getidUsuario());
        ps.executeUpdate();
    }

}
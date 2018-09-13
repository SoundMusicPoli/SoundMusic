package co.com.soundMusic.Informes.LogAuditoria;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Santiago Medina Pelaez
 */
public interface ILogAuditoriaDao {

    List<LogAuditoria> obtenerLogAuditoria() throws SQLException;

    void crearLog(LogAuditoria logAuditoria) throws SQLException;
}

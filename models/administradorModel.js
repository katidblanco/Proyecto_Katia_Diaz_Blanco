var pool = require('./bd');


async function getAdministrador() {
    var query = 'select * from administrador';
    var rows = await pool.query(query);
    return rows;
}

async function deleteAdministradorById(id) {
    var query = 'delete from administrador where id = ?';
    var rows = await pool.query(query, [id]);
    return rows;
}

//abre insert ===========REVISADO M5U2 OK
async function insertAdministrador(obj) {
    try {
        var query = "insert into administrador set ?";
        var rows = await pool.query(query, [obj])
        return rows;
    } catch (error) {
        console.log(error);
        throw error;
    } //cierra catch
} //cierra insert

// traer los datos para modificar una sola publicacion

async function getAdministradorById(id) {
    var query = "select * from administrador where id=? ";
    var rows = await pool.query(query, [id]);
    return rows[0];
}

//UPDATE PUBLICACION
async function modificarAdministradorById(obj, id) {
    try {
      var query = "update administrador set ? where id=? ";
      var rows = await pool.query(query, [obj, id]);
      return rows;
    } catch (error) {
      throw error;
    }
  } //cierra update publicacion


module.exports = {getAdministrador, deleteAdministradorById, insertAdministrador, getAdministradorById, modificarAdministradorById} //REVISADO M5U2 OK
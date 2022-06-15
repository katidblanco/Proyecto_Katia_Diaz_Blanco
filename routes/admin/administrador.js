var express = require('express');
const pool = require('../../models/bd');//FALTABA....................
var router = express.Router();
var administradorModel = require('../../models/administradorModel');
var util = require('util'); 
var cloudinary = require('cloudinary').v2;
const uploader = util.promisify(cloudinary.uploader.upload);

/* GET home page. */
router.get('/', async function (req, res, next) {

  var administrador = await administradorModel.getAdministrador();

  administrador = administrador.map(novedad => { 
  if (novedad.img_id) {
    const imagen = cloudinary.image(novedad.img_id, {
      width: 80,
      height: 80,
      crop: 'fill'
    });
    return{
      ...novedad,
      imagen
    }
  } else {
    return{
      ...novedad,
      imagen:' '
    }
  }
  });

  res.render('admin/administrador', {
    layout: 'admin/layout',
    usuario: req.session.nombre,
    administrador
  });
});

//ELIMINAR PUBLICACION==========================================
router.get('/eliminar/:id', async (req, res, next) => {
  var id = req.params.id;

  await administradorModel.deleteAdministradorById(id);
  res.redirect('/admin/administrador')
});

// FORMULARIO AGREGAR PUBLICACION REVISADO M5U2 ok========================================== 

router.get('/agregar', (req, res, next) => {
  res.render('admin/agregar', { //agregar.hbs 
    layout: 'admin/layout'
  })
});  // cierra get agregar 

// agregar cuando toco el boton guardar=== REVISADO M5U2 OK
router.post('/agregar', async (req, res, next) => {
  try {
    var img_id = '';
    if (req.files && Object.keys(req.files).length > 0) {
      imagen = req.files.imagen;
      img_id = (await uploader(imagen.tempFilePath)).public_id;
    }


    if (req.body.titulo != "" && req.body.cuerpo != "") {
      await administradorModel.insertAdministrador({
        ...req.body,//spread
        img_id
      });

      res.redirect('/admin/administrador')
    } else {
      res.render('admin/agregar', {
        layout: 'admin/layout',
        error: true,
        message: 'Todos los campos son requeridos'
      })
    }
  } catch (error) {
    console.log(error)
    res.render('admin/agregar', {
      layout: 'admin/layout',
      error: true,
      message: 'No se cargo la publicación'
    })
  }
});
//cierra agregar cuando toco guardar

//Modificar publicacion REVISADO M5U2 OK
router.get('/modificar/:id', async (req, res, next) => {
  var id = req.params.id;
  var administrador = await administradorModel.getAdministradorById(id);

  res.render('admin/modificar', {
    layout: 'admin/layout',
    administrador
  });
}); //cierra modificar

//modificar publicación BOTON MODIFICAR
router.post('/modificar', async (req, res, next) => {
  try {
    var obj = {
      titulo: req.body.titulo,
      cuerpo: req.body.cuerpo
    }

    await administradorModel.modificarAdministradorById(obj, req.body.id);
    res.redirect('/admin/administrador');
  } catch (error) {
    console.log(error)
    res.render('admin/modificar', {
      layout: 'admin/layout',
      error: true,
      message: 'No se modificó la publicación'
    })
  }
}); // cierro botón modificar

module.exports = router;
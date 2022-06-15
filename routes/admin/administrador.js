var express = require('express');
const pool = require('../../models/bd');//FALTABA....................
var router = express.Router();
var administradorModel = require('../../models/administradorModel');
var util = require('util');
var cloudinary = require('cloudinary').v2;
var uploader = util.promisify(cloudinary.uploader.upload);
const destroy = util.promisify(cloudinary.uploader.destroy);

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
      return {
        ...novedad,
        imagen
      }
    } else {
      return {
        ...novedad,
        imagen: ' '
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

  let novedad = await administradorModel.getAdministradorById(id);
  if (novedad.img_id) {
    await (destroy(novedad.img_id));
  }

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
}); //cierra get modificar

//modificar publicación BOTON MODIFICAR
router.post('/modificar', async (req, res, next) => {
  try {
    let img_id = req.body.img_original;
    let borrar_img_vieja = false;

    if (req.body.img_delete === "1") {
      img_id = null;
      borrar_img_vieja = true;
    } else {
      if (req.files && Object.keys(req.files).length > 0) {
        imagen = req.files.imagen;
        img_id = (await uploader(imagen.tempFilePath)).public_id;
        borrar_img_vieja = true;
      }
    }
    if (borrar_img_vieja && req.body.img_original) {
      await (destroy(req.body.img_original));
    }

    var obj = {
      titulo: req.body.titulo,
      cuerpo: req.body.cuerpo,
      img_id
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
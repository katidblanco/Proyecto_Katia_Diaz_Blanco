var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer')
var administradorModel = require('../models/administradorModel');
var cloudinary = require('cloudinary').v2;
/* GET home page. */
router.get('/', async function (req, res, next) {

  var administrador = await administradorModel.getAdministrador();

  // empieza imagen====================================
  administrador = administrador.splice(0, 6); //seleccionamos los primeros 6 elementos del array
  administrador = administrador.map(novedad => {
    if (novedad.img_id) {
      const imagen = cloudinary.url(novedad.img_id, {
        width: 460,
        crop: 'fill'
      });
      return {
        ...novedad,
        imagen
      }
    } else {
      return {
        ...novedad,
        imagen: '/images/noimage.jpg'
      }
    }
  });
  // cierra imagen===================================
  res.render('publicaciones', {
    administrador
  });
});


router.post('/', async (req, res, next) => {

  var nombre = req.body.nombre;
  var apellido = req.body.apellido;
  var email = req.body.email;
  var telefono = req.body.tel;
  var mensaje = req.body.mensaje;

  console.log(req.body)

  var obj = {
    to: 'clasinformatica.dom@gmail.com',
    subject: 'CONTACTO desde la WEB clases de Informatica a domicilio',
    html: nombre + " " + apellido + " se contacto a traves  de  la  web y quiere más información a este correo: " + email + ". <br> Además, hizo este comentario: " + mensaje + ". <br> Su tel es " + telefono
  }
  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });

  var info = await transporter.sendMail(obj);

  res.render('index', {
    message: 'Mensaje enviado correctamente'
  });
});

module.exports = router;
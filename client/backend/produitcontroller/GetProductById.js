const Product = require('../models/ProduitsModel');

module.exports = (app) => {
  app.get('/produit/:id' , (req , res) =>{
    Product.findByPk(req.params.id) 
    .then(produit => {
      const message  = 'prduit trouver'
      res.json ({message , data : produit})
    })
  })
}
const express = require('express');
const cors = require('cors');
const fileUpload = require('express-fileupload');
const ProduitRoute = require('./routes/ProduitRoute') ;
const app = express();

app.use(cors());
app.use(express.json());
app.use(fileUpload());
app.use(ProduitRoute);


require('../backend/produitcontroller/GetProduct')(app)
require('../backend/produitcontroller/GetProductById') (app)

require('./routes/AddItemsCart')(app)
require('./routes/DeleteArticlePanier')(app)
require('./routes/commande')(app)
require('./routes/updateQtePanier')(app)
app.use (({res}) => {
    const message = 'imposible de trouver la ressource'
    res.status(404).json({message})
} )
app.listen(8000,()=> console.log('serveur en lecture'));

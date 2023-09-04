const Product = require('../models/ProduitsModel');

const saveProduct = async (req, res) => {
    if (req.files === null) return res.status(400).json({ msg: "pas d'image" });
    const nom_produit = req.body.nom_produit;
    const description_produit = req.body.description_produit;
    const prix_produit = req.body.prix_produit;
    const file = req.files.file;
    const filesize = file.data.length;
    const ext = path.extname(file.name);
    const fileName = file.md5 + ext;
    const url = `${req.protocol}://${req.get("host")}/images/${fileName}`;
    const allowedType = [".png", ".jpg", ".jpeg"];
    if (!allowedType.includes(ext.toLocaleLowerCase()))
      return res.status(422).json({ msg: "Image non valide" });
    if (filesize > 5000000)
      return res.status(422).json({ msg: "L'image doit etre inférieure à 5MB " });
  
    file.mv(`./public/images/${fileName}`, async (err) => {
      if (err) return res.status(500).json({ msg: err.message });
    });
    try {
      await Product.create({
        nom_produit: nom_produit,
        description_produit: description_produit,
        prix_produit: prix_produit,
         image_produit: fileName,
        url: url,
      });
   res.status(201).json({ msg: "Produit  créé avec succès" });
    } catch (error) {
      res.status(500).json({ msg: error.message });
    }
  };

  
  module.exports = {
    saveProduct
 };  
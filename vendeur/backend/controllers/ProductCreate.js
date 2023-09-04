const express = require('express');

const path = require('path');
const connection = require('./config/DataBase');

const router = express.Router();



// Route pour créer un nouveau produit pour un vendeur spécifique
router.post('/vendeurs/:id/produits', (req, res) => {
  try {
    const { nom_produit, description_produit, prix_produit,image_produit } = req.body;

    const vendeurId = req.params.id; // Récupérer l'ID du vendeur depuis les paramètres de la route

    // Construction de la requête SQL
    const query = 'INSERT INTO produits (nom_produit, description_produit, prix_produit, image_produit, vendeurId, created) VALUES (?, ?, ?, ?, ?, NOW())';
    const values = [nom_produit, description_produit, prix_produit, image_produit, vendeurId];

    // Exécution de la requête SQL
    connection.query(query, values, (error, results) => {
      if (error) {
        console.error(error);
        res.status(500).json({ message: 'Une erreur est survenue lors de la création du produit' });
      } else {
        res.status(201).json({ message: 'Produit créé avec succès' });
      }
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Une erreur est survenue lors de la création du produit' });
  }
});

module.exports = router;
const {  DataTypes,  UUIDV4 } = require("sequelize");
const {sequelize} = require("../config/Database");
const Vendeur = require ('./Vendeur')
// const { DataTypes } = Sequelize;

const Product = sequelize.define('produit', {
  id_produit: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement:true
    
  },
  nom_produit: {
    type: DataTypes.STRING,
    allowNull: false,
   
  },
  description_produit: {
    type: DataTypes.STRING,
    allowNull: false,
   
  },
  prix_produit: {
    type: DataTypes.INTEGER,
    allowNull: false,
   
  },
 
  
  image_produit: {
    type: DataTypes.STRING,
    allowNull: true,
   
  },
 
},
{                                                                
  timestamps: true,
  createdAt: 'created',
  updatedAt: false
}                                                             
);

Product.belongsTo(Vendeur)
Vendeur.hasMany(Product)


module.exports = Product;
(async () => {
  await sequelize.sync({alter:true})
})

import React, { useState } from 'react';
import axios from 'axios';
import jwt_decode from 'jwt-decode';
function FormProduct(){
const token = localStorage.getItem('token'); // Récupérer le token du localStorage
const decodedToken = jwt_decode(token); // Décoder le token pour obtenir les informations qu'il contient
const vendeurId = decodedToken.vendeurId; // Récupérer l'ID du vendeur à partir du token décodé
//  const [nom_produit, setNomProduit] = useState('');
//  const [description_produit, setDescriptionProduit] = useState('');
//  const [prix_produit, setPrixProduit] = useState(0);
//  const [image_produit, setSelectedImage] = useState(null);

 

  const [data, setData] = useState({
    nom_produit: '',
    description_produit: '',
    prix_produit: ' ',
    image_produit: '',
   
  });
   // definition du state qui conservera les le message en fonction de la reussite ou de l'echec de la requete
const [message, setMessage] = useState('');
    //execution de la requete
    function handleSubmit(event){
        event.preventDefault();
        
        axios.post(`http://localhost:5000/vendeurs/${vendeurId}/produits` , {
            nom_produit: data.nom_produit,
            description_produit: data.description_produit,
            prix_produit : data.prix_produit,
            image_produit: data.image_produit
         
        })
        .then(res =>{
            setMessage(res.data.message)
          
        }).catch(error => {
          setMessage(error.data.message)
        })
}
function handle(e){
    const newdata = {...data}
  newdata[e.target.id] = e.target.value
  setData(newdata)
  console.log(newdata)
  
}
console.log(data)
//   const handleFormSubmit = (event) => {
//     event.preventDefault()
  
//     const formData = new FormData();
//     formData.append('nom_produit', nom_produit);
//     formData.append('description_produit', description_produit);
//     formData.append('prix_produit', prix_produit);
//     formData.append('image_produit', image_produit);

//     axios.post(`http://localhost:5000/vendeurs/${vendeurId}/produits`, formData)
//       .then((response) => {
       
//         console.log(response.data);
//        console.log(formData)
//       })
//       .catch((error) => {
//         console.error(error);
       
//       });
//   };
// console.log(nom_produit)
    return(
        <div>
             <div class="main-content">

<div class="page-content">
    <div class="container-fluid">

     
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">Create Product</h4>

                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="javascript: void(0);">Ecommerce</a></li>
                            <li class="breadcrumb-item active">Create Product</li>
                        </ol>
                    </div>

                </div>
            </div>
        </div>

        <form id="createproduct-form" autocomplete="off" class="needs-validation" onSubmit={handleSubmit}>
            <div class="row">
                <div class="col-lg-8">
                    <div class="card">
                        <div class="card-body">
                            <div class="mb-3">
                                <label class="form-label" for="product-title-input">Product Title</label>
                                <input type="hidden" class="form-control" id="formAction" name="formAction" value="add"/>
                                <input type="text" class="form-control d-none" id="product-id-input"/>
                                <input type="text" class="form-control" id='nom_produit'  placeholder="Enter product title" required value={data.nom_produit}  onChange={(e) => handle(e)}/>
                                <div class="invalid-feedback">Please Enter a product title.</div>
                            </div>
                            {message}
                            <div>
                                <label>Product Description</label>

                                <div id="ckeditor-classic">
                                   <textarea id="description_produit" placeholder="décrivez votre produit en queles mots" class="col-lg-12" value={data.description_produit}  onChange={(e) => handle(e)}></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                

                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title mb-0">Product Gallery</h5>
                        </div>
                        <div class="card-body">
                            <div class="mb-4">
                                <h5 class="fs-14 mb-1">Product Image</h5>
            
                            </div>
                            <div>
                                <h5 class="fs-14 mb-1">Product Gallery</h5>
                                <p class="text-muted">Add Product Gallery Images.</p>

                                <div class="dropzone">
                                    <div class="fallback">
                                        <input  type="file" multiple="multiple" name="image_produit" id='image_produit'  onChange={(e) => handle(e)}/>
                                    </div>
                                    <div class="dz-message needsclick">
                                        <div class="mb-3">
                                            <i class="display-4 text-muted ri-upload-cloud-2-fill"></i>
                                        </div>

                                        <h5>Drop files here or click to upload.</h5>
                                    </div>
                                </div>

                                <ul class="list-unstyled mb-0" id="dropzone-preview">
                                    <li class="mt-2" id="dropzone-preview-list">
                                       
                                        <div class="border rounded">
                                            <div class="d-flex p-2">
                                                <div class="flex-shrink-0 me-3">
                                                    <div class="avatar-sm bg-light rounded">
                                                        <img data-dz-thumbnail class="img-fluid rounded d-block" src="#" alt="Product-Image" />
                                                    </div>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <div class="pt-1">
                                                        <h5 class="fs-14 mb-1" data-dz-name>&nbsp;</h5>
                                                        <p class="fs-13 text-muted mb-0" data-dz-size></p>
                                                        <strong class="error text-danger" data-dz-errormessage></strong>
                                                    </div>
                                                </div>
                                                <div class="flex-shrink-0 ms-3">
                                                    <button data-dz-remove class="btn btn-sm btn-danger">Delete</button>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                              
                            </div>
                        </div>
                    </div>
                    <div class="text-end mb-3">
                        <button type="submit" class="btn btn-success w-sm">Submit</button>
                    </div>
                </div>
               

                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title mb-0">Informations produit</h5>
                        </div>
                        <div class="card-body">
                            <div class="mb-3">
                                <label for="choices-publish-status-input" class="form-label">Prix</label>

                                <input class="form-select" id="prix_produit" type="number" placeholder="entrer le prix du produit"  value={data.prix_produit}  onChange={(e) => handle(e)}/>
                            </div>

                            <div class="card">
                        <div class="card-header">
                            <h5 class="card-title mb-0">Product Categories</h5>
                        </div>
                        <div class="card-body">
                            <p class="text-muted mb-2"> <a href="#" class="float-end text-decoration-underline">Add
                                    New</a>Select product category</p>
                            <select class="form-select" id="choices-category-input" name="choices-category-input" data-choices data-choices-search-false>
                                <option value="Appliances">Fruit</option>
                                <option value="Automotive Accessories">Automotive Accessories</option>
                                <option value="Electronics">Electronics</option>
                                <option value="Fashion">Fashion</option>
                                <option value="Furniture">Furniture</option>
                                <option value="Grocery">Grocery</option>
                                <option value="Kids">Kids</option>
                                <option value="Watches">Watches</option>
                            </select>
                        </div>
                       
                    </div>
                        </div>
                        
                    </div>
                 

                    <div class="card">
                    </div>
                </div>
               
            </div>
            

        </form>

    </div>
    
</div>


<footer class="footer">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-6">
                <script>document.write(new Date().getFullYear())</script> © Velzon.
            </div>
            <div class="col-sm-6">
                <div class="text-sm-end d-none d-sm-block">
                    Design & Develop by Themesbrand
                </div>
            </div>
        </div>
    </div>
</footer>
</div>
        </div>
    )
}
export default FormProduct;
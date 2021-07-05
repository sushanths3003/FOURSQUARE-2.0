//
//  PhotosViewController.swift
//  FoursquareApp
//
//  Created by Bhoomika H P on 02/07/21.
//

import UIKit

class PhotosViewController: UIViewController {
    
    var photo = [UIImage]()
    var imagePicker = UIImagePickerController()
   
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func addPhotos(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
        
    }
    

}

extension PhotosViewController: UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let img = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            photo.append(img)
        
            collectionView.dataSource = self
            collectionView.delegate = self
            self.collectionView.reloadData()
        }
        dismiss(animated: true, completion: nil)
    }
    
}

extension PhotosViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCells", for: indexPath) as? CollectionViewCell{
            
            //cell.Images.image = UIImage(named: photos[indexPath.row])
            cell.Images.image = photo[indexPath.row]
            return cell
        }
        return CollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("called did select")
        var displayImageViewControlle = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DisplayPhotoViewController") as! DisplayPhotoViewController
        let cell = collectionView.cellForItem(at: indexPath) as! CollectionViewCell
        self.navigationController?.pushViewController(displayImageViewControlle, animated: true)
        //present(displayImageViewControlle, animated: true, completion: nil)
        displayImageViewControlle.images = cell.Images.image
    }
    
    
}

//
//  UploadLibraryViewController.swift
//  origin
//
//  Created by Aanvi Koolwal on 6/19/21.
//

import UIKit

class UploadLibraryViewController: UIViewController{
    
    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    @IBAction func didTapButton(){
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
        
        
        
    }
}

extension UploadLibraryViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info:[UIImagePickerController.InfoKey: Any]){
        
        if let image = info[UIImagePickerController.InfoKey(rawValue:"UIImagePickerControllerEditedImage")] as? UIImage{
            imageView.image = image
        }
   
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
}

//
//  File.swift
//  origin
//
//  Created by Aanvi Koolwal on 6/19/21.
//

import UIKit

class ClickCameraViewController: UIViewController {
 
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.backgroundColor = .secondarySystemBackground
        
        let color = UIColor(named: "#D0CEAC")
        button.backgroundColor = color
        button.setTitle("Take Picture" ,
                        for: .normal)
        button.setTitleColor(.white ,
                        for: .normal)
    }
    
    @IBAction func didTapButton() {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = self
        present(picker, animated: true)
    }
}

extension ClickCameraViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated: true, completion: nil)
        
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            return
            
        }
        imageView.image = image
    }
    
}



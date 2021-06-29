//
//  ViewController.swift
//  Accessing Camera
//
//  Created by Kate Zhang on 6/28/21.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        imageView.image = UIImage(named: "Jail")
    }

    @IBAction func selfieTapped(_ sender: UIButton) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func libraryTapped(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]){
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            imageView.image = selectedImage
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }
}


//
//  SecondViewController.swift
//  FileManage
//
//  Created by İbrahim Ballıbaba on 26.05.2022.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    var choosenImage: String?
    var choosenLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        title = choosenImage
        
        //viewController da yaptığımız navigation işlemini geçersiz kılan kod satırı
        navigationItem.largeTitleDisplayMode = .never
        
        
        // bar kısmında sağ tarafa bir buton eklemesi yapıyor.
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(boxEditing))
        
        if let loadImage = choosenImage {
            imageView.image = UIImage(named: loadImage)
        }
        textLabel.text = choosenLabel
        
    }
    
    @objc func boxEditing(){
        
        guard let image = imageView.image?.jpegData(compressionQuality: 0.8)
        else{
            print("no found image")
            return
        }
        
        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
        
    }
    



}

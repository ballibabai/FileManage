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

        // Do any additional setup after loading the view.
        if let loadImage = choosenImage {
            imageView.image = UIImage(named: loadImage)
        }
        textLabel.text = choosenLabel
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

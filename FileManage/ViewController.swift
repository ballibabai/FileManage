//
//  ViewController.swift
//  FileManage
//
//  Created by İbrahim Ballıbaba on 26.05.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var photoArray = [String]()
    var selectedPhoto: String?
    var selectedLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                // this is a picture to load!
                photoArray.append(item)
            }
            
            
            
        }


    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Pictures", for: indexPath)
        cell.textLabel?.text = photoArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photoArray.count
    }
    
    
    // ikinci storyboard ın identifierine "second" yazdık ve ona göre didSelect altında cast ettik.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Second") as? SecondViewController {
            
            vc.choosenImage = photoArray[indexPath.row]
            vc.choosenLabel = photoArray[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
        
        
    }
    
  

}

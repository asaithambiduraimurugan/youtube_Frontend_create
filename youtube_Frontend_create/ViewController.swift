//
//  ViewController.swift
//  youtube_Frontend_create
//
//  Created by mymac on 03/10/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var models = [Model]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        models.append(Model(text: "first", imageName: "one"))
        tabelview.register(collectionTableViewCell.nib(), forCellReuseIdentifier: collectionTableViewCell.identifier)
       
        tabelview.dataSource = self
        tabelview.delegate = self
    }

    @IBOutlet weak var tabelview: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "collectionTableViewCell", for: indexPath) as! collectionTableViewCell
        
       
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
    
    struct Model{
        let text: String
        let imageName: String
        init(text: String, imageName: String) {
            self.text = text
            self.imageName = imageName
        }
    }
}


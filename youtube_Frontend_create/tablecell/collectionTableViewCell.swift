//
//  collectionTableViewCell.swift
//  youtube_Frontend_create
//
//  Created by mymac on 04/10/23.
//

import UIKit
class collectionTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    var models = [Model]() // Use an array to store multiple Model instances
    
    static let identifier = "collectionTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "collectionTableViewCell", bundle: nil)
    }
    
    @IBOutlet var collectionview: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionview.delegate = self
        collectionview.dataSource = self
        collectionview.register(myCollectionViewCell.nib(), forCellWithReuseIdentifier: myCollectionViewCell.identifier)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: myCollectionViewCell.identifier, for: indexPath) as! myCollectionViewCell
        
       // cell.configure(with: models[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250, height: 250)
    }
    
    struct Model {
        let text: String
        let imageName: String
        
        init(text: String, imageName: String) {
            self.text = text
            self.imageName = imageName
        }
    }
}

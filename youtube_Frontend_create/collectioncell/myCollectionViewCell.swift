//
//  myCollectionViewCell.swift
//  youtube_Frontend_create
//
//  Created by mymac on 04/10/23.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var mylabel: UILabel!
    @IBOutlet var myimageview: UIImageView!
    
    static let identifier = "myCollectionViewCell"
    
    
    
    static func nib() -> UINib{
        return UINib(nibName: "myCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    public func configure(with model: Model) {
        self.mylabel.text = model.text
        self.myimageview.image = UIImage(named: model.imageName)
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

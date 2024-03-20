//
//  oneTableViewCell.swift
//  youtube_Frontend_create
//
//  Created by mymac on 03/10/23.
//

import UIKit

class oneTableViewCell: UITableViewCell {

    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var image3: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

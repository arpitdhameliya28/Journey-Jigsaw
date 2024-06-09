//
//  PlaceTableCell.swift
//  Journey Jigsaw
//
//  Created by Arpit Dhameliya on 02/03/24.
//

import UIKit

class PlaceTableCell: UITableViewCell {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var ImageName: UILabel!
    @IBOutlet weak var ImageDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.ImageView.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
      
    }

}

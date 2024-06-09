//
//  HomeTableCell.swift
//  Journey Jigsaw
//
//  Created by Arpit Dhameliya on 07/03/24.
//

import UIKit

class HomeTableCell: UITableViewCell {

    @IBOutlet weak var View: UIView!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var ImageName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.View.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
       
    }
    
}

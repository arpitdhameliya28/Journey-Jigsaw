//
//  PlaceShowVC.swift
//  Journey Jigsaw
//
//  Created by Arpit Dhameliya on 02/03/24.
//

import UIKit

class PlaceShowVC: UIViewController {

    @IBOutlet weak var BackBtn: UIButton!
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var ImageName: UILabel!
    @IBOutlet weak var ImageDescription: UILabel!
    @IBOutlet weak var ImageLocation: UILabel!
    
    var imageview = UIImage()
    var imagename = ""
    var imagedescription = ""
    var imagelocation = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        ImageView.image = imageview
        ImageName.text = imagename
        ImageDescription.text = imagedescription
        ImageLocation.text = imagelocation
        
    }
    
    @IBAction func BackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)

    }
    
}

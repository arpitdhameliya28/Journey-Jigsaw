//
//  AboutVC.swift
//  Journey Jigsaw
//
//  Created by Arpit Dhameliya on 02/03/24.
//

import UIKit

class AboutVC: UIViewController {

    @IBOutlet weak var BackBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func BackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

}

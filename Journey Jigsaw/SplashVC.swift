//
//  SplashVC.swift
//  Journey Jigsaw
//
//  Created by Arpit Dhameliya on 04/03/24.
//

import UIKit

@available(iOS 13.0, *)
class SplashVC: UIViewController {
    
    @IBOutlet weak var Logo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.Logo.layer.cornerRadius = self.Logo.frame.height / 2
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "HomeVC")
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}

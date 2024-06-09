//
//  SettingVC.swift
//  Journey Jigsaw
//
//  Created by Arpit Dhameliya on 02/03/24.
//

import UIKit
import StoreKit

@available(iOS 13.0, *)
class SettingVC: UIViewController {

    @IBOutlet weak var AboutApp: UIButton!
    @IBOutlet weak var ShareApp: UIButton!
    @IBOutlet weak var RateApp: UIButton!
    @IBOutlet weak var BackBtn: UIButton!
    
    var BaseURL = ""
    var AppName = Bundle.main.infoDictionary?[kCFBundleNameKey as String] as? String

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.AboutApp.layer.cornerRadius = 25
        self.ShareApp.layer.cornerRadius = 25
        self.RateApp.layer.cornerRadius = 25
        
    }

    @IBAction func BackBtn(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func AboutApp(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "AboutVC")
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func ShareApp(_ sender: UIButton) {
        print("Tapped Share", AppName ?? "")
        guard let appName = AppName else { return }
        self.share(items: [appName, URL.init(string: BaseURL) as Any])
    }
    
    
    @available(iOS 14.0, *)
    @IBAction func RateApp(_ sender: Any) {
        rateUs()
    }
    
    @available(iOS 14.0, *)
    func rateUs() {
        if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
            DispatchQueue.main.async {
                SKStoreReviewController.requestReview(in: scene)
            }
        } else {
            print(" - - - - - - Rating view in not present - - - -")
        }
    }
    
    func share(items : [Any]) {
        let activityController = UIActivityViewController(activityItems: items, applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = self.view
        self.present(activityController, animated: true, completion: nil)
    }
    
    
}


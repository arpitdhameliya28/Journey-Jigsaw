//
//  HomeVC.swift
//  Journey Jigsaw
//
//  Created by Arpit Dhameliya on 05/03/24.
//

import UIKit

@available(iOS 13.0, *)
class HomeVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var Setting: UIButton!
    @IBOutlet weak var TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.TableView.delegate = self
        self.TableView.dataSource = self
        self.TableView.register(UINib(nibName: "HomeTableCell", bundle: nil), forCellReuseIdentifier: "HomeTableCell")
        
    }
    

    @IBAction func Setting(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "SettingVC")
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ImageArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableCell") as! HomeTableCell
        
        Cell.ImageView.image = UIImage(named: ImageArr[indexPath.row])
        Cell.ImageName.text = NameArr[indexPath.row]
        Cell.contentView.layer.cornerRadius = 15
        
        return Cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "PlaceVC") as! PlaceVC
        
        vc.countryname = CountryArr[indexPath.row]
        Selected_Country = NameArr[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

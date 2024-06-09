//
//  PlaceVC.swift
//  Journey Jigsaw
//
//  Created by Arpit Dhameliya on 02/03/24.
//

import UIKit

class PlaceVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var CountryName: UILabel!
    @IBOutlet weak var BackBtn: UIButton!
    @IBOutlet weak var TableView: UITableView!
    
    var countryname = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.TableView.delegate = self
        self.TableView.dataSource = self
        
        self.CountryName.text = countryname
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "PlaceTableCell") as! PlaceTableCell
        
        if Selected_Country == "India" {
            Cell.ImageDescription.text = India().ImageDescriptionArr[indexPath.row]
            Cell.ImageName.text = India().ImageNameArr[indexPath.row]
            Cell.ImageView.image = UIImage(named: "\(India().ImageArr[indexPath.row])")
            
        } else if Selected_Country == "Canada" {
            Cell.ImageDescription.text = Canada().ImageDescriptionArr[indexPath.row]
            Cell.ImageName.text = Canada().ImageNameArr[indexPath.row]
            Cell.ImageView.image = UIImage(named: "\(Canada().ImageArr[indexPath.row])")
            
        } else if Selected_Country == "Australia" {
            Cell.ImageDescription.text = Australia().ImageDescriptionArr[indexPath.row]
            Cell.ImageName.text = Australia().ImageNameArr[indexPath.row]
            Cell.ImageView.image = UIImage(named: "\(Australia().ImageArr[indexPath.row])")
            
        } else if Selected_Country == "United States of America" {
            Cell.ImageDescription.text = USA().ImageDescriptionArr[indexPath.row]
            Cell.ImageName.text = USA().ImageNameArr[indexPath.row]
            Cell.ImageView.image = UIImage(named: "\(USA().ImageArr[indexPath.row])")
            
        } else if Selected_Country == "United Arab Emirates" {
            
            Cell.ImageDescription.text = UAE().ImageDescriptionArr[indexPath.row]
            Cell.ImageName.text = UAE().ImageNameArr[indexPath.row]
            Cell.ImageView.image = UIImage(named: "\(UAE().ImageArr[indexPath.row])")
            

        }
        

        return Cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PlaceShowVC") as! PlaceShowVC
        
        if Selected_Country == "India" {
            
            vc.imageview = UIImage(named: "\(India().ImageArr[indexPath.row])")!
            vc.imagename = "\(India().ImageNameArr[indexPath.row])"
            vc.imagedescription = "\(India().ImageDescriptionArr[indexPath.row])"
            vc.imagelocation = "\(India().ImageLocation[indexPath.row])"
            
        } else if Selected_Country == "Canada" {
            
            vc.imageview = UIImage(named: "\(Canada().ImageArr[indexPath.row])")!
            vc.imagename = "\(Canada().ImageNameArr[indexPath.row])"
            vc.imagedescription = "\(Canada().ImageDescriptionArr[indexPath.row])"
            vc.imagelocation = "\(Canada().ImageLocation[indexPath.row])"
            
        } else if Selected_Country == "Australia" {
            
            vc.imageview = UIImage(named: "\(Australia().ImageArr[indexPath.row])")!
            vc.imagename = "\(Australia().ImageNameArr[indexPath.row])"
            vc.imagedescription = "\(Australia().ImageDescriptionArr[indexPath.row])"
            vc.imagelocation = "\(Australia().ImageLocation[indexPath.row])"
            
        } else if Selected_Country == "United States of America" {
            
            vc.imageview = UIImage(named: "\(USA().ImageArr[indexPath.row])")!
            vc.imagename = "\(USA().ImageNameArr[indexPath.row])"
            vc.imagedescription = "\(USA().ImageDescriptionArr[indexPath.row])"
            vc.imagelocation = "\(USA().ImageLocation[indexPath.row])"
            
        } else if Selected_Country == "United Arab Emirates" {
            
            vc.imageview = UIImage(named: "\(UAE().ImageArr[indexPath.row])")!
            vc.imagename = "\(UAE().ImageNameArr[indexPath.row])"
            vc.imagedescription = "\(UAE().ImageDescriptionArr[indexPath.row])"
            vc.imagelocation = "\(UAE().ImageLocation[indexPath.row])"
            
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 182
    }
    

    @IBAction func BackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

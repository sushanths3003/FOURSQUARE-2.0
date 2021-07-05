//
//  SearchViewController.swift
//  FoursquareApp
//
//  Created by Bhoomika H P on 29/06/21.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var nearMe: CustomSearchBar!
    @IBOutlet weak var search: CustomSearchBar!
    @IBOutlet weak var nearPlace: UITextField!
    @IBOutlet weak var searchPlace: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    let newLayer = CAGradientLayer()
    var heightNotSet = true
    var screenHeight: CGFloat = 0.0
    var name: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
       // self.tableView.rowHeight = 80
//        newLayer.frame = view.frame
//        newLayer.locations = [0, 1]
//        newLayer.startPoint = CGPoint(x: 0.5, y: 0)
//        newLayer.endPoint = CGPoint(x: 0.5, y: 1)
//        view.layer.insertSublayer(newLayer, at: 0)
//
       // let searchImage = UIImage(named: "serch_hdpi")!
       // let nearmeImage = UIImage(named: "near_me_hdpi")!
      //  searchPlace.addLeftImage(txtField: searchPlace, andImage: searchImage)
       // nearPlace.addLeftImage(txtField: nearPlace, andImage: nearmeImage)
        
       // nearMe.setImage(UIImage(named: "map"), for: .search, state: .normal)
      //  search.setImage(UIImage(named: "searcgIcon"), for: .search, state: .normal)
        //nearMe.setImage(UIImage(named: "logo"), for: .search, state: .normal)
        // Do any additional setup after loading the view.
        print("sushanth from search city")
    }
    
    override func viewDidLayoutSubviews() {
       //  super.viewDidLayoutSubviews()
//         newLayer.frame = view.bounds
//           if UIDevice.current.orientation.isLandscape && heightNotSet {
//                screenHeight = scrollView.frame.size.width
//                heightNotSet = false
//
//            } else if heightNotSet {
//                screenHeight = scrollView.frame.size.height
//             print( screenHeight)
//                heightNotSet = false
//            }
//
//     let heightConstraint = NSLayoutConstraint(item: contentView ?? "nil"  , attribute: NSLayoutConstraint.Attribute
//            .height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: screenHeight)
//
//            contentView.addConstraint(heightConstraint)
//
       }
}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return FeaturesList.allCases.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
      
            return 195
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SearchedListTableViewCell {
            
            cell.cityName.text = "Udupi"
            cell.cityImage.image = UIImage(named: "1")
            
            return cell
        } else {
            
            return SearchedListTableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath) as! SearchedListTableViewCell
        print(cell.cityName.text)
        cell.cityName.textColor = UIColor.colorForSeletedFeatureLabel()
        //cell.selectButton.toggle()
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! SearchedListTableViewCell
        print(cell.cityName.text)
        cell.cityName.textColor = UIColor.colorForNormalFeatureLabel()
    }
}

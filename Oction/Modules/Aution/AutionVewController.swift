//
//  AutionVewController.swift
//  Oction
//
//  Created by Shibin Moideen on 7/28/17.
//  Copyright © 2017 Shibin Moideen. All rights reserved.
//

import UIKit
import TZSegmentedControl

class AutionVewController: UIViewController {

    @IBOutlet weak var auctionTableView: UITableView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let titleCont = TZSegmentedControl(sectionTitles: ["CURRENT","UPCOMING"])
        titleCont.frame = CGRect(x: 0, y: 50, width: self.view.frame.width, height: 50)
        self.view.addSubview(titleCont)
        
        auctionTableView.register(UINib(nibName: "AuctionCurrentItemCell", bundle: Bundle.main), forCellReuseIdentifier: AUCTION_CURRENT_ITEM_CELL)
        auctionTableView.register(UINib(nibName: "AuctionUpcomingItemCell", bundle: Bundle.main), forCellReuseIdentifier: AUCTION_UPCOMING_ITEM_CELL)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func segmentValueChanged(_ sender: Any) {
        if segmentControl.selectedSegmentIndex == 0 {
            auctionTableView.separatorStyle = .none
        }
        else {
            auctionTableView.separatorStyle = .singleLine
        }
        auctionTableView.reloadData()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}

extension AutionVewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell.init()
        
        if segmentControl.selectedSegmentIndex == 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: AUCTION_CURRENT_ITEM_CELL, for: indexPath) as! AuctionCurrentItemCell
        }
        else {
            cell.preservesSuperviewLayoutMargins = false
            cell.separatorInset = UIEdgeInsets.zero
            cell.layoutMargins = UIEdgeInsets.zero
            cell = tableView.dequeueReusableCell(withIdentifier: AUCTION_UPCOMING_ITEM_CELL, for: indexPath) as! AuctionUpcomingItemCell
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        var height = 120
        if segmentControl.selectedSegmentIndex == 0 {
            height = 300
        }
        
        return CGFloat(height)
    }
}

//
//  AutionVewController.swift
//  Oction
//
//  Created by Shibin Moideen on 7/28/17.
//  Copyright © 2017 Shibin Moideen. All rights reserved.
//

import UIKit

class AutionVewController: UIViewController {

    @IBOutlet weak var auctionTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        auctionTableView.register(UINib(nibName: "AuctionCurrentItemCell", bundle: Bundle.main), forCellReuseIdentifier: AUCTION_CURRENT_ITEM_CELL)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        let cell = tableView.dequeueReusableCell(withIdentifier: AUCTION_CURRENT_ITEM_CELL, for: indexPath) as! AuctionCurrentItemCell
        cell.titleLabel?.text = "Sample"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

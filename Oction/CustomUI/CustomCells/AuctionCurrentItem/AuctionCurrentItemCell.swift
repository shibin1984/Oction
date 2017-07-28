//
//  AuctionCurrentItemCell.swift
//  Oction
//
//  Created by Shibin Moideen on 7/28/17.
//  Copyright © 2017 Shibin Moideen. All rights reserved.
//

import UIKit

class AuctionCurrentItemCell: UITableViewCell {

    @IBOutlet weak var borderView: UIView!
    @IBOutlet weak var actionItemImageView: UIImageView!
    @IBOutlet weak var auctionProgressBarView: UIProgressView!
    @IBOutlet weak var remainingTimeLabel: UILabel!
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemRetailPriceLabel: UILabel!
    @IBOutlet weak var itemAuctionPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        borderView?.layer.borderWidth = 0.35
        borderView?.layer.borderColor = UIColor.lightGray.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

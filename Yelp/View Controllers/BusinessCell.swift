//
//  BusinessCell.swift
//  Yelp
//
//  Created by mac on 2/24/17.
//  Copyright © 2017 CoderSchool. All rights reserved.
//

import UIKit
import AFNetworking

class BusinessCell: UITableViewCell {

    @IBOutlet weak var businessImageView: UIImageView!
    @IBOutlet weak var businessNameLabel: UILabel!
    @IBOutlet weak var businessdDistanceLabel: UILabel!
    @IBOutlet weak var businessReviewCountLabel: UILabel!
    @IBOutlet weak var businessReviewImageView: UIImageView!
    @IBOutlet weak var businessAddressLabel: UILabel!
    @IBOutlet weak var businessCategoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadDataFromModel(_ business: Business) {
        if let imageUrl = business.imageURL {
            businessImageView.setImageWith(imageUrl)
        }
        if let ratingImageUrl = business.ratingImageURL {
            businessReviewImageView.setImageWith(ratingImageUrl)
        }
        businessNameLabel.text = business.name
        businessdDistanceLabel.text = business.distance
        businessReviewCountLabel.text = "\(business.reviewCount!) reviews"
        
        businessAddressLabel.text = business.address
        businessCategoryLabel.text = business.categories
        
    }

}

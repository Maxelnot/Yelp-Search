//
//  BusinessCell.swift
//  Yelp
//
//  Created by Cong Tam Quang Hoang on 14/02/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var restRatings: UIImageView!
    @IBOutlet weak var restDistance: UILabel!
    @IBOutlet weak var restPhoto: UIImageView!
    @IBOutlet weak var restName: UILabel!
    @IBOutlet weak var restAddress: UILabel!
    @IBOutlet weak var restTags: UILabel!
    @IBOutlet weak var restReview: UILabel!
    
    var business: Business! {
        didSet {
            restName.text = business.name
            restName.sizeToFit()
            if business.imageURL != nil {
            restPhoto.setImageWith(business.imageURL!)
            }
            restTags.text = business.categories
            restAddress.text = business.address
            restReview.text = "\(business.reviewCount!) Reviews"
            restRatings.setImageWith(business.ratingImageURL!)
            restDistance.text = business.distance
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        restPhoto.layer.cornerRadius = 5
        restPhoto.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  AseanTableViewCell.swift
//  Asean
//
//  Created by Ricki Bin Yamin on 15/07/20.
//  Copyright © 2020 Ricki Bin Yamin. All rights reserved.
//

import UIKit

class AseanTableViewCell: UITableViewCell {

    @IBOutlet weak var roundView: UIView!
    @IBOutlet weak var photosImageView: UIImageView!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var languageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        roundView.layer.cornerRadius = 10
        roundView.clipsToBounds = true
        
        languageLabel.layer.cornerRadius = 6
        languageLabel.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

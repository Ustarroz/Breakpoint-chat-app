//
//  FeedCell.swift
//  breakpoint
//
//  Created by robin ustarroz on 08/11/2017.
//  Copyright © 2017 robin ustarroz. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var feedCellContentLbl: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.feedCellContentLbl.text = content
    }
}

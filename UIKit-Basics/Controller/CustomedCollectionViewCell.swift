//
//  CustomedCollectionViewCell.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 20/6/23.
//

import UIKit

class CustomedCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var labelCell: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .systemGray6
        labelCell.font = UIFont.boldSystemFont(ofSize: 13)
        labelCell.textColor = .red
    }

}

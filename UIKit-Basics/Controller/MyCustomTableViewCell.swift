//
//  MyCustomTableViewCell.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 7/3/23.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {

    // OUTLETS
    @IBOutlet weak var labelCell: UILabel!
    @IBOutlet weak var chevronCell: UIImageView!
    
    // LIFE CYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // PROPERTIES AND CONFIGURATIONS
        labelCell.font = UIFont(name: "SFUIDisplay-Bold", size: 20)
        labelCell.textColor = .green
        
        backgroundColor = .red
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        print(labelCell.text ?? "")
    }
    
}

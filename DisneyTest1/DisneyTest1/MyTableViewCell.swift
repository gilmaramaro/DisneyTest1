//
//  MyTableViewCell.swift
//  DisneyTest1
//
//  Created by Gilmar Amaro on 07/04/23.
//

import UIKit
import SDWebImage

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupDisneyCell(disneyCell: Datum?) {
        myLabel.text = disneyCell?.name
        let urlImage = URL(string: disneyCell?.imageURL ?? "")
        myImage.sd_setImage(with: urlImage)
    }
}

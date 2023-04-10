//
//  VideoGameTableViewCell.swift
//  DisneyTest1
//
//  Created by Gilmar Amaro on 10/04/23.
//

import UIKit

class VideoGameTableViewCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel1: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setupVideoGameCell(game: Datum?) {
        let urlImage = URL(string: game?.imageURL ?? "")
        myImage.sd_setImage(with: urlImage)
        myLabel1.text = game?.name
    }
}

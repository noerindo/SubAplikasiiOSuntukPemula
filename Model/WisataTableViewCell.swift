//
//  WisataTableViewCell.swift
//  SubIOSDicoding
//
//  Created by Indah Nurindo on 16/06/21.
//

import UIKit

class WisataTableViewCell: UITableViewCell {

    @IBOutlet weak var photoWisata: UIImageView!
    @IBOutlet weak var nameWisata: UILabel!
    @IBOutlet weak var lokasiWisata: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

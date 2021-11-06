//
//  DetailViewController.swift
//  SubIOSDicoding
//
//  Created by Indah Nurindo on 16/06/21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var nameWisata: UILabel!
    @IBOutlet weak var descWisata: UITextView!
    @IBOutlet weak var lokasiWisata: UILabel!
    @IBOutlet weak var photoWisata: UIImageView!
    var wisata: Wisata?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let result = wisata {
            photoWisata.image = result.photoWisata
            nameWisata.text = result.nameWisata
            lokasiWisata.text = result.lokasi
            descWisata.text = result.descriptionWisata
        }
    }
}

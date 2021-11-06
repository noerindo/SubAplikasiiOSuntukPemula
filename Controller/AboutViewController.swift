//
//  AboutViewController.swift
//  SubIOSDicoding
//
//  Created by Indah Nurindo on 16/06/21.
//

import UIKit

class AboutViewController: UIViewController {
    @IBOutlet weak var poto: UIImageView!
    @IBOutlet weak var nama: UILabel!
    @IBOutlet weak var alamat: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        poto.image = UIImage(named: "4cc39632-936f-47d2-ad98-56b22c15db51")
        nama.text = "INDAH NURINDO"
        alamat.text = "jl.Telaga Tujuh, RT/RW 001/001, Karimun, Kepulauan Riau"
    }
}


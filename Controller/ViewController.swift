//
//  ViewController.swift
//  SubIOSDicoding
//
//  Created by Indah Nurindo on 16/06/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wisataTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        wisataTableView.dataSource = self
        wisataTableView.delegate = self

        wisataTableView.register(UINib(nibName: "WisataTableViewCell", bundle: nil), forCellReuseIdentifier:"WisataCell")
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wisatas.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WisataCell", for: indexPath) as? WisataTableViewCell {
        let wisata = wisatas[indexPath.row]
            tableView.deselectRow(at: indexPath, animated: true)
            cell.nameWisata.text = wisata.nameWisata
            cell.photoWisata.image = wisata.photoWisata
            cell.lokasiWisata.text = wisata.lokasi
            cell.photoWisata.layer.cornerRadius = cell.frame.height / 3
            cell.photoWisata.clipsToBounds = true
            return cell
        }
        else {
            return UITableViewCell()
        }
    }
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
            detail.wisata = wisatas[indexPath.row]
            self.navigationController?.pushViewController(detail, animated: true)
        }
}





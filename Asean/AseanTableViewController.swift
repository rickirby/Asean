//
//  AseanTableViewController.swift
//  Asean
//
//  Created by Ricki Bin Yamin on 15/07/20.
//  Copyright © 2020 Ricki Bin Yamin. All rights reserved.
//

import UIKit

class AseanTableViewController: UITableViewController {
    
    // 1. Deklarasi Variabel untuk data
    var data: [Country] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 2. Mengambil data dari DataManager
        data = DataManager.shared.fetchData()
        
        // Mengatur warna pada Navigation Bar
        setNavBarColor(self, backgroundColor: UIColor(red: 58/255, green: 84/255, blue: 108/255, alpha: 1), textColor: .white, tintColor: .white)
    }

    // MARK: - Table view data source

    // 3. Function untuk mengatur banyaknya section. Untuk table view kali ini adalah 1
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    // 4. Function untuk mengatur banyaknya baris. Sesuaikan dengan banyaknya data.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }

    // 5. Function untuk mengatur isi tiap baris table view.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AseanCell", for: indexPath) as! AseanTableViewCell
        let dataForCurrentIndex = data[indexPath.row]
        cell.countryLabel.text = dataForCurrentIndex.country
        cell.capitalLabel.text = dataForCurrentIndex.capital
        cell.photosImageView.image = dataForCurrentIndex.photos[0]
        cell.flagImageView.image = dataForCurrentIndex.flag
        cell.languageLabel.text = dataForCurrentIndex.language
        cell.descriptionLabel.text = dataForCurrentIndex.information

        return cell
    }

}

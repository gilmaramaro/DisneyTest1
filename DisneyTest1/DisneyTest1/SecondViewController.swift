//
//  SecondViewController.swift
//  DisneyTest1
//
//  Created by Gilmar Amaro on 10/04/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var disneyChar: Disney?
    let request = Request()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupRequestDisney()
    }
    
    func setupTableView() {
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
        let UINIB = UINib(nibName: "MyTableViewCell", bundle: nil)
        myTableView.register(UINIB, forCellReuseIdentifier: "Cell")
    }
    
    func setupRequestDisney() {
        request.requestDisney { disney in
            self.disneyChar = disney
            self.myTableView.reloadData()
        }
    }
}

extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return disneyChar?.data?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyTableViewCell {
            cell.setupDisneyCell(disneyCell: disneyChar?.data?[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}

extension SecondViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let myScreenThree = self.storyboard?.instantiateViewController(withIdentifier: "screenThree") as? ThirdViewController {
            self.present(myScreenThree, animated: true)
        }
    }
}

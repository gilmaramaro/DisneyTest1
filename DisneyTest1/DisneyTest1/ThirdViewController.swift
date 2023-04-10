//
//  ThirdViewController.swift
//  DisneyTest1
//
//  Created by Gilmar Amaro on 10/04/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var arrayVideoGame: Disney?

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension ThirdViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrayVideoGame?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       if let cell = tableView.dequeueReusableCell(withIdentifier: "CellGame", for: indexPath) as? VideoGameTableViewCell {
           cell.setupVideoGameCell(game: arrayVideoGame?.data?[indexPath.row])
           
        }
        return UITableViewCell()
    }
    
    
}

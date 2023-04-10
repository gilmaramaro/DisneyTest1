//
//  ViewController.swift
//  DisneyTest1
//
//  Created by Gilmar Amaro on 07/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    let request = Request()
    
    @IBOutlet weak var myTextField1: UITextField!
    @IBOutlet weak var myTextField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func myButton(_ sender: Any) {
        let email = myTextField1.text ?? ""
        let password = myTextField2.text ?? ""
        request.requestLogin(email: email, Password: password) { sucess in
            if sucess {
                self.setupSecondScreen()
            } else {
                self.errorMessage()
            }
        }
    }
    
    func errorMessage() {
        let alert = UIAlertController(title: "error", message: "error Login", preferredStyle: .alert)
        let buttonOk = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(buttonOk)
        self.present(alert, animated: true)
    }
    
    func setupSecondScreen() {
        if let disneyScreen = self.storyboard?.instantiateViewController(withIdentifier: "secondScreen") {
            self.present(disneyScreen, animated: true)
        }
    }
}


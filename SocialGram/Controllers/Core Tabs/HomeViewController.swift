//
//  ViewController.swift
//  SocialGram
//
//  Created by Vivek  Garg on 15/12/24.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()
        
    }

    private func handleNotAuthenticated() {
        
        if Auth.auth().currentUser == nil {
            // Show login screen
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: true)
        }
    }
}


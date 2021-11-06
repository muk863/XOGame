//
//  HomeViewController.swift
//  XO-game
//
//  Created by username on 06.11.2021.
//  Copyright © 2021 plasmon. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func vsComputerButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: .none)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "gameScreen") as? GameViewController else { return }
        vc.vsAI = true
        self.present(vc, animated: true, completion: .none)
    }
    
    @IBAction func vsPlayerButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: .none)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "gameScreen") as? GameViewController else { return }
        vc.vsAI = false
        self.present(vc, animated: true, completion: .none)
    }
    
}

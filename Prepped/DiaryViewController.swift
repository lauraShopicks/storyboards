//
//  DiaryViewController.swift
//  Prepped
//
//  Created by Laura Evans on 8/16/17.
//  Copyright © 2017 Caroline Begbie. All rights reserved.
//

import UIKit

class DiaryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func showPopup(_ sender: Any) {
        let popupScene = PopupViewController.instantiate(fromAppStoryboard: .Popup)
        present(popupScene, animated: true, completion: nil)
    }
}

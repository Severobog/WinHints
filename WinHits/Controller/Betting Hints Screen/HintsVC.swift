//
//  HintsVC.swift
//  WinHits
//
//  Created by Демид Стариков on 20.07.2022.
//

import UIKit

class HintsVC: UIViewController {
 
    override func viewDidLoad() {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bgimage")
        self.view.insertSubview(backgroundImage, at: 0)
    }
}


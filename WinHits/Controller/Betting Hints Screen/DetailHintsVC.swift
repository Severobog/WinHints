//
//  DetailHintsVC.swift
//  WinHits
//
//  Created by Демид Стариков on 03.08.2022.
//

import UIKit

class DetailHintsVC: UIViewController {

    @IBOutlet weak var HintLabel: UILabel!
    @IBOutlet weak var HintText: UITextView!
    
    var hintLabelText = ""
    var hintMainText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HintLabel.text = hintLabelText
        HintText.text = hintMainText
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bgimage")
        self.view.insertSubview(backgroundImage, at: 0)
    }

}

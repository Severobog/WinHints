//
//  HintsVC.swift
//  WinHits
//
//  Created by Демид Стариков on 20.07.2022.
//

import UIKit

class HintsVC: UIViewController {
    var imageView: UIImageView = {
            let imageView = UIImageView(frame: .zero)
            imageView.image = UIImage(named: "bg")
            imageView.contentMode = .scaleToFill
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()

        override func viewDidLoad() {
            super.viewDidLoad()

            view.insertSubview(imageView, at: 0)
            NSLayoutConstraint.activate([
                imageView.topAnchor.constraint(equalTo: view.topAnchor),
                imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
        }
}


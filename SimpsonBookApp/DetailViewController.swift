//
//  DetailViewController.swift
//  SimpsonBookApp
//
//  Created by Mac on 26.12.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    var selectedModel:SimsonModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let model = selectedModel {
            imageView.image=model.image
            nameLabel.text = model.name
            jobLabel.text = model.job
        }
    }
    
}

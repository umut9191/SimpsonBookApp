//
//  SimsonModel.swift
//  SimpsonBookApp
//
//  Created by Mac on 26.12.2021.
//

import UIKit

class SimsonModel {
    var name:String
    var image:UIImage
    var job:String
    
    init(nameInit:String,imageInit:UIImage,jobInit:String) {
        self.name = nameInit
        self.image = imageInit
        self.job = jobInit
    }
}

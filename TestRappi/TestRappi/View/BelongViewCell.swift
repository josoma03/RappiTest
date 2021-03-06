//
//  BelongViewCell.swift
//  TestRappi
//
//  Created by Jhonattan Solarte Martinez on 20/11/18.
//  Copyright © 2018 Rappi. All rights reserved.
//

import Foundation
import UIKit

class BelongViewCell: UITableViewCell {
    
    @IBOutlet weak var lblBelongsName: UILabel!
    @IBOutlet weak var imgBelongs1: UIImageView!
    @IBOutlet weak var imgBelongs2: UIImageView!
    
    func initWithEntity(objBelogns: Belongs_to_collection)
    {
        lblBelongsName.textColor = Utils.getColorFontBranding()
        lblBelongsName.text = objBelogns.Name
        if(objBelogns.Name != ""){
            let urlPoster = NSURL(string: "\(Constants.ImageURL)/\(Constants.PosterSizes[1])\(objBelogns.Poster_path)")
            let urlBackdrop = NSURL(string: "\(Constants.ImageURL)/\(Constants.PosterSizes[1])\(objBelogns.Backdrop_path)")
            imgBelongs1.imageFromUrl((urlPoster?.absoluteString)!)
            imgBelongs2.imageFromUrl((urlBackdrop?.absoluteString)!)
        }
    }
}

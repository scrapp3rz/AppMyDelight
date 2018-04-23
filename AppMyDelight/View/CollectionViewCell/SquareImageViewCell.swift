//
//  SquareImageViewCell.swift
//  AppMyDelight
//
//  Created by vincent portier on 23/04/2018.
//  Copyright © 2018 vincent portier. All rights reserved.
//

import UIKit


let SQUARE_IMAGE_VIEW_CELL = "SquareImageViewCell"

class SquareImageViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImageView: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configureWithFilter(filter: String, image: UIImage) {
        ImageView.image = image
        ImageView.contentMode = .scaleAspectFill
        ImageView.clipsToBounds = true
        
        let context = CIContext(options: nil)
        let ciImage = CIImage(image: image)
        if let choosenFilter = CIFilter(name: filter) {
        choosenFilter.setDefaults()
            choosenFilter.setValue(ciImage, forKey: kCIInputImageKey)
            let filterData = choosenFilter.value(forKey: kCIOutputImageKey) as! CIImage
            if let cgImage = context.createCGImage(filterData, from: filterData.extent) {
                ImageView.image = UIImage(cgImage: cgImage, scale: image.scale, orientation: image.imageOrientation)
            }
    }
    
}


}

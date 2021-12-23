//
//  SlideCollectionViewCell.swift
//  StackChat
//
//  Created by Алексей Глазунов on 29.08.2021.
//

import UIKit

class SlideCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var descriptionText: UITextField!
    @IBOutlet weak var slideImg: UIImageView!
    @IBOutlet weak var regBtn: UIButton!
    @IBOutlet weak var authBtn: UIButton!
    static let reuceId = "SlideCollectionViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(slide: Slides){
        slideImg.image = slide.img
        descriptionText.text = slide.text
        if slide.id == 3{
            regBtn.isHidden = false
            authBtn.isHidden = false
        }
        
    }

    @IBAction func regBtnClick(_ sender: Any) {
    }
    
    @IBAction func authBtnClick(_ sender: Any) {
    }
}

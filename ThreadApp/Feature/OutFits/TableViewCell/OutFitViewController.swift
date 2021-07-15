//
//  OutFitViewController.swift
//  ThreadApp
//
//  Created by Oladipupo Oluwatobi on 15/07/2021.
//

import UIKit

class OutFitViewController: UITableViewCell {

    @IBOutlet weak var imageViewer: UIImageView!
    @IBOutlet weak var descriptionLable: UILabel!
    @IBOutlet weak var dateLable: UILabel!
    static let Identifier =  String(describing: OutFitViewController.self)
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func config(_ type: Outfits) {
        descriptionLable.useDefaultFont()
        dateLable.useDefaultFont()
        if let description = type.description,
           let image = type.image,
           let date = type.when
        {
            descriptionLable.text = description
            imageViewer.setImage(imageUrl: image)
            dateLable.text = date
        }
    }
    
}

//
//  MyTableViewCell.swift
//  MVVMDemo
//
//  Created by Khánh Linh on 06/07/2021.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var animalImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func bindData(animal: Animal) {
        titleLable.text = animal.name
        if let image = UIImage(named: animal.image) {
            animalImageView.image = image
            //animalImageView.setImageColor(color: UIColor.random())
        }
    }
    
}

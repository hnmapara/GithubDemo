//
//  GithubRepoCell.swift
//  GithubDemo
//
//  Created by Unum Sarfraz on 10/19/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class GithubRepoCell: UITableViewCell {

    
    @IBOutlet weak var projectName: UILabel!
    
    @IBOutlet weak var starCount: UILabel!
    
    @IBOutlet weak var forkCount: UILabel!
    
    @IBOutlet weak var ownerName: UILabel!
    
    @IBOutlet weak var ownerImage: UIImageView!
    
    @IBOutlet weak var descriptionLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setViewProperties(githubModel:GithubRepo) {
        projectName.text = githubModel.name!
        starCount.text = "\(githubModel.stars!)"
        ownerName.text = githubModel.ownerHandle!
        ownerImage.setImageWith(URL(string:githubModel.ownerAvatarURL!)!)
        descriptionLable.text = githubModel.repoDescription!
        forkCount.text = "\(githubModel.forks!)"
    }

}

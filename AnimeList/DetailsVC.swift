//
//  DetailsVC.swift
//  AnimeList
//
//  Created by Swayam Barik on 10/5/21.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedAnime : Anime?
    override func viewDidLoad() {
        super.viewDidLoad()
        var episodeCount = selectedAnime?.episodes
        if let x = episodeCount {
            episodeLabel.text = String(x)
        }
        
        
        nameLabel.text = selectedAnime?.name
        
        imageView.image = selectedAnime?.image
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

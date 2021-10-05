//
//  Anime.swift
//  AnimeList
//
//  Created by Swayam Barik on 10/5/21.
//

import Foundation
import UIKit

class Anime {
    
    var name: String
    var episodes: Int
    var image: UIImage
    
    init(nameInput: String, episodeInput: Int, imageInput: UIImage){
        name = nameInput
        episodes = episodeInput
        image = imageInput
    }
}

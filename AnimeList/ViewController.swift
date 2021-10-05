//
//  ViewController.swift
//  AnimeList
//
//  Created by Swayam Barik on 10/5/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var animeList = [Anime]()
    var chosenAnime : Anime?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        let naruto = Anime(nameInput: "Naruto", episodeInput: 786, imageInput: UIImage(named: "naruto")!)
        let dragonball = Anime(nameInput: "Dragon Ball", episodeInput: 493, imageInput: UIImage(named: "goku")!)
        let myhero = Anime(nameInput: "My Hero Academia", episodeInput: 123, imageInput: UIImage(named: "deku")!)
        animeList = [naruto, dragonball, myhero]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = animeList[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenAnime = animeList[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedAnime = chosenAnime
        }
    }


}


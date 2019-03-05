//
//  LeagueVC.swift
//  swoosh-app
//
//  Created by Anonymous on 04/03/2019.
//  Copyright © 2019 Anonymous. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var playerLeagueVC: Player!
    override func viewDidLoad() {
        super.viewDidLoad()

        playerLeagueVC = Player()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var nextButton: buttonBorder!
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "goingToSkillViewController", sender: self)
        print("this function called")
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        buttonTapped(selectedLeague: "mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        buttonTapped(selectedLeague: "womens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        buttonTapped(selectedLeague: "coed")
    }
    
    func buttonTapped(selectedLeague : String) {
        playerLeagueVC.desiredLeague = selectedLeague
        nextButton.isEnabled = true
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillViewController = segue.destination as? SkillVC {
                skillViewController.playerSkillVC = playerLeagueVC
        }else {
            print("View controller not found")
        }
    }
    

}

//
//  LeagueVC.swift
//  swoosh-app
//
//  Created by Anonymous on 04/03/2019.
//  Copyright © 2019 Anonymous. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
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
        player.desiredLeague = selectedLeague
        nextButton.isEnabled = true
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

//
//  TableauController.swift
//  Lecteur Youtube
//
//  Created by Riad Korimbacus on 19/04/2018.
//  Copyright © 2018 Riad Korimbacus. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    var chansons = [Chanson]()
    
    let identifiantCell = "ChansonCell"
    let identifiantSegue = "VersVideo"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        ajouterChanson()
        title = "Mes Vidéos Préférées"
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let chanson = chansons[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifiantCell) as? ChansonCell {
            cell.creerCell(chanson)
            return cell
        }
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let chanson = chansons[indexPath.row]
        performSegue(withIdentifier: identifiantSegue, sender: chanson)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == identifiantSegue {
            if let nouveauController = segue.destination as? VideoController {
                nouveauController.chanson = sender as? Chanson
            }
        }
    }
    
    func ajouterChanson() {
        chansons = [Chanson]()
        let onePiece = Chanson(artiste: "One Piece", titre: "Opening", code: "tnDhTHsqoaU")
        chansons.append(onePiece)
        let naruto = Chanson(artiste: "Naruto", titre: "Opening", code: "GmnxVfnNcTA")
        chansons.append(naruto)
        let narutoShippuden = Chanson(artiste: "Naruto Shippuden", titre: "Opening", code: "_0sAKJT99hE")
        chansons.append(narutoShippuden)
        let myHeroAcademia = Chanson(artiste: "My Hero Academia", titre: "Best OST", code: "_aw0P_dIxgk")
        chansons.append(myHeroAcademia)
        let sevenDeadlySins = Chanson(artiste: "Seven Deadly Sins", titre: "Opening 1", code: "UStOa3oxyNg")
        chansons.append(sevenDeadlySins)
        let gto = Chanson(artiste: "GTO", titre: "Opening 1", code: "phAoChN1nC4")
        chansons.append(gto)
        let akameGaKill = Chanson(artiste: "Akame Ga Kill", titre: "Opening 1", code: "mJz8F-hHpnM")
        chansons.append(akameGaKill)
        
        //ReloadData
        tableView.reloadData()
    }
}

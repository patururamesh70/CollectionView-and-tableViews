//
//  ViewController.swift
//  CollectionView and tableView
//
//  Created by patururamesh on 19/07/24.
//

import UIKit

var data = [MovieData(sectionType: "Telugu Movies", Movies:["Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr",] ),
            MovieData(sectionType: "kanada Movies", Movies:["Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr",] ),
            MovieData(sectionType: "Hollywood Movies", Movies:["Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr",] ),
            MovieData(sectionType: "kanada Movies", Movies:["Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr",] ),
            MovieData(sectionType: "Hollywood Movies", Movies:["Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr",] ),
            MovieData(sectionType: "kanada Movies", Movies:["Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr",] ),
            MovieData(sectionType: "Hollywood Movies", Movies:["Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr",] ),
            MovieData(sectionType: "kanada Movies", Movies:["Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr",] ),
            MovieData(sectionType: "Hollywood Movies", Movies:["Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr",] ),
            MovieData(sectionType: "kanada Movies", Movies:["Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr",] ),
            MovieData(sectionType: "Hollywood Movies", Movies:["Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr",] ),MovieData(sectionType: "kanada Movies", Movies:["Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr",] ),
            MovieData(sectionType: "Hollywood Movies", Movies:["Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr","Ntr",] ),
]

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return data[section].sectionType
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.collectionview.tag = indexPath.section
         return cell
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .green
    }
    
}

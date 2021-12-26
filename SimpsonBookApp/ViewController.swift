//
//  ViewController.swift
//  SimpsonBookApp
//
//  Created by Mac on 26.12.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var simsonArray:[SimsonModel] = [SimsonModel]()
    var selectedModel:SimsonModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        //fill array;
        simsonArray.append(SimsonModel(nameInit: "Bart Simsons", imageInit: UIImage(named: "bartSimpson.png")!, jobInit: "Student"))
        simsonArray.append(SimsonModel(nameInit: "Homer Simsons", imageInit: UIImage(named: "homerSimpson.png")!, jobInit: "Nuclear Safety"))
        simsonArray.append(SimsonModel(nameInit: "Marge Simsons", imageInit: UIImage(named: "margeSimpson.png")!, jobInit: "HouseWife"))
        simsonArray.append(SimsonModel(nameInit: "Lisa Simsons", imageInit: UIImage(named: "lisaSimpson.png")!, jobInit: "Student"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simsonArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(indexPath.row)
        selectedModel = simsonArray[indexPath.row]
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = UITableViewCell()
        cell.textLabel?.text = simsonArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // if user swipe to left than delete recort inside arrays and inside tableview
            simsonArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.middle)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
             let destinationVC = segue.destination as! DetailViewController
            destinationVC.selectedModel = selectedModel
        }
    }


}


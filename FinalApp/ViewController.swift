//
//  ViewController.swift
//  FinalApp
//
//  Created by user249277 on 2/24/24.
//


import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return citySchools.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = citySchools[indexPath.row].school
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .normal, title: "See City") {
            (_, _, _) in
            let navigateController = NavigationViewController()
            navigateController.city = self.citySchools[indexPath.row].city
            self.present(navigateController, animated: true, completion: nil)
        }
        let config = UISwipeActionsConfiguration(actions: [action])
        config.performsFirstActionWithFullSwipe = true
        return config
    }
    

    var citySchools = [
        CitySchool("Auburn, AL", "Auburn University"),
        CitySchool("Tuscaloosa, AL", "University of Alabama"),
        CitySchool("Baton Rouge, LA", "LSU"),
        CitySchool("Starkville, MS", "Mississippi State"),
        CitySchool("College Station, Texas", "Texas A&M"),
        CitySchool("Fayetteville, AR", "University of Arkansas"),
        CitySchool("Gainesville, FL", "University of Florida"),
        CitySchool("Athens, GA", "University of Georgia"),
        CitySchool("Lexington, KY", "University of Kentucky"),
        CitySchool("Knoxville, TN", "University of Tennessee"),
    
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

}

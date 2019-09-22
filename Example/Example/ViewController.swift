//
//  ViewController.swift
//  Example
//
//  Created by UperProgrammer on 22/09/2019.
//  Copyright © 2019 Uper. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dailyTasks.count
        case 1:
            return weeklyTasks.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let rowIndex = indexPath.row
        let sectionIndex = indexPath.section

        switch indexPath.section {
        case 0:
            cell.textLabel?.text = "section \(indexPath.section), row \(rowIndex): \(dailyTasks[rowIndex])"
        case 1:
            cell.textLabel?.text = "section \(sectionIndex), row \(rowIndex): \(weeklyTasks[rowIndex])"
        default:
            cell.textLabel?.text = "default"
        }
        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0:
            return "Section 1"
        case 1:
            return "section 2"
        default:
            return "default"
        }
    }

    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        switch section{
        case 0:
            return "Footer 1"
        case 1:
            return "Footer 2"
        default:
            return "default"
        }
    }



    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Data Model
    let dailyTasks = ["day task 1",
                      "day task 2",
                      "day task 3",
                      "day task 4",
                      "day \"task\" 5",
    ]

    let weeklyTasks = ["week task 1",
                      "week task 2",
                      "week task 3",
                      "week task 4",
    ]


}


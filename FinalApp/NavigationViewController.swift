//
//  File.swift
//  FinalApp
//
//  Created by user249277 on 2/24/24.
//

import UIKit

class NavigationViewController: UIViewController {
    var city = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.text = city
        label.frame = CGRect(x: self.view.center.x, y: self.view.center.y, width: 300, height: 100)
        label.center = self.view.center
        view.backgroundColor = UIColor.white
        view.addSubview(label)
    }
}

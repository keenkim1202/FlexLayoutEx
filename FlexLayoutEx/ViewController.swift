//
//  ViewController.swift
//  FlexLayoutEx
//
//  Created by KEEN KIM on 2022/08/16.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - UI
    let customView = CustomView()
    
    // MARK: - View Life-Cycle
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - ETC

}


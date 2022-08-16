//
//  ViewController.swift
//  FlexLayoutEx
//
//  Created by KEEN KIM on 2022/08/16.
//

import UIKit
import PinLayout
import FlexLayout

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
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let safeArea = customView.rootFlexContainer.pin.safeArea
        
        customView.rootFlexContainer.pin.all(safeArea)
        customView.rootFlexContainer.flex.layout(mode: .adjustHeight)
    }
    
    // MARK: - ETC

}


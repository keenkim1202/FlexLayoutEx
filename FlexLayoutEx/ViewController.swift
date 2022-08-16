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
    
    // PinLayout을 통해 container의 layout을 먼저 잡아준 후, flex를 통해 하위뷰들의 layout을 잡아준다.
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        customView.rootFlexContainer.pin.all() // flexbox container의 layout 설정
        customView.rootFlexContainer.flex.layout() // flex.layout()을 통해 flexbox의 하위뷰들의 layout 설정
    }
    
    // MARK: - ETC

}


//
//  CustomView.swift
//  FlexLayoutEx
//
//  Created by KEEN KIM on 2022/08/16.
//

import UIKit
import FlexLayout

class CustomView: UIView {
    // MARK: - UI
    
    let rootFlexContainer = UIView()
    
    let firstLabel: UILabel = {
        let label = UILabel()
        label.text = "첫번째 레이블 테스트"
        label.backgroundColor = .systemMint
        return label
    }()
    
    let secondLabel: UILabel = {
        let label = UILabel()
        label.text = "두번째 레이블 테스트"
        label.backgroundColor = .systemIndigo
        return label
    }()
    
    let thirdLabel: UILabel = {
        let label = UILabel()
        label.text = "세번째 레이블 테스트"
        label.backgroundColor = .systemPink
        return label
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed
        return view
    }()
    
    let orangeView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemOrange
        return view
    }()
    
    let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemYellow
        return view
    }()
    
    let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGreen
        return view
    }()
    
    let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        return view
    }()
    
    let purpleView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPurple
        return view
    }()
    
    let grayView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        return view
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        addSubviews()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Set Layout
    
    func addSubviews() {
        addSubview(rootFlexContainer)
        addSubviews([redView, orangeView])
        // addSubviews([redView, orangeView, yellowView, greenView, blueView, purpleView, grayView])
        // addSubviews([firstLabel, secondLabel, thirdLabel])
    }
    
    func setLayout() {
        rootFlexContainer.backgroundColor = .lightGray
        
        rootFlexContainer.flex.direction(.row).padding(12).define { flex in
            flex.addItem().direction(.row).define { flex in
                flex.addItem(redView).width(100).aspectRatio(1.5)
                flex.addItem(orangeView).width(100).aspectRatio(1.5)
            }
        }
    }
}

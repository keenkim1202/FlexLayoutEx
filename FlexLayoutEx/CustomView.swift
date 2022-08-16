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
        addSubviews([redView, orangeView, yellowView, greenView, blueView])
        addSubviews([firstLabel, secondLabel])
        
        // addSubviews([redView, orangeView, yellowView, greenView, blueView, purpleView, grayView])
        // addSubviews([firstLabel, secondLabel, thirdLabel])
    }
    
    func setLayout() {
        rootFlexContainer.backgroundColor = .lightGray
    
        rootFlexContainer.flex.direction(.column).padding(12).define {
            $0.addItem(firstLabel)
            
            $0.addItem().direction(.row).marginTop(10).padding(20).define { // 첫번째 스택뷰와 내부뷰 사이의 padding 주기
                $0.addItem(redView).height(50).grow(1)
                $0.addItem(orangeView).height(50).grow(1)
                $0.addItem(yellowView).height(50).grow(1)
    
                $0.backgroundColor(.white)
            }
    
            $0.addItem(secondLabel).marginTop(20)
            
            $0.addItem().direction(.row).marginTop(10).define {
                $0.addItem(greenView).height(150).grow(1)
                $0.addItem(blueView).height(150).grow(1)
    
                $0.backgroundColor(.white)
            }
        }
    }
}

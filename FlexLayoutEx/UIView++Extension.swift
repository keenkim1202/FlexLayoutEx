//
//  UIView++Extension.swift
//  FlexLayoutEx
//
//  Created by KEEN KIM on 2022/08/16.
//

import UIKit

extension UIView {
    /// 다수의 뷰를 배열의 형태로 받아 addSubview 하는 함수
    func addSubviews(_ views: [UIView]) {
        for view in views {
            addSubview(view)
        }
    }
}

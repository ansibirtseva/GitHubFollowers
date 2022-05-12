//
//  GHTitleLabel.swift
//  GHUsers
//
//  Created by Anna Sibirtseva on 03/05/2022.
//

import UIKit

class GHTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }


    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        font = UIFont.preferredFont(forTextStyle: .title1)
        adjustsFontForContentSizeCategory = true
        configure()
    }


    private func configure() {
        textColor = .label
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail
        numberOfLines = 0
        translatesAutoresizingMaskIntoConstraints = false
    }
}

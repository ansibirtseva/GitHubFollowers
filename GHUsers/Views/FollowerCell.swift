//
//  GHCollectionCell.swift
//  GHUsers
//
//  Created by Anna Sibirtseva on 04/05/2022.
//

import UIKit

class FollowerCell: UICollectionViewCell {

    static let reuseID = "FollowerCell"
    let avatarImageView = GHAvatarImageView(frame: .zero)
    let usernameLabel   = GHTitleLabel(textAlignment: .center, fontSize: 16)
    let stackView = UIStackView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }


    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    func set(follower: Follower) {
        usernameLabel.text = follower.login
        avatarImageView.downloadImage(from: follower.avatarUrl)
    }


    private func configure() {
        self.addSubview(stackView)
        stackView.addArrangedSubview(avatarImageView)
        stackView.addArrangedSubview(usernameLabel)
        stackView.axis = .vertical
        let padding: CGFloat = 8

        stackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -padding),
        ])
    }
}

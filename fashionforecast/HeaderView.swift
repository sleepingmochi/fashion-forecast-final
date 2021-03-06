//
//  HeaderView.swift
//  L5Starter
//
//  Created by Amy Chin Siu Huang on 10/25/21.
//

import UIKit

class HeaderView: UICollectionReusableView {

    var headerLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)

        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.textColor = .black
        headerLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        addSubview(headerLabel)

        setupConstraints()
    }

    func configure(for section: String) {
        headerLabel.text = section
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            headerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            headerLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            headerLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }

}

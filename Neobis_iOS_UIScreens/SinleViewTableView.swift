//
//  SinleViewTableView.swift
//  Neobis_iOS_UIScreens
//
//  Created by Interlink on 12/11/23.
//

import UIKit

class SinleViewTableView: UITableViewCell {
     let containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        return view
    }()

    let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "book1Single")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 46
        imageView.clipsToBounds = true 

        return imageView
    }()


   let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "SegoeUI-Regular", size: 30)
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .center
        return label
    }()

    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "SegoeUI-Regular", size: 16)
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupUI()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

   func setupUI() {
        contentView.addSubview(containerView)
        containerView.addSubview(iconImageView)
        containerView.addSubview(titleLabel)
        containerView.addSubview(descriptionLabel)

        containerView.translatesAutoresizingMaskIntoConstraints = false
       iconImageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),

            iconImageView.widthAnchor.constraint(equalToConstant: 92),
            iconImageView.heightAnchor.constraint(equalToConstant: 92),
            iconImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            iconImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8),

            titleLabel.widthAnchor.constraint(equalToConstant: 55),
            titleLabel.heightAnchor.constraint(equalToConstant: 39),
            titleLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 8),
            titleLabel.topAnchor.constraint(equalTo: iconImageView.topAnchor),

            descriptionLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 8),
            descriptionLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            descriptionLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8)
        ])
    }

    func configure(with data: CellData) {
        iconImageView.backgroundColor = data.iconBackgroundColor
        titleLabel.text = data.title
        descriptionLabel.text = data.description
    }
}

struct CellData {
    let iconBackgroundColor: UIColor
    let title: String
    let description: String
}

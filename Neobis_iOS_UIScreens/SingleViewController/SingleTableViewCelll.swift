//
//  TableViewCell.swift
//  Neobis_iOS_UIScreens
//
//  Created by Interlink on 14/11/23.
//

import UIKit

class SingleTableViewCelll: UITableViewCell {

    static let identifier = "SingleTableViewCelll"
    
    private let singleImage: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(systemName: "book1Single")
        iv.tintColor = .label
        return iv
    }()
    
    private let singleTableLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 24, weight: .medium)
        label.text = "Error"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUi()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     func setUpUi() {
        contentView.addSubview(singleImage)
        contentView.addSubview(singleTableLabel)
        
        singleImage.translatesAutoresizingMaskIntoConstraints = false
        singleTableLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            singleImage.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            singleImage.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
            singleImage.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
            singleImage.heightAnchor.constraint(equalToConstant: 90),
            singleImage.widthAnchor.constraint(equalToConstant: 90),
            singleTableLabel.leadingAnchor.constraint(equalTo:self.singleImage.trailingAnchor,constant: 16),
            singleTableLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            singleTableLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

            singleTableLabel.trailingAnchor.constraint(equalTo:self.contentView.trailingAnchor,constant: -12)
        ])
    }
    private func configure(with image:UIImage, and label:String){
        self.singleImage.image = image
        self.singleTableLabel.text = label
    }
   
    
    
    
    /*       let containerView: UIView = {
     let view = UIView()
     view.layer.cornerRadius = 10
     view.layer.masksToBounds = true
     return view
     }()
     
     
     //Mark :- VAriables
     private let iconImageView: [UIImage] = [
     UIImage(named: "bookSingle")!
     ]
     
     
     let iconImageView2: UIImageView = {
     let imageView2 = UIImageView()
     imageView2.image = UIImage(named: "bookSingle")
     imageView2.contentMode = .scaleAspectFit
     imageView2.layer.cornerRadius = 46
     imageView2.clipsToBounds = true
     
     return imageView2
     }()
     let iconImageView3: UIImageView = {
     let imageView3 = UIImageView()
     imageView3.image = UIImage(named: "bookSingle")
     imageView3.contentMode = .scaleAspectFit
     imageView3.layer.cornerRadius = 46
     imageView3.clipsToBounds = true
     
     return imageView3
     }()
     
     let iconImageView4: UIImageView = {
     let imageView4 = UIImageView()
     imageView4.image = UIImage(named: "bookSingle")
     imageView4.contentMode = .scaleAspectFit
     imageView4.layer.cornerRadius = 46
     imageView4.clipsToBounds = true
     
     return imageView4
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
     containerView.addSubview(iconImageView2)
     
     containerView.translatesAutoresizingMaskIntoConstraints = false
     iconImageView.translatesAutoresizingMaskIntoConstraints = false
     titleLabel.translatesAutoresizingMaskIntoConstraints = false
     descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
     iconImageView2.translatesAutoresizingMaskIntoConstraints = false
     
     NSLayoutConstraint.activate([
     containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
     containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
     containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
     containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
     
     /*  iconImageView.widthAnchor.constraint(equalToConstant: 92),
      iconImageView.heightAnchor.constraint(equalToConstant: 92),
      iconImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
      iconImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8),
      
      
      
      
      
      
      titleLabel.widthAnchor.constraint(equalToConstant: 55),
      titleLabel.heightAnchor.constraint(equalToConstant: 39)}
      /  titleLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 8),
      titleLabel.topAnchor.constraint(equalTo: iconImageView.topAnchor),
      
      descriptionLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 8),
      descriptionLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8),
      descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
      descriptionLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8)
      
      
      
      ///
      
      ])
      
      
      /    func configure(with data: CellData) {
      //   iconImageView.backgroundColor = data.iconBackgroundColor
      titleLabel.text = data.title
      descriptionLabel.text = data.description
      }
      
      
      struct CellData {
      let iconBackgroundColor: UIColor
      let title: String
      let description: String
      }*/
     */

}

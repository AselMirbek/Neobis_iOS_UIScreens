//
//  SingleViewController.swift
//  Neobis_iOS_UIScreens
//
//  Created by Interlink on 12/11/23.
//

import UIKit


class SingleViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    var data: [CellData] = [] // данные для ячеек

    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .none
        return tableView}()
    override func viewDidLoad(){
        super.viewDidLoad()
        //  view.backgroundColor = .systemMint
        // First View
        
        
        // Background View
                let backgroundView = UIView()
                backgroundView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)

                let parent = self.view!
                parent.addSubview(backgroundView)
                backgroundView.translatesAutoresizingMaskIntoConstraints = false

                NSLayoutConstraint.activate([
                    backgroundView.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
                    backgroundView.trailingAnchor.constraint(equalTo: parent.trailingAnchor),
                    backgroundView.topAnchor.constraint(equalTo: parent.topAnchor),
                    backgroundView.bottomAnchor.constraint(equalTo: parent.bottomAnchor),
                ])
        // Top Navigation Bar with Button
        let topNavigationBar = UIView()
        topNavigationBar.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 44)
        topNavigationBar.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 0.9)
        
        let topBarButton = UIButton(type: .system)
        topBarButton.setTitle("", for: .normal)
        topBarButton.frame = CGRect(x: topNavigationBar.frame.width - 100, y: 0, width: 100, height: 44)
        topBarButton.addTarget(self, action: #selector(topBarButtonTapped), for: .touchUpInside)
        
        topNavigationBar.addSubview(topBarButton)
        view.addSubview(topNavigationBar)
        // Bottom Bar
        let bottomBar = UIView()
        bottomBar.frame = CGRect(x: 0, y: view.frame.height - 82, width: view.frame.width, height: 82)
        bottomBar.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 0.9)
        
        // Button 1
        let button1 = UIButton(type: .system)
        button1.setTitle("Series", for: .normal)
        button1.frame = CGRect(x: 35, y: 13, width: 72, height: 56)
        //button1.setTitleColor(.black, for: .normal)
        button1.addTarget(self, action: #selector(button1Tapped), for: .touchUpInside)
        
        // Button 2
        let button2 = UIButton(type: .system)
        button2.setTitle("Headspace", for: .normal)
        button2.frame = CGRect(x: 155, y: 13, width: 90, height: 56)
        button2.addTarget(self, action: #selector(button2Tapped), for: .touchUpInside)
     
        
        
        // Button 3
        let buttonProfileBar = UIButton(type: .system)
        buttonProfileBar.setTitle("Profile", for: .normal)
        buttonProfileBar.frame = CGRect(x: 275, y: 13, width: 72, height: 56)
        buttonProfileBar.addTarget(self, action: #selector(button3Tapped), for: .touchUpInside)
        // Icon above button2
        let iconImageView2 = UIImageView()
        let iconImage2 = UIImage(named: "Image2Bar")
        iconImageView2.image = iconImage2
        iconImageView2.contentMode = .scaleAspectFit
        // Adjust the content mode as needed
        iconImageView2.frame = CGRect(x: 180, y: 7, width: 28, height: 25)
        iconImageView2.layer.cornerRadius = 4
        
            // Icon above button1
        let iconImageView1 = UIImageView()
        let iconImage1 = UIImage(named: "Image1Bar")
        iconImageView1.image = iconImage1
        iconImageView1.contentMode = .scaleAspectFit
        // Adjust the content mode as needed
        iconImageView1.frame = CGRect(x: 61, y: 7, width: 23, height: 20)
        iconImageView1.layer.cornerRadius = 4
        
        // Icon above button3
    let iconImageView3 = UIImageView()
    let iconImage3 = UIImage(named: "Image3Bar")
    iconImageView3.image = iconImage3
    iconImageView3.contentMode = .scaleAspectFit
    // Adjust the content mode as needed
    iconImageView3.frame = CGRect(x: 295, y: 7, width: 23, height: 20)
    iconImageView3.layer.cornerRadius = 4
    
        
        
        bottomBar.addSubview(iconImageView1)
        bottomBar.addSubview(iconImageView2)
        bottomBar.addSubview(iconImageView3)
        
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 0, y: 0, width: 72, height: 56)
        button.alpha = 0.5
        
        
        bottomBar.addSubview(button1)
        bottomBar.addSubview(button2)
        bottomBar.addSubview(buttonProfileBar)

        view.addSubview(bottomBar)
        //table
        // Настройка UITableView
        tableView.backgroundColor = .clear
        tableView.frame = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
        
        // Регистрация класса для использования ячейки
        tableView.register(SinleViewTableView.self, forCellReuseIdentifier: "SinleViewTableView")
        
       parent.addSubview(tableView)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count
        }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SinleViewTableView", for: indexPath) as! SinleViewTableView

        let dataForCell = //
        let cellData = SinleViewTableView.Configuration(
            iconBackgroundColor: dataForCell.iconBackgroundColor,
            title: dataForCell.title,
            description: dataForCell.description
        )

        cell.configure(with: cellData)

        return cell
    }

    @objc func topBarButtonTapped() {
            // Handle top bar button tap
        }

        @objc func button1Tapped() {
            // Handle button 1 tap
        }

        @objc func button2Tapped() {
            // Handle button 2 tap
        }

        @objc func button3Tapped() {
            // Handle button 3 tap
        }
    }

    
    
    
   

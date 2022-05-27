//
//  HomeViewController.swift
//  YoutubeClone
//
//  Created by Caleb Ngai on 5/27/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let homeTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(VideoCardTableViewCell.self, forCellReuseIdentifier: VideoCardTableViewCell.identifier)
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureNavbar()
        configureTableView()
    }
    
    override func viewDidLayoutSubviews() {
        homeTableView.frame = view.bounds
    }
    
    private func configureNavbar() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "play.rectangle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 20)), style: .done, target: self, action: nil)
        navigationItem.leftBarButtonItem?.tintColor = .systemRed
        
        let airplayIcon = UIBarButtonItem(image: UIImage(systemName: "airplayvideo", withConfiguration: UIImage.SymbolConfiguration(pointSize: 17)), style: .done, target: self, action: nil)
        let notificationIcon = UIBarButtonItem(image: UIImage(systemName: "bell", withConfiguration: UIImage.SymbolConfiguration(pointSize: 17)), style: .done, target: self, action: nil)
        let searchIcon = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass", withConfiguration: UIImage.SymbolConfiguration(pointSize: 17)), style: .done, target: self, action: nil)
        let userIcon = UIBarButtonItem(image: UIImage(systemName: "person.circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 17)), style: .done, target: self, action: nil)
        navigationItem.rightBarButtonItems = [userIcon, searchIcon, notificationIcon, airplayIcon]
    }
    
    private func configureTableView() {
        view.addSubview(homeTableView)
        homeTableView.delegate = self
        homeTableView.dataSource = self
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: VideoCardTableViewCell.identifier, for: indexPath) as? VideoCardTableViewCell
        else {return UITableViewCell()}
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

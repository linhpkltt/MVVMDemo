//
//  AnimalViewController.swift
//  MVVMDemo
//
//  Created by Khánh Linh on 06/07/2021.
//

import UIKit

class AnimalViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var animalViewModel: AnimalViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initTableView()
        self.bindViewModel()
    }
    
    //create table view
    private func initTableView() {
        tableView.register(UINib(nibName: "MyTableViewCell", bundle: nil), forCellReuseIdentifier: "MyTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func bindViewModel() {
        animalViewModel = AnimalViewModel()
    }
}


extension AnimalViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalViewModel.numberOfRowsInSection(section: section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell") as! MyTableViewCell
        cell.bindData(animal: animalViewModel.cellForRowAt(indexPath: indexPath))
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}



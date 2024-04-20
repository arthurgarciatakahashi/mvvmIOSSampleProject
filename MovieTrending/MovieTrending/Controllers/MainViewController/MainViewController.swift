//
//  MainViewController.swift
//  MovieTrending
//
//  Created by arthur takahashi on 19/04/24.
//

import UIKit

class MainViewController: UIViewController {

    // IBoutlets:
    @IBOutlet weak var tableView: UITableView!
    
    //ViewModel
    var viewModel: MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    func configView() {
        self.title = "Primeira View"
        
        setupTableView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        viewModel.getData()
    }

}

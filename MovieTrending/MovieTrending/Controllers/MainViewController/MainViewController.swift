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
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    //ViewModel
    var viewModel: MainViewModel = MainViewModel()
    
    //Varibles
    var cellDataSource: [MovieTableCellViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
        bindViewModel()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getData()
    }
    
    func configView() {
        self.title = "Primeira View"
        self.view.backgroundColor = .systemBackground
        
        setupTableView()
    }

    func bindViewModel() {
        viewModel.isLoading.bind { [weak self] isLoading in
            guard let self = self, let isLoading = isLoading else {
                return
            }
            DispatchQueue.main.async {
                if isLoading {
                    self.activityIndicator.startAnimating()
                } else {
                    self.activityIndicator.stopAnimating()
                }
            }
        }
        
        viewModel.cellDataSource.bind { [weak self](movies) in
            guard let self = self, let movies = movies else {
                return
            }
            self.cellDataSource = movies
            self.reloadTableView()
        }
    }
    
    func openDetails(movieId: Int) {
        guard let movie = viewModel.retrieveMovie(with: movieId) else {
            return
        }
        let detailsViemModel = DetailsMovieViewModel(movie: movie)
        let detailsController = DetailsMovieViewController(viewModel: detailsViemModel)
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(detailsController, animated: true)
            print("onclick details id: \(movieId)")
            
        }
    }
}

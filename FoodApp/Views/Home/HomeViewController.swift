//
//  HomeCollectionViewController.swift
//  FoodApp
//
//  Created by Alican TARIM on 27.12.2024.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Africa Dish", image: "https://picsum.phosot/100/200"),
        .init(id: "id1", name: "Africa Dish 2", image: "https://picsum.phosot/100/200"),
        .init(id: "id1", name: "Africa Dish 3", image: "https://picsum.phosot/100/200"),
        .init(id: "id1", name: "Africa Dish 4", image: "https://picsum.phosot/100/200"),
        .init(id: "id1", name: "Africa Dish 5", image: "https://picsum.phosot/100/200")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCells()
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        cell.setup(category: categories[indexPath.row])
        return cell
    }
}

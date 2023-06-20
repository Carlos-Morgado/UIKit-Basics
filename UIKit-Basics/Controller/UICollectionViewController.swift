//
//  UICollectionViewController.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 20/6/23.
//

import UIKit

class UICollectionViewController: UIViewController {

    // OUTLETS
    @IBOutlet weak private var generalContentView: UIView!
    @IBOutlet weak private var collectionViewExample: UICollectionView!
    
    // CONSTANTS
    private let countriesList = ["España", "Perú", "EEUU", "Germany", "Belgium", "Mexico", "China", "UK"]
    private let mycellWidth = UIScreen.main.bounds.width / 2
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
    }
}

// MARK: - EXTENSIONS


private extension UICollectionViewController {
    func configView() {
        title = "UICollectionView"
        view.backgroundColor = .basicBackgroundColor
        generalContentView.backgroundColor = .basicBackgroundColor
        
        collectionViewExample.dataSource = self
        collectionViewExample.register(UINib(nibName: "CustomedCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "customedCell")
        collectionViewExample.delegate = self
        
    }
}

// MARK: - DATASOURCE C0LLECTIONVIEW

extension UICollectionViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return countriesList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let customedCell = collectionView.dequeueReusableCell(withReuseIdentifier: "customedCell", for: indexPath) as? CustomedCollectionViewCell
        
        customedCell!.labelCell.text = countriesList[indexPath.row]
        
        return customedCell!
    }
}

// MARK: - DELEGATE COLLECTION VIEW

extension UICollectionViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath.section) -> \(indexPath.row) \(countriesList[indexPath.row])")
    }
}

// MARK: -

extension UICollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: mycellWidth, height: mycellWidth)
    }
}

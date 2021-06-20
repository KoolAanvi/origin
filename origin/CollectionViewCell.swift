//
//  CollectionViewCell.swift
//  origin
//
//  Created by Aanvi Koolwal on 6/19/21.
//

//import UIKit
//
//class CollectionViewCell: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
//
//    private let collectionView = UICollectionView(
//        frame: .zero,
//        collectionViewLayout: UICollectionViewLayout()
//    )
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        collectionView.register(PhotoCollectionViewCell.self,
//                                forCellWithReuseIdentifier: PhotoCollectionViewCell.identifier)
//        collectionView.delegate = self
//        collectionView.dataSource = self
//        view.addSubview(collectionView)
//    }
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        collectionView.frame = view.bounds
//    }
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 30
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoCollectionViewCell.identifier, for: indexPath)
//        return cell
//    }
//}

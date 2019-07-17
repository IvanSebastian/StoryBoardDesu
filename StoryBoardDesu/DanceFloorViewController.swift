//
//  ViewController.swift
//  RoomView
//
//  Created by Marcell Julienne on 16/07/19.
//  Copyright © 2019 Marcell Julienne. All rights reserved.
//

import UIKit


struct CustomData{
    var title: String
    var backgroundImage: UIImage
    var url: String
}

var gradientLayer: CAGradientLayer!

class DanceFloorViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var readyBtn: UIButton!
    
//    func createGradientLayer(){
//        gradientLayer = CAGradientLayer()
//        gradientLayer.frame = self.view.bounds
//        gradientLayer.colors = [UIColor.init(displayP3Red: 49, green: 52, blue: 119, alpha: 1), UIColor.init(displayP3Red: 25, green: 26, blue: 60, alpha: 1)]
//        self.view.layer.addSublayer(gradientLayer)
//    }
    
//  override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        createGradientLayer()
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
        cell.data = self.data[indexPath.item]
        return cell
    }
    
    
    fileprivate let data = [
        CustomData(title: "road", backgroundImage: #imageLiteral(resourceName: "road2") , url: "maxcourses.io/courses"),
        CustomData(title: "road2", backgroundImage: #imageLiteral(resourceName: "road") , url: "maxcourses.io/enroll"),
        CustomData(title: "Test 2", backgroundImage: #imageLiteral(resourceName: "stairs") , url: "maxcourses.io/courses"),
        CustomData(title: "Test 3", backgroundImage: #imageLiteral(resourceName: "stairs") , url: "maxcourses.io/courses"),
        CustomData(title: "Test 1", backgroundImage: #imageLiteral(resourceName: "stairs") , url: "maxcourses.io/courses")
    ]
    
    fileprivate let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(CustomCell.self, forCellWithReuseIdentifier: "cell")
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        readyBtn.layer.cornerRadius = 20
        readyBtn.layer.borderColor = #colorLiteral(red: 1, green: 0.9603274465, blue: 0.04553865641, alpha: 1)
        readyBtn.layer.backgroundColor = #colorLiteral(red: 0.1102832928, green: 0.1148796007, blue: 0.2685339153, alpha: 1)
        readyBtn.layer.borderWidth = 5
        
        //createGradientLayer()
        view.addSubview(collectionView)
        collectionView.backgroundColor = #colorLiteral(red: 0.09803921569, green: 0.1019607843, blue: 0.2352941176, alpha: 1)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 394).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: view.frame.width/2).isActive = true
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
    }
    
}

extension DanceFloorViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2, height: collectionView.frame.width/2)
    }
    
    
}

class CustomCell: UICollectionViewCell{
    
    var data: CustomData? {
        didSet {
            guard let data = data else { return }
            bg.image = data.backgroundImage
            
        }
    }
    
    fileprivate let bg: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 12
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        
        contentView.addSubview(bg)
        
        bg.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        bg.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        bg.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        bg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

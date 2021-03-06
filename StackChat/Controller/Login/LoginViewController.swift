//
//  LoginViewController.swift
//  StackChat
//
//  Created by Алексей Глазунов on 29.08.2021.
//

import UIKit


protocol LoginViewControllerDelegate{
    func openRegVC()
    func openAuthVC()
    func closeVC()
    
}  //delegate//
 
class LoginViewController: UIViewController {
    
    var collectionView: UICollectionView!
    let slidesSlider = SliderSlides()
    var authVC: AuthViewController!
    var regVC: RegViewController!
    
    var slides: [Slides] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        configCollectionView()
        slides = slidesSlider.getSlides() 
        
      
    }
    
    
    func configCollectionView(){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.backgroundColor = .gray
        collectionView.isPagingEnabled = true
        
        self.view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        view.leadingAnchor.constraint(equalTo: collectionView.leadingAnchor, constant: 0).isActive = true
        view.trailingAnchor.constraint(equalTo: collectionView.trailingAnchor, constant: 0).isActive = true
        view.topAnchor.constraint(equalTo: collectionView.topAnchor, constant: 0).isActive = true
        view.bottomAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 0).isActive = true
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: SlideCollectionViewCell.reuceId, bundle: nil), forCellWithReuseIdentifier: SlideCollectionViewCell.reuceId)
        
    }
    

    

}
extension LoginViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SlideCollectionViewCell.reuceId, for: indexPath) as!
           SlideCollectionViewCell
        cell.delegate = self
        let slide = slides[indexPath.row]
        cell.configure(slide: slide)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var size = view.frame.size
        
        return size
    }
}


extension LoginViewController: LoginViewControllerDelegate{
   
    
    
    
    func openAuthVC() {
        if authVC == nil {
            authVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AuthViewController") as! AuthViewController?
        }
        authVC.delegate = self

        self.view.insertSubview(authVC.view, at: 1)
    }
    
    func openRegVC() {
        if regVC == nil {
        regVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegViewController") as! RegViewController?
        
        }
        regVC.delegate = self
        self.view.insertSubview(regVC.view, at: 1)
    }
    func closeVC() {
        if authVC != nil {
            authVC.view.removeFromSuperview()
            authVC = nil
        }
    
        if regVC != nil {
        regVC.view.removeFromSuperview()
        regVC = nil
        }
    }
}


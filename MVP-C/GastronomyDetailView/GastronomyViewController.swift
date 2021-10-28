//
//  GastronomyViewController.swift
//  MVP-C
//
//  Created by Rubén Muñoz López on 20/9/21.
//

import UIKit

public class GastronomyViewController: UIViewController, Storyboarded {
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = UIColor.white
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.backgroundColor = UIColor.red
        contentView.translatesAutoresizingMaskIntoConstraints = false
        return contentView
    }()
    
    private lazy var stack: UIView = {
        let stackView = UIStackView(arrangedSubviews: [titleName, imageMain, titleDrinks, imageDrink, titleDesserts, imageDessert, stackMain])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillProportionally
        stackView.backgroundColor = .white
        stackView.frame = view.bounds
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var stackMain: UIView = {
        let stackView = UIStackView(arrangedSubviews: [titleStack, imageMainDishes])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillProportionally
        stackView.frame = view.bounds
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    public lazy var titleName: UILabel = {
        let label = UILabel()
        label.textColor = .orange
        label.font = UIFont(name: "Helvetica Neue Bold", size: 20)
        label.textAlignment = .center
        label.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        return label
    }()
    
    public lazy var titleDrinks: UILabel = {
        let label = UILabel()
        label.textColor = .orange
        label.font = UIFont(name: "Helvetica Neue Bold", size: 20)
        label.textAlignment = .center
        label.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        return label
    }()
    
    public lazy var titleDesserts: UILabel = {
        let label = UILabel()
        label.textColor = .orange
        label.font = UIFont(name: "Helvetica Neue Bold", size: 20)
        label.textAlignment = .center
        label.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        return label
    }()
    
    public lazy var titleStack: UILabel = {
        let label = UILabel()
        label.textColor = .orange
        label.font = UIFont(name: "Helvetica Neue Bold", size: 20)
        label.textAlignment = .center
        label.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        return label
    }()
    
    lazy var imageMain: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "mainDishes"))
        icon.backgroundColor = UIColor.yellow
        icon.contentMode = .scaleToFill
        icon.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 250).isActive = true
        return icon
    }()
    
    lazy var imageMainDishes: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "teteria"))
        icon.backgroundColor = UIColor.yellow
        icon.contentMode = .scaleToFill
        icon.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 250).isActive = true
        return icon
    }()
    
    lazy var imageDessert: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "turkeyDessert"))
        icon.backgroundColor = UIColor.yellow
        icon.contentMode = .scaleToFill
        icon.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 250).isActive = true
        return icon
    }()
    
    lazy var imageDrink: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "turkeyDrink"))
        icon.backgroundColor = UIColor.yellow
        icon.contentMode = .scaleToFill
        icon.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 250).isActive = true
        return icon
    }()
    
    lazy var viewBackground: UIView = {
        let background = UIView()
        background.backgroundColor = UIColor.blue
        background.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        background.heightAnchor.constraint(equalToConstant: 500).isActive = true
        return background
    }()
    
    public override func viewDidLoad() {
        setUp()
        setupConstraints()
    }
    
    func setUp() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(stack)
        titleName.text = "Platos típicos de estambul"
        titleDrinks.text = "Bebidas turcas"
        titleDesserts.text = "Postres de turquía"
        titleStack.text = "Teterías"
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor)
        ])
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
        ])
        
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: contentView.topAnchor),
            stack.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            stack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            stack.leftAnchor.constraint(equalTo: contentView.leftAnchor)
        ])
        
        NSLayoutConstraint.activate([
            titleName.topAnchor.constraint(equalTo: stack.topAnchor, constant: 10),
        ])
    }
}


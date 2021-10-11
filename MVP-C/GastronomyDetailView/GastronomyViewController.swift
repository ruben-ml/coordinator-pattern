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
      scrollView.translatesAutoresizingMaskIntoConstraints = false
      return scrollView
    }()

    private lazy var contentView: UIView = {
      let contentView = UIView()
      contentView.translatesAutoresizingMaskIntoConstraints = false
      return contentView
    }()
    
    
    private lazy var stack: UIView = {
       let stackView = UIStackView(arrangedSubviews: [imageIcon, titleName, imageLogo, imageView, imageView1])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .equalSpacing
        stackView.backgroundColor = .blue
        stackView.frame = view.bounds
       return stackView
    }()
    
    public lazy var titleName: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemPink
        label.textColor = .orange
        label.text = "pepepepepe"
        label.font = UIFont(name: "Helvetica-neue", size: 20)
        label.textAlignment = .center
        label.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        label.heightAnchor.constraint(equalToConstant: view.frame.size.height).isActive = true
        return label
    }()
    
     lazy var imageIcon: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "idiom"))
        icon.backgroundColor = UIColor.yellow
        icon.contentMode = .scaleAspectFit
        icon.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        icon.heightAnchor.constraint(equalToConstant: view.frame.size.height).isActive = true
        return icon
    }()
    
    lazy var imageLogo: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "background"))
        icon.backgroundColor = UIColor.yellow
        icon.contentMode = .scaleToFill
        icon.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        icon.heightAnchor.constraint(equalToConstant: view.frame.size.height).isActive = true
        return icon
    }()
    
    lazy var imageView: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "hotel3"))
        icon.backgroundColor = UIColor.yellow
        icon.contentMode = .scaleToFill
        icon.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        icon.heightAnchor.constraint(equalToConstant: view.frame.size.height).isActive = true
        return icon
    }()
    
    lazy var imageView1: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "hotel2"))
        icon.backgroundColor = UIColor.yellow
        icon.contentMode = .scaleToFill
        icon.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        icon.heightAnchor.constraint(equalToConstant: view.frame.size.height).isActive = true
        return icon
    }()
    
    public override func viewDidLoad() {
        setUp()
        setupConstraints()
    }

    func setUp() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(stack)
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
    }
}


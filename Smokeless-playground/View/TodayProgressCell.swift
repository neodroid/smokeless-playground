//
//  TodayProgressCell.swift
//  Smokeless-playground
//
//  Created by Kevin ahmad on 12/06/22.
//


import UIKit

public class TodayProgressCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    let dateFormatter = DateFormatter()
    
    
    var dayLabel = ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"]
    var currDay = 0
    
    var container: UIView = {
        let view = UIView()
        
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.cornerRadius = 18
        view.layer.shadowOpacity = 0.3
        view.layer.shadowRadius = 3
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    var titleLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Wed"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .white
        return label
        
    }()
    
    var subtitleLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "12"
        label.font = UIFont.systemFont(ofSize: 45)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .left
        return label
    }()
    
    var bottomLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Cigarettes"
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .left
        return label
    }()
    
    //MARK: - Lifecycle
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
    func configureUI() {
        contentView.addSubview(container)
        container.anchor(top:contentView.topAnchor,left: contentView.leftAnchor,bottom: contentView.bottomAnchor,right: contentView.rightAnchor)
        
        container.addSubview(titleLabel)
        titleLabel.anchor(top:container.topAnchor,left: container.leftAnchor, right: container.rightAnchor,paddingTop: 20, paddingLeft: 10)
        titleLabel.centerX(inView: self)
        
        container.addSubview(bottomLabel)
        container.addSubview(subtitleLabel)
        subtitleLabel.anchor(left: container.leftAnchor,bottom: bottomLabel.topAnchor,right: container.rightAnchor ,paddingLeft: 10,paddingBottom: 5)
        
        
        bottomLabel.anchor(left: container.leftAnchor, bottom: container.bottomAnchor, right: container.rightAnchor, paddingLeft: 10, paddingBottom: 30)
        
        
    }
    
    public func setup(title: Int, subtitle: String) {
        if title == 0 {
            self.titleLabel.text = "Today Limit"
            self.subtitleLabel.text = "13"
            self.container.backgroundColor = .smokeLessBlue
        }else {
            self.titleLabel.text = "Today Cigarettes Consume"
            self.subtitleLabel.text = "10"
            self.container.backgroundColor = .smokeLessGreen
        }
            
        
        
        
    }
}

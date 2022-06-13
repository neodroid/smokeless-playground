//
//  CellBuilder.swift
//  Smokeless-playground
//
//  Created by Kevin ahmad on 12/06/22.
//


import UIKit

public class CellBuilder {
    
    public static func getDateCell(collectionView: UICollectionView, indexPath: IndexPath, startDay: Int, monthYear: String, pickedDay: String) -> UICollectionViewCell{
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dateCell", for: indexPath) as? DateCell {
            cell.setup(title: (indexPath.row + startDay - 1) % 7 , subtitle: "\(indexPath.row + 1)", monthYear: monthYear, pickedDay: pickedDay)
            return cell
        }else {
            return UICollectionViewCell()
        }
        
    }
    
    public static func getTopHeaderCell(collectionView: UICollectionView, indexPath: IndexPath, month: Int, year: Int) -> UICollectionViewCell{
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "topHeaderCell", for: indexPath) as? TopHeaderCell {
            cell.setup(title: "Tapering", subtitle: "Tapering Schedule", month: month,year: year)
            return cell
        }else {
            return UICollectionViewCell()
        }
        
    }
    public static func getTittleCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell{
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TittleCell", for: indexPath) as? TittleCell {
            cell.setup(title: "Today Progress")
            return cell
        }else {
            return UICollectionViewCell()
        }
        
    }
    
    public static func getProgressCell(collectionView: UICollectionView, indexPath: IndexPath, startDay: Int) -> UICollectionViewCell{
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TodayProgressCell", for: indexPath) as? TodayProgressCell {
            cell.setup(title: (indexPath.row ), subtitle: "\(indexPath.row)")
            return cell
        }else {
            return UICollectionViewCell()
        }
        
    }
    
}

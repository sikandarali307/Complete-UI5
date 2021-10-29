//
//  Corners.swift
//  Complete UI5 (iOS)
//
//  Created by Mac on 29/10/2021.
//

import SwiftUI

struct Corners: Shape {
    let corner : UIRectCorner
    let size:CGSize
    func path(in rect: CGRect) -> Path {
        
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: size)
        return Path(path.cgPath)
    }
    
    
}

 

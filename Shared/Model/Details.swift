//
//  Details.swift
//  Complete UI5 (iOS)
//
//  Created by Mac on 29/10/2021.
//

import SwiftUI

struct Details: Identifiable ,Hashable{
    var id = UUID().uuidString
    var image :String
    var text :String
    var index : Int
}
var Categories: [Details] = [Details( image: "desktopcomputer", text: "IT",index: 0),
                             Details( image: "quote.bubble.fill", text: "Content",index: 1),
                             Details( image: "photo.on.rectangle", text: "Culture",index: 2),
                             Details( image: "scissors", text: "Beauty",index: 3)
                            
                                    ]

 

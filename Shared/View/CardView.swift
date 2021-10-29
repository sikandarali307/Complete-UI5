//
//  CardView.swift
//  Complete UI5 (iOS)
//
//  Created by Mac on 29/10/2021.
//

import SwiftUI
  
struct CardView: View {
    @State var indexself = Int()
    var body: some View {
        
        HStack(spacing:25)
        {
            ForEach( Categories, id:\.self){
                category in
            VStack(spacing:12 )
            {
                Image(systemName: category.image)
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                Text(category.text)
                    .foregroundColor( self.indexself ==  category.index ? .white : .black)
            }
            .padding(.horizontal,10)
            .padding(.vertical , 30)
            .background( self.indexself  ==  category.index ? Color("Top"): Color.black.opacity(0.06))
            .clipShape(Capsule())
            .onTapGesture {
                self.indexself = category.index
            }
        }
        
        }
        .padding(.horizontal,25)
    }
    
}


 

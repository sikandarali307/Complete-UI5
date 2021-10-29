//
//  Home.swift
//  Complete UI5 (iOS)
//
//  Created by Mac on 29/10/2021.
//

import SwiftUI

struct Home :View{
    @State var index = 0
    var body: some View{
     //  Text("circle")
        VStack(spacing:0){
            HStack{
                Button
                {
                    
                }label: {
                    Image(systemName: "circle.grid.2x2")
                                    .font(.title)
                                    .foregroundColor(.white)
                }
                
                Spacer()
                        Button{
                
                        }label: {
                            Image("Profile")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                        }
            }
                .padding(.horizontal)
               
                .padding(.top,getsafearea().top + 5 )
                
                .padding(.bottom,80)
                .background(Color("Top"))
                .clipShape(Corners(corner:.bottomRight, size:CGSize(width: 55, height: 55)))
            HStack{
                VStack{
                    
                    //image....
                    
                    HStack{
                        Spacer()
                        Image("pic1")
                            .resizable()
                            .rotationEffect(.init(degrees: 190))
                            .frame(width: 170, height: 130)
                    }
                    //Welcome text heading
                    HStack{
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Welcom")
                                .font(.title)
                            Text("Find your \ndream Job")
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                            
                        }
                        .foregroundColor(.black)
                        Spacer()
                    }
                    .padding(.leading,30)
                }
                //seting custom width
                
                .padding(.bottom , 35)
                .frame(width: UIScreen.main.bounds.width - 100)
                .background(Color("Select"))
                .clipShape(Corners(corner: [.topLeft,.topRight,.bottomRight], size: CGSize(width: 70, height: 70)))
                Spacer()
            }
            .padding(.top,-70)
            
            
            
            
            ZStack{
            
                    Color("Select")
                ScrollView(.vertical, showsIndicators: false){
             
                    HStack{
                        Text("Explore Categories")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                        Spacer()
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "ellipsis")
                                .font(.title)
                        }
                        
                    }
                    .foregroundColor(.black)
                    .padding(.leading,25)
                    .padding(.top,50)
                    .padding(.trailing)
                   
                    ScrollView(.horizontal, showsIndicators: false) {
                         CardView()
                        }
                     HStack{
                        Text("Popular Research")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                        Spacer()
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "ellipsis")
                                .font(.title)
                        }
                       
                    }
                     .foregroundColor(.black)
                    .padding(.leading,25)
                    .padding(.top,25)
                    .padding(.trailing)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing:25){
                            VStack(spacing:10){
                                HStack{
                                    Spacer()
                                    Image("Pic1")
                                        .resizable()
                                        .frame(width: 100, height: 70 )
                                    
                                }
                                .padding(.bottom,-35)
                                HStack{
                                    VStack(alignment:.leading, spacing: 15){
                                        Text("UI/UX")
                                            .font(.title)
                                            .foregroundColor(.black)
                                        Text("Designer")
                                            .font(.title)
                                            .foregroundColor(.black)
                                        Text("4 Job Opppournity")
                                              .foregroundColor(.gray)
                                        
                                    }
                                    Spacer()
                                }
                                .padding(.leading,25)
                            }
                            //custom setting width
                            .padding(.bottom,20 )
                            .frame(width: UIScreen.main.bounds.width / 2)
                            .background( self.index == 0 ? Color("Select"): Color.black.opacity(0.06))
                            .cornerRadius(35)
                            .onTapGesture {
                                self.index = 0
                            }
                            
                            
                            //second
                            VStack(spacing:10){
                                HStack{
                                    Spacer()
                                    Image("Pic1")
                                        .resizable()
                                        .frame(width: 100, height: 70 )
                                    
                                }
                                .padding(.bottom,-35)
                                HStack{
                                    VStack(alignment:.leading, spacing: 15){
                                        Text("IOS")
                                            .font(.title)
                                            .foregroundColor(.black)
                                        Text("Developers")
                                            .font(.title)
                                            .foregroundColor(.black)
                                        Text("15 Job Opppournity")
                                              .foregroundColor(.gray)
                                        
                                    }
                                    Spacer()
                                }
                                .padding(.leading,25)
                            }
                            //custom setting width
                            .padding(.bottom,20 )
                            .frame(width: UIScreen.main.bounds.width / 2)
                            .background( self.index == 1 ? Color("Select"): Color.black.opacity(0.06))
                            .cornerRadius(35)
                            .onTapGesture {
                                self.index = 1
                            }
                        }
                        .padding(.horizontal,25)
                    }
                    .padding(.top,25)
                    .padding(.bottom,getsafearea().bottom + 10)
                       
                }
                .background(Color.white)
                .clipShape(Corners(corner: [.topLeft], size: CGSize(width: 70, height: 70)))
       
            }
                Spacer()
            
        }
        .edgesIgnoringSafeArea(.all)
         .statusBar(hidden: true)
      
    }
    
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
extension View{
    func getsafearea()->UIEdgeInsets{
       guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene
            else {
                return .zero
            }
            guard let Safearea = screen.windows.first?.safeAreaInsets
            else{
                return .zero
            }
            return Safearea
        }
        
    }

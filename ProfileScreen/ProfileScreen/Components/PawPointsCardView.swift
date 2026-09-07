//
//  HeaderView.swift
//  DemoScreen
//
//  Created by Shashi Pandey on 03/09/26.
//

import SwiftUI

struct PawPointsCardView: View {
    var body: some View {
        ZStack{
            Card(width: 350, height: 200,color: .brown.opacity(0.99))
            Card1(width: 350, height: 220)
            Card2(width: 350, height: 220)


        }
        
    }
    
}


#Preview{
    PawPointsCardView()
}

//layer 1 card

struct Card:View{
var width:CGFloat
    var height:CGFloat
    var color:Color
    
    init(width: CGFloat, height: CGFloat, color: Color) {
        self.width = width
        self.height = height
        self.color = color
    }
    
    
    var body: some View {
           ZStack {
               RoundedRectangle(cornerRadius: 18)
                   .fill(color)
                   .frame(width: width, height: height)


           }

       }
    
}

//header content on layer 1 card
struct Card1:View{
var width:CGFloat
    var height:CGFloat
    
    init(width: CGFloat, height: CGFloat) {
        self.width = width
        self.height = height
    }
    var body: some View {

               HStack {
                   Text("Woofly")
                       .font(.custom("Poppins-Regular", size: 22))
                       .fontWeight(.heavy)
                       .foregroundColor(.black)
                   
                   Spacer()
ZStack{
                       RoundedRectangle(cornerRadius: 15)
                           .fill(Color.black)
                           .frame(width: 140, height: 28)
    Text("GOLD MEMBER")
        .font(.system(size: 16, weight: .bold, design: .rounded))
        .foregroundColor(.brown.opacity(0.99))
                      
                   }
               }
               .padding(.horizontal, 18)
               .frame(width: width, height: height, alignment: .top)
               .padding(.top, 50)
           }
    
}


//footer content on layer 1 card
struct Card2:View{
var width:CGFloat
    var height:CGFloat
    
    init(width: CGFloat, height: CGFloat) {
        self.width = width
        self.height = height
    }
    var body: some View {

        HStack (alignment: .top){
                   VStack(alignment: .leading,spacing: 6){
                       HStack (alignment: .firstTextBaseline, spacing: 4){
                           
                           
                           Text("450 ")
                               .font(.custom("Poppins-Bold", size: 20))
                           
                           Text("Paw Points ")
                               .font(.custom("Poppins-Bold", size: 15))
                           
                       }
                       
                       Text("You're close to a free treat")
                           .font(.custom("Poppins-Regular", size: 14))
                       
                       // program bar
                       ZStack(alignment: .leading){
                           Capsule()
                               .frame(width: 160, height: 6)
                               .foregroundColor(.black)
                           
                           Capsule()
                               .frame(width: 120, height: 6)
                               .foregroundColor(.white)
                       }
                       
                   }
                   
                   
                   .foregroundColor(.white)
                   .padding(.top, 120)


                   
                   Spacer()
//            reedem
                   
ZStack{
                       RoundedRectangle(cornerRadius: 15)
                           .fill(Color.white.opacity(0.25))
                           .frame(width: 100, height: 28)
                Text("Reedem")
        .font(.system(size: 16, weight: .medium, design: .rounded))
        .foregroundColor(.black)
                      
                   }
.padding(.top, 150)

               }
               .padding(.horizontal, 18)
               .frame(width: width, height: height, alignment: .top)
               .padding(.top, 10)
           }
    
}


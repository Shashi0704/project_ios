//
//  HeaderView.swift
//  DemoScreen
//
//  Created by Shashi Pandey on 03/09/26.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 20){
            ZStack{
                CircularEmptyView( size: 150 )
                    
                
                CircularEmptyView1(width: 45, height: 45, color: .white)
                    .offset(x:57, y:45)
                    .shadow(radius: 5)
                

            }
            

           
            Text("Sarah & Bruster")
                .font(.title)
                .fontWeight(.bold)
            
            
            Text("Woofly Member since 2001")
                .font(.title3)
                .foregroundStyle(.secondary)
        }
        .padding(.horizontal, 18)
        .padding(.top, 10)
    }
}
#Preview {
    ProfileHeaderView()
}
struct CircularEmptyView: View {
    var width: CGFloat
    var height: CGFloat
    var color: Color
    
    init(width: CGFloat, height: CGFloat, color: Color = Color.blue) {
        self.width = width
        self.height = height
        self.color = color
    }
    
     init(size: CGFloat, color: Color = Color.blue) {
         self.width = size
         self.height = size
         self.color = color
    }
    
    var body: some View {
        // We use a clean layout container since EmptyView itself has no size
        ZStack {
            Image(.image)
                .resizable()
        }
        .frame(width: width, height: height) // 1. Defines the size
        .background(color.gradient) // 2. Adds the background color/gradient
        .clipShape(Circle())             // 3. Cuts the background into a perfect circle
        .shadow(radius: 5)               // Optional: Adds depth
    }
}

struct CircularEmptyView1: View {
    var width: CGFloat
    var height: CGFloat
    var color: Color
    
    init(width: CGFloat, height: CGFloat, color: Color = Color.blue) {
        self.width = width
        self.height = height
        self.color = color
    }
    
     init(size: CGFloat, color: Color = Color.blue) {
         self.width = size
         self.height = size
         self.color = color
    }
    
    var body: some View {
        // We use a clean layout container since EmptyView itself has no size
        ZStack {


               Image(systemName: "pencil")
                   .font(.system(size: 22, weight: .bold))
//                   .offset(x:0, y:3)

                   
            Image(systemName: "circle")
                    .font(.system(size: 22, weight: .bold))
                    .offset(x:-4, y:4)
           


        }
        .frame(width: width, height: height) // 1. Defines the size
        .background(color.gradient) // 2. Adds the background color/gradient
        .clipShape(Circle())             // 3. Cuts the background into a perfect circle
        .shadow(radius: 5)               // Optional: Adds depth
    }
}

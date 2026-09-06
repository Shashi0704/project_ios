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
                
                CircularEmptyView(width: 50, height: 50, color: .white)
                    .offset(x:57, y:45)

            }
            
//            CircularEmptyView()
//            Image(.image)
//                .clipShape(Circle())
////               .frame(width: 5, height: 5)
////                .font(.system(size:50, design: .rounded))
//            EmptyView().background(.blue).clipShape(Circle())
           
            Text("Sarah & Bruster")
                .font(.title)
                .fontWeight(.bold)
            
            
            Text("Woofly Member since 2001")
                .font(.title3)
                .foregroundStyle(.secondary)
        }
        .padding(.horizontal, 20)
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
            EmptyView()
        }
        .frame(width: width, height: height) // 1. Defines the size
        .background(color.gradient) // 2. Adds the background color/gradient
        .clipShape(Circle())             // 3. Cuts the background into a perfect circle
        .shadow(radius: 5)               // Optional: Adds depth
    }
}

//
//  HeaderView.swift
//  DemoScreen
//
//  Created by Shashi Pandey on 03/09/26.
//

import SwiftUI

struct bottom:View{
    let name: String
    let icon: String
    let select:Bool
    let action: () -> Void

    var body: some View{
        Button( action: action){
            VStack{
                Image(systemName: icon)
                    .font(.system(size: 20))
                Text(name)
                    .font(.title2)
            }
            .foregroundStyle(select ? Color(red: 0.976, green: 0.780, blue: 0.549): .secondary)
            .frame(maxWidth: .infinity)
            
        }
    }
}


struct BottomTabBar: View {
    @State private var selectedTab = 3

    var body: some View {
        HStack{
            
            bottom(
                name: "Home",
                icon: "house.fill",
                select: selectedTab == 0
            ){
                selectedTab = 0
            }
            bottom(
                name: "Store",
                icon: "square.grid.2x2.fill",
                select: selectedTab == 1
            ){
                selectedTab = 1
            }
            bottom(
                name: "Cart",
                icon: "cart.fill",
                select: selectedTab == 2
            ){
                selectedTab = 2
            }
            bottom(
                name: "Profile",
                icon: "person.fill",
                select: selectedTab == 3
            ){
                selectedTab = 3
            }
        }
        .padding()
    }
}

#Preview {
    BottomTabBar()
}

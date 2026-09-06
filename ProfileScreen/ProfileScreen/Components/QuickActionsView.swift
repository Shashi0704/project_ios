//
//  HeaderView.swift
//  DemoScreen
//
//  Created by Shashi Pandey on 03/09/26.
//

import SwiftUI

struct QuickAction: View {
    
    let icon: String
    let title: String
    let select: Bool
    let action: () -> Void
    var body: some View {
        Button(action: action){
            VStack (spacing:6){
                Image(systemName: icon)
                Text(title)
                    .font(.caption)
            }
            .foregroundStyle(select ? .blue: .secondary)
            .frame(maxWidth: .infinity)
        }
    }
}

struct QuickActionsView: View {
    @State private var selectedAction = " "

    var body: some View {
        
        HStack(spacing: 20) {
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.white.opacity(0.25))
                    .frame(width: 50, height: 50)
                QuickAction(
                    icon: "bag.fill",
                    title: "Orders",
                    select: selectedAction=="Orders"
                ) {
                    selectedAction="Orders"
                }
                
            }
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.white.opacity(0.25))
                    .frame(width: 50, height: 50)
                QuickAction(
                    icon: "heart.fill",
                    title: "Wishlist",
                    select: selectedAction=="Wishlist"
                ) {
                    selectedAction="Wishlist"
                }
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.white.opacity(0.25))
                    .frame(width: 50, height: 50)
                
                QuickAction(
                    icon: "mappin.circle.fill",
                    title: "Address",
                    select: selectedAction=="Address"
                ) {
                    selectedAction="Address"
                }
            }

            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.white.opacity(0.25))
                    .frame(width: 50, height: 50)
            
            QuickAction(
                icon: "questionmark.circle.fill",
                title: "Help",
                select: selectedAction=="Help"
            ) {
                selectedAction="Help"
            }
            }
        }
    }
}
#Preview {
    QuickActionsView()
}

//
//  ContentView.swift
//  DemoScreen
//
//  Created by Shashi Pandey on 03/09/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isDarkMode = false
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack(spacing:0){
                
                //  top section
                HeaderView(isDarkMode : $isDarkMode)
                
                 ScrollView {
                    VStack(spacing:20){
                        
                        //profile
                        
                        ProfileHeaderView()
                        
                        
//                        //membership card
                        PawPointsCardView()
//
//                        // Quick actions
                        QuickActionsView()
//
//                        // best frnd
//                        BestFriendView()
                        
                        
                    }

                    
                    .padding(.horizontal,20)
                   .padding(.top,15)
//                    .padding(.bottom,20)
                }
                BottomTabBar()
            }
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}

#Preview {
    ContentView()
}

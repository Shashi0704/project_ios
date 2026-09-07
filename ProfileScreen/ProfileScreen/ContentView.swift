//
//  ContentView.swift
//  DemoScreen
//
//  Created by Shashi Pandey on 03/09/26.
//

import SwiftUI

//import SwiftUI

struct ContentView: View {
    
    @State private var isDarkMode = false
    
    var body: some View {
        ZStack {
            
            // Screen background
            (isDarkMode
             ? Color(red: 18/255, green: 18/255, blue: 18/255)   // Dark blacl
             : Color(red: 1.0, green: 0.945, blue: 0.953))      // Light pink 
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                // Top section
                HeaderView(isDarkMode: $isDarkMode)
                
                ScrollView {
                    VStack(spacing: 20) {
                        
                        // Profile
                        ProfileHeaderView()
                        
                        // Membership card
                        PawPointsCardView()
                        
                        // Quick actions
                        QuickActionsView()
                        
                        // Best friend
                        BestFriendView()
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 15)
                }
                
                // Bottom bar
                BottomTabBar()
            }
        }
        // This controls Light/Dark system appearance
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

#Preview {
    ContentView()
}

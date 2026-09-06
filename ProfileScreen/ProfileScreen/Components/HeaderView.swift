//
//  HeaderView.swift
//  DemoScreen
//
//  Created by Shashi Pandey on 03/09/26.
//

import SwiftUI
struct HeaderView:View{
    @Binding var isDarkMode: Bool

    var body: some View {
        HStack{
            
            Image(.image).resizable().frame(width: 25, height: 25).clipShape(Circle())
            Spacer()
            
            Text("Woofly Profile").font(.subheadline).bold(true)
            Spacer()
            
            Toggle("", isOn: $isDarkMode).labelsHidden()
        }
        .padding()
        
    }
}
#Preview {
    HeaderView(isDarkMode: .constant(false))
}

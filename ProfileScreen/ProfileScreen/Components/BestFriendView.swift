//
//  HeaderView.swift
//  DemoScreen
//
//  Created by Shashi Pandey on 03/09/26.
//
import SwiftUI

struct BestFriendView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text("My Best Friend")
                    .font(.headline)
                
                Spacer()
                
                Button("Edit") {
                    
                }
            }
            
            VStack{
                HStack {
                    Image(systemName: "dog.fill")
                        .font(.title)
                    
                    VStack(alignment: .leading) {
                        Text("Buster 🐾")
                            .font(.headline)
                        
                        Text("Golden Retriever • 3 Years Old")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                    
                    Spacer()
                }
                
            }
            
            .frame(maxWidth: .infinity)
            .frame(height: 150)
            .background(Color(red: 0.70, green: 0.58, blue: 0.45))
            .clipShape(RoundedRectangle(cornerRadius: 18))
            
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    BestFriendView()
}

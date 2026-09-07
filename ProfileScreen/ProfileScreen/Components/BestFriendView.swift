//
//  HeaderView.swift
//  DemoScreen
//
//  Created by Shashi Pandey on 03/09/26.
//
import SwiftUI

struct BestFriendView: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline){
            Text("My Best Friend")
                .font(Font.system(size: 20, weight: .semibold, design: .rounded))
            
            Spacer()
            
            EditButton()
                
        }
        .padding(.horizontal, 18)
        
        ZStack{
            frndcard(width: 350, height: 150,color: .white.opacity(0.99)
)
           
        }
        .padding(.top,8)
        .padding(.horizontal,18)

        
    }
}

#Preview {
    BestFriendView()
}

struct frndcard:View {
    var width:CGFloat
    var height:CGFloat
    var color:Color
    
    init (width: CGFloat, height: CGFloat , color: Color){
        self.width = width
        self.height = height
        self.color = color
    }
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(color)
                .frame(width: width, height: height)

            HStack(alignment: .top,spacing: 6) {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Buster")
                        .font(.system(size: 20, weight: .bold, design: .rounded))

                    Text("Golden Retriever . 3 Years Old")
                        .font(.system(size: 12, weight: .regular, design: .rounded))
                    
                    HStack{
                        Button("PLAYS FETCH") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .font(.system(size: 10, weight: .regular, design: .rounded))
                        .foregroundStyle(Color(red: 0.55, green: 0.05, blue: 0.05))
                        .buttonStyle(.borderedProminent)
                        .frame(width: 95,height: 50)
                        .tint(Color(red: 1.0, green: 0.75, blue: 0.75))


                        Spacer()
                        
                        Button("GOOD BOY") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .font(.system(size: 10, weight: .regular, design: .rounded))
                        .foregroundStyle(Color(red: 46/255, green: 125/255, blue: 50/255)) // Dark green
                        .buttonStyle(.borderedProminent)
                        .frame(width: 85,height: 50)
                        .tint( Color(red: 223/255, green: 243/255, blue: 227/255))


                    }
                }


                Spacer()

                Image(.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 80)
                    .cornerRadius(20)
                    .clipShape(.rect(cornerRadius: 30))
            }
            
           

            
            .padding(.horizontal, 18)
                .padding(.top, 25)
                .frame(width: width, height: height, alignment: .top)        }
    }
}


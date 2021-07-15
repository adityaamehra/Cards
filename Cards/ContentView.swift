//
//  ContentView.swift
//  Cards
//
//  Created by Adityaa Mehra on 15/07/21.
//

import SwiftUI

struct ContentView: View {
    var transparentColor = Color(red: 0, green: 0, blue: 0 , opacity: 0)
    var body: some View {
        GeometryReader { geo in
            ZStack{
                Rectangle().foregroundColor(.green)
                Image("raya").resizable().scaledToFill().offset(x: 0, y: -80)
                //Content
                Circle().fill(LinearGradient(gradient: Gradient(colors: [Color.blue, transparentColor]), startPoint: .top, endPoint: .bottom)).frame(width: 170).offset(x: (geo.size.width - 40) / 2  - 20, y: -geo.size.height / 2 - 40)
                VStack{
                    HStack{
                        Spacer()
                        Text("Disney +").foregroundColor(.white).bold()
                    }.padding([.top , .horizontal])
                    Spacer()
                    ZStack (alignment: .leading){
                        Rectangle().foregroundColor(.white).frame(height: 80)
                        
                        VStack(alignment: .leading){
                            Text("Raya and the Last Dragon").font(.headline)
                            Text("This is a great movie for adults and children alike").font(.caption)
                        }.padding(.horizontal).padding(.bottom)
                    }
                    
                }
            }.cornerRadius(15).shadow(radius: 10).padding()
        }.frame(height: 500)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

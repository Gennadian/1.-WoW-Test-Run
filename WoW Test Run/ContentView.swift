//
//  ContentView.swift
//  WoW Test Run
//
//  Created by Геннадий Живайкин on 11.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State var wowLevelup = 1
    @State var wowMythic = 1
    @State var wowMounts = 1
    @State var playerDiscount = 0
    var body: some View {
        
        
        
        
        
        
        
        VStack {
            
        Spacer()
            Text("WoW Discount!")
                .font(.largeTitle)
            
            Spacer()
            
            Text("Score: \(playerDiscount)")
                .font(.largeTitle)
            
            Spacer()
            
            HStack {
            Spacer()
                Image("wow\(wowMounts)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75, height: 75)
                
        Spacer()
            Image("wow\(wowMythic)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:75, height:75)
            
            Spacer()
                
            Image("wow\(wowLevelup)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75, height: 75)
                
                Spacer()
        
            }
            
            Spacer()
            Button(action: {
                
                
                wowMounts = Int.random(in: 1...3)
                wowMythic = Int.random(in: 1...3)
                wowLevelup = Int.random(in: 1...3)
                
                if wowMounts == wowMythic && wowMythic == wowLevelup {
                    
                    playerDiscount += 500
                    
                }
                
                else {
                    
                    playerDiscount -= 100
                    
                }
                
                
            }, label: {
                
                
                Text("Free Dicsount!")
                    .font(.largeTitle)
                    
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 40.0)
                    .padding(.vertical, 25.0)
                    .background(Color(.systemPink))
                    .cornerRadius(75)
                    
                    
            })
            Spacer()
            
        }
    }
}

        struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }}
    


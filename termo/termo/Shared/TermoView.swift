//
//  ContentView.swift
//  Shared
//
//  Created by Pedro Henrique Catanduba De Andrade on 06/03/22.
//

import SwiftUI

struct TermoView: View {
    let trysNumber: Int = 6
    let letters: Int = 5
    let isAllowedConfirm: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("TERMO").foregroundColor(.white)
            }
            
            Spacer()
            VStack {
                ForEach((1...trysNumber).reversed(), id: \.self) { (line: Int) in
                    HStack {
                        ForEach((1...5).reversed(), id: \.self) { (square: Int) in
                            HStack {
                                Text("\(line)").foregroundColor(.white)
                            }
                            .frame(minWidth: 50, minHeight: 50)
                            .background(Color.gray)
                            .border(Color.gray, width: 5)
                            .cornerRadius(10)
                        }
                        .padding(3.5)
                    }
                }
            }
            .padding(EdgeInsets(top: 20, leading: 0, bottom: 70, trailing: 0))
            
            Spacer()
            
            HStack {
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("APAGAR")
                        .foregroundColor(Color.black)
                        .padding()
                }.background(Color.gray)
                    .border(Color.gray)
                    .cornerRadius(10)
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                Button {
                    
                } label: {
                    Text("CONFIRMAR")
                }
                .contrast(isAllowedConfirm ? 1 : 0)
                
                Spacer()
            }
            
            Divider()
            Spacer()
        }
        .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TermoView()
    }
}

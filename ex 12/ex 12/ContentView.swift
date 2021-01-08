//
//  ContentView.swift
//  ex 12
//
//  Created by bibi on 08/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
      MainView()
        .environmentObject(Env())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MainView: View{
    @EnvironmentObject var env: Env
    var body : some View{
        VStack{
            Text("مرحباً بك في الكويت تبرمج")
                .padding(.bottom, 50)
                .foregroundColor(.blue)
                .font(.title)
            Button(action: {
                env.isMentor.toggle()
            }, label: {
                Text("ادخل بياناتك")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.opacity(0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
            })
            
            .sheet(isPresented: $env.isMentor){
                secondPage(env: env)
            }
            if env.name != "" {
                HStack {
                    Spacer()
                    VStack(alignment: .trailing, spacing: 10){
                        Text("الاسم:  \(env.name)")
                        Text(" العمر:  \(env.age)")
                        Text("الهاتف:  \(env.phone)")
                    }
                    .font(.title)
                    .padding()
                }
            }
        }
    }
}

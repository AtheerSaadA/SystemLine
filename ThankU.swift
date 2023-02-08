//
//  ThankU.swift
//  SystemLine
//
//  Created by AtheerAlshehri on 07/02/2023.
//

import SwiftUI

struct ThankU: View {

    @State var isActive:Bool = false

    var body: some View {
        
        ZStack{
            
            Image("PG")
            
            VStack{
                Text("Thank you !")
                    .font(.system(size: 76))
                    .foregroundColor(Color("Bluee"))
                    .padding()
                
                Text("The respond to your request will sent to your email after verify your info.")
                    .font(.title3)
                    .foregroundColor(Color("Bluee"))
                
            }
            
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}
struct ThankU_Previews: PreviewProvider {
    static var previews: some View {
        ThankU()
    }
}

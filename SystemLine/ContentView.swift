//
//  ContentView.swift
//  SystemLine
//
//  Created by AtheerAlshehri on 07/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State var CName = ""
    @State var CEmail = ""
    @State var CommercialRegister = ""
    @State var TaxNumber = ""
    //    Commercial register
    //    Tax number
    //    Company email
    
    
    var body: some View {
        //        NavigationView {
        
        VStack {
            Text("Registration")
                .font(.largeTitle)
                .padding(.top, -120.0)
                .foregroundColor(Color("Bluee"))
            
            TextField("Company Name", text: $CName)
                .font(.title2)
                .padding(11)
                .font(.title2)
                .frame(width: 500, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("Bluee"), lineWidth: 3)
                )
                .padding(.trailing, 600.0)
                .padding()
            
            TextField("Company Email ", text: $CEmail)
                .font(.title2)
                .padding(11)
                .font(.title2)
                .frame(width: 500, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("Bluee"), lineWidth: 3)
                )
                .padding(.trailing, 600.0)
                .padding()
            
            TextField("Commercial register", text: $CommercialRegister)
                .font(.title2)
                .padding(11)
                .font(.title2)
                .frame(width: 500, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("Bluee"), lineWidth: 3)
                )
                .padding(.trailing, 600.0)
                .padding()
            Button {
                print("Upload the commercial register")
            } label: {
                Text("Upload the commercial register ")
                    .foregroundColor(.black)
                // .padding(.trailing, 800.0)
                Image(systemName: "square.and.arrow.up")
                    .foregroundColor(.black)
                    .padding(.trailing, 830.0)
            }
            
            TextField("Tax Number", text: $TaxNumber)
                .font(.title2)
                .padding(11)
                .font(.title2)
                .frame(width: 500, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("Bluee"), lineWidth:3)
                )
                .padding(.trailing, 600.0)
                .padding()
            
            HStack{
                Button {
                    print("")
                } label: {
                    Text("Upload Company logo ")
                        .foregroundColor(.black)
                    Image(systemName: "square.and.arrow.up")
                }
                .foregroundColor(.black)
                .frame(width: 400, height: 400)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("Bluee"), lineWidth: 3)
                )
                .padding(.leading, 600.0)
                .padding(.top, -400.0)
            }
            
            
            
            Button(action: { }) {
                Text("Submit").padding()
                .foregroundColor(.white)            }
            
            .background(RoundedRectangle(cornerRadius: 8)
                .fill(Color("Bluee"))
                .frame(width: 320, height: 60)
            )
            .padding(.top, 100.0)
            
        }
        
        //            
        //            HStack{
        //                
        //                NavigationLink(
        //                    destination: ThankU().navigationBarHidden(true),
        //                    label: {
        //                  Button(action: { }) {
        //        Text("Submit").padding()
        //        .foregroundColor(.white)            }
        //
        //    .background(RoundedRectangle(cornerRadius: 8)
        //        .fill(Color("Bluee"))
        //        .frame(width: 320, height: 60)
        //    )
        //    .padding(.top, 100.0)
        //
        //                        
        //                        
        //                    })
        //            }
        
        // }
        
        .padding(.top, 100.0)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

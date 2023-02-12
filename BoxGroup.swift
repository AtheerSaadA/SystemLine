////
////  BoxGroup.swift
////  SystemLine
////
////  Created by AtheerAlshehri on 12/02/2023.
////
//
//import SwiftUI
//import UIKit
//
//
//struct BoxGroup: View {
//    
//    @State var CName = ""
//    @State var CEmail = ""
//    @State var CommercialRegister = ""
//    @State var TaxNumber = ""
//    
//    var body: some View {
//   VStack{
//       
//       Text("Registration")
//           .font(.largeTitle)
//           .padding(.top, -60.0)
//           .foregroundColor(Color("Bluee"))
//       
//       TextField("Company Name", text: $CName)
//           .font(.title2)
//           .padding(11)
//           .font(.title2)
//           .frame(width: 500, height: 50)
//           .overlay(
//               RoundedRectangle(cornerRadius: 8)
//                   .stroke(Color("Bluee"), lineWidth: 3)
//           )
//           .padding(.trailing, 600.0)
//           .padding()
//       
//       TextField("Company Email ", text: $CEmail)
//           .font(.title2)
//           .padding(11)
//           .font(.title2)
//           .frame(width: 500, height: 50)
//           .overlay(
//               RoundedRectangle(cornerRadius: 8)
//                   .stroke(Color("Bluee"), lineWidth: 3)
//           )
//           .padding(.trailing, 600.0)
//           .padding()
////
////            TextField("Commercial register", text: $CommercialRegister)
////                .font(.title2)
////                .padding(11)
////                .font(.title2)
////                .frame(width: 500, height: 50)
////                .overlay(
////                    RoundedRectangle(cornerRadius: 8)
////                        .stroke(Color("Bluee"), lineWidth: 3)
////                )
////                .padding(.trailing, 600.0)
////                .padding()
////            Button {
////                print("Upload the commercial register")
////            } label: {
////                Text("Upload the commercial register ")
////                    .foregroundColor(.black)
////                Image(systemName: "square.and.arrow.up")
////                    .foregroundColor(.black)
////                    .padding(.trailing, 830.0)
////            }
////
//       TextField("Tax Number", text: $TaxNumber)
//           .font(.title2)
//           .padding(11)
//           .font(.title2)
//           .frame(width: 500, height: 50)
//           .overlay(
//               RoundedRectangle(cornerRadius: 8)
//                   .stroke(Color("Bluee"), lineWidth:3)
//           )
//           .padding(.trailing, 600.0)
//           .padding()
// 
//
//       Button(action: { }) {
//           Text("Submit").padding()
//           .foregroundColor(.white)
//           
//       }
//       
//       .background(RoundedRectangle(cornerRadius: 8)
//           .fill(Color("Bluee"))
//           .frame(width: 320, height: 60)
//       )
//       .padding(.top, 50.0)
// // photopicker()
//   }
//    }
//}
//
//struct BoxGroup_Previews: PreviewProvider {
//    static var previews: some View {
//        BoxGroup()
//    }
//}

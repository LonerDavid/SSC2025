//
//  FoodListView.swift
//  SSC2025
//
//  Created by Loner David on 2025/2/14.
//

import SwiftUI

struct CheckinView: View {
  
  var body: some View {
    TimelineView(.periodic(from: Date(), by: 1)){ currentTime in
      ScrollView {
        Grid(horizontalSpacing: 10, verticalSpacing: 10) {
          GridRow {
            HStack(alignment: .center){
              Button {
                print("QR Code")
              } label: {
                VStack {
                  HStack {
                    Text("QR code")
                    Spacer()
                    Image(systemName: "chevron.right")
                  }
                  .padding()
                  .font(.title3)
                  .fontWeight(.semibold)
                  .foregroundStyle(Color("MainTextColor"))
                  
                  Image(systemName: "qrcode.viewfinder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 90, alignment: .center)
                    .foregroundStyle(Color("MainTextColor"))
                    .padding(.horizontal)
                    .padding(.bottom)
                }
                .background {
                  RoundedRectangle(cornerRadius: 10)
                    .fill(Color.accent)
                }
              }
              
              Button {
                print("NFC")
              } label: {
                VStack {
                  HStack {
                    Text("NFC")
                    Spacer()
                    Image(systemName: "chevron.right")
                  }
                  .padding()
                  .font(.title3)
                  .fontWeight(.semibold)
                  .foregroundStyle(Color("MainTextColor"))
                  
                  Image(systemName: "wave.3.forward.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 90, alignment: .center)
                    .foregroundStyle(Color("MainTextColor"))
                    .padding(.horizontal)
                    .padding(.bottom)
                }
                .background {
                  RoundedRectangle(cornerRadius: 10)
                    .fill(Color.accent)
                }
                
              }
            }
          }
          GridRow {
            HStack {
              VStack(alignment: .leading) {
                Text("Current Time:")
                  .font(.title2)
                Text(currentTime.date, style: .date)
                Text(currentTime.date, style: .time)
              }
              Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding()
            .fontWeight(.semibold)
            .background {
              RoundedRectangle(cornerRadius: 10)
                .fill(Color.accent)
            }
          }
        }
      }
      .padding()
      .navigationTitle("Check-In")
    }
  }
//  
//  func dateToDateString(_ date:Date) -> String {
//      let timeZone = NSTimeZone.local
//      let formatter = DateFormatter()
//      formatter.timeZone = timeZone
//      formatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
//      let date = formatter.string(from: date)
//      return date
//  }
}

#Preview {
  NavigationStack {
    CheckinView()
  }
}

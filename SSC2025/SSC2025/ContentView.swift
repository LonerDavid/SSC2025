//
//  ContentView.swift
//  SSC2025
//
//  Created by Loner David on 2025/2/9.
//

import SwiftUI

struct ContentView: View {
  let date = Date()
  let formatter = DateFormatter()
  
  var body: some View {
    NavigationStack {
      ScrollView {
        Grid {
          GridRow {
            NavigationLink {
              CheckinView()
            } label: {
              VStack (alignment: .leading, spacing: 5){
                HStack {
                  Text("Check-In")
                  Spacer()
                  Image(systemName: "chevron.right")
                }
                .font(.headline)
                .foregroundStyle(Color("MainTextColor"))
                
                Spacer()
                
//                Text(dateToDateString(date))
                //temporary
                Image(systemName: "person.fill.checkmark")
                  .font(.title)
                  .fontWeight(.semibold)
                  .foregroundStyle(Color("SecondaryTextColor"))
              }
              .padding()
            }
            .frame(minHeight: 150)
            .background {
              RoundedRectangle(cornerRadius: 10)
                .fill(Color.accent)
            }
            .padding()
            
            
          }
          GridRow {
            NavigationLink {
              CheckinView()
            } label: {
              VStack (alignment: .leading, spacing: 5){
                HStack {
                  Text("Statistics")
                  Spacer()
                  Image(systemName: "chevron.right")
                }
                .font(.headline)
                .foregroundStyle(Color("MainTextColor"))
                
                Spacer()
                
                HStack {
                  //temporary
                  Image(systemName: "chart.bar.xaxis")
                    .font(.title)
                    .foregroundStyle(Color("SecondaryTextColor"))
                }
              }
              
              .padding()
            }
            .frame(minHeight: 150)
            .background {
              RoundedRectangle(cornerRadius: 10)
                .fill(Color.accentColor)
            }
            .padding(.horizontal)
            .padding(.bottom)
            
          }
          GridRow {
            Text("More Functions Under Development...")
              .frame(maxWidth: .infinity)
              .padding()
              .fontWeight(.semibold)
              .background {
                RoundedRectangle(cornerRadius: 10)
                  .fill(Color.accent)
              }
          }
          .padding(.horizontal)
        }
      }
      .navigationTitle("Main Page")
      
    }
  }
}

#Preview {
  ContentView()
}

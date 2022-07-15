//
//  HomeView.swift
//  gastrack
//
//  Created by Nate Schaffner on 6/14/22.
//

import SwiftUI



struct HomeView: View {
    
    var fuelLogItems: [FuelLogEntry] = [
        FuelLogEntry(timestamp: Date(), locationName: "BJ's Vineland", mileage: 42001, price: 2.739, amount: 11.376, totalCost: 31.16),
        FuelLogEntry(timestamp: Date(), locationName: "Wawa Bridgeton", mileage: 42403, price: 2.999, amount: 14.339, totalCost: 43.00)
    ]
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("Nate's Gas Tracking App")
                }
                Spacer()
            NavigationLink("log entry", destination: fuelLogItemEntry(newLogEntry: logInput(locationName: "new location", mileage: "10042", timestamp: "1/1/1970", amount: "5.000", price: "4.999", totalcost: "25.01"))).isDetailLink(true)
                
                Spacer()
                List{
                    ForEach(fuelLogItems){ logItem in
                        fuelLogItem(displayItem: logItem)
                    }
                }
            }
        }
        }
        
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//
//  fuelLogItem.swift
//  gastrack
//
//  Created by Nate Schaffner on 6/14/22.
//

import SwiftUI

struct FuelLogEntry{
    var id = UUID()
    var timestamp: Date
    var locationName: String
    var mileage: Int
    var price: Double
    var amount: Double
    var totalCost: Double
}

extension FuelLogEntry: Identifiable{
    
}


struct fuelLogItem: View {
    var displayItem: FuelLogEntry
    
  

    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text(displayItem.locationName)
                Spacer()
            }
            HStack{
                
                Text( displayItem.timestamp, style: .date)
                
                Text( displayItem.timestamp, style: .time)
                Spacer()
                Text(String(format:"%dm", displayItem.mileage))
            }
            HStack{
                //Spacer()
                //Text("Amount:")
                //Spacer()
                Text(String(format: "%.03fg", displayItem.amount))
                
                Spacer()
                Text("@")
                Spacer()
                Text(String(format:"$%.03f/g", displayItem.price))
                Spacer()
                Text("=")
                Spacer()
                Text(String(format: "$%.02f", displayItem.totalCost))
                //Spacer()
            }
        }
    }
}

struct fuelLogItem_Previews: PreviewProvider {
    static var previews: some View {
        fuelLogItem(displayItem: FuelLogEntry(timestamp: Date(), locationName: "new location", mileage: 42000, price: 4.999, amount: 15.123, totalCost: 75.60))
    }
}

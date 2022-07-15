//
//  fuelLogItemEntry.swift
//  gastrack
//
//  Created by Nate Schaffner on 6/14/22.
//

import SwiftUI

struct logInput{
    var locationName: String
    var mileage: String
    var timestamp: String
    var amount: String
    var price: String
    var totalcost: String
}

struct fuelLogItemEntry: View {

    @State var newLogEntry: logInput
    
    
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Location Name")){
                    TextField("Required", text: $newLogEntry.locationName)
                }
                Section(header: Text("Mileage")){
                    TextField("Required", text: $newLogEntry.mileage)
                }
                Section(header:Text("Timestamp")){
                    TextField("Required", text: $newLogEntry.timestamp)
                }
                Section(header: Text("Amount")){TextField("Required", text: $newLogEntry.amount)}
            
            Section(header: Text("Price")){
                TextField("Required", text: $newLogEntry.price)
            }
                Section(header: Text("Total Cost")){
                    TextField("Required", text: $newLogEntry.totalcost)
                }
                Section(header: Text("Submit Entry")){
                    Button(action:{}){
                        Text("Submit")
                    }
                }
                NavigationLink("back to list", destination: HomeView())
            }.navigationBarTitle("Fuel Log Entry")
        }
    }
}

struct fuelLogItemEntry_Previews: PreviewProvider {
    static var previews: some View {
        fuelLogItemEntry(newLogEntry: logInput(locationName: "Bridgeton Wawa", mileage: "42000", timestamp: "11/28/1988", amount: "15.000", price: "4.999", totalcost: "75.00"))
    }
}

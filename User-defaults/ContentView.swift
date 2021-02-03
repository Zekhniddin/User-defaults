//
//  ContentView.swift
//  User-defaults
//
//  Created by Зехниддин on 03/02/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        Defaults.storeUser(user: User(firstname: "Zehniddin", lastname: "Jumayev", email: "zexjumayev@gamail.com", phone: "+1234567", address: "Buxoro"))
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 30) {
                Text("First name: ") + Text(Defaults.loadUser()?.firstname ?? "no data").fontWeight(.medium)
                Text("Last name: ") + Text(Defaults.loadUser()?.lastname ?? "no data").fontWeight(.medium)
                Text("Email: ") + Text(Defaults.loadUser()?.email ?? "no data").fontWeight(.medium)
                Text("Phone: ") + Text(Defaults.loadUser()?.phone ?? "no data").fontWeight(.medium)
                Text("Address: ") + Text(Defaults.loadUser()?.address ?? "no data").fontWeight(.medium)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 30)
            .font(.system(size: 18))
            .navigationBarTitle("Local storage", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

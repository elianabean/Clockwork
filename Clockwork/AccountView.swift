//
//  AccountView.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/19/23.
//
// Created using Sean Allen tutorial: https://www.youtube.com/watch?v=b1oC7sLIgpI&list=PL8seg1JPkqgHyWCBHwXGmfysQpEQTfC3z

import SwiftUI

struct AccountView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthdate = Date()
    @State private var extraNapkins = false;
    @State private var frequentRefills = false;
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                        TextField("First Name", text: $firstName) //$ to bind the variable
                        TextField("Last Name", text: $lastName)
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $birthdate, displayedComponents: .date)
                    
                    Button {
                        print("Save")
                    } label: {
                        Text("Save Changes")
                    }
                    
                    Button {
                        print("Save")
                    } label: {
                        Text("Delete Account")
                            .foregroundColor(.red)
                    }
                }
                
            }
            .navigationTitle(" Account")
            
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}


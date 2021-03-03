//
//  ContentView.swift
//  WizardingQuotes
//
//  Created by Sascha Sallès on 02/03/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var quoteVM = QuoteViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(quoteVM.quotes) { quote in
                    ListItemView(firstName: quote.authorFirstName, lastName: quote.authorLastName, createdAt: quote.createdAt, content: quote.title)
                        
                }
            }.listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Wizarding Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

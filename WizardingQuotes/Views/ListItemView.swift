//
//  ListItem.swift
//  WizardingQuotes
//
//  Created by Sascha Sallès on 03/03/2021.
//

import Foundation
import SwiftUI

struct ListItemView: View {
    var firstName: String
    var lastName: String
    var createdAt: Date
    var content: String
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text("\(self.firstName) \(self.lastName)")
                    .font(.title3)
                    .bold()
                Spacer()
                Text(createdAt, style: .date)
                    .foregroundColor(Color(.systemTeal))
            }
            Text("\(self.content)")
                .font(.callout)
                .foregroundColor(.secondary)
        }.environment(\.locale, Locale(identifier: "fr"))
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(firstName: "Albus", lastName: "Dumbledore", createdAt: Date(), content: "Hello  j'ai rendu la chaussete à Dobby")
    }
}

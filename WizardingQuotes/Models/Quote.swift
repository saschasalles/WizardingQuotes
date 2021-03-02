//
//  Quote.swift
//  WizardingQuotes
//
//  Created by Sascha Sallès on 02/03/2021.
//

import Foundation


struct Quote: Identifiable {
    var id = UUID()
    var title: String
    var authorFirstName: String
    var authorLastName: String
    var createdAt: Date = Date()
}

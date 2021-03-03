//
//  Quote.swift
//  WizardingQuotes
//
//  Created by Sascha Sallès on 02/03/2021.
//

import Foundation


struct Quote: Identifiable, Codable {
    let authorFirstName, id, title, authorLastName: String
    let createdAt: Date
}




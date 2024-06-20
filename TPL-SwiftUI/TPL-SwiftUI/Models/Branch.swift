//
//  Branch.swift
//  TPL-SwiftUI
//
//  Created by Davi Cabral de Oliveira on 2024-06-20.
//

import Foundation

struct Branch: Codable, Equatable, Hashable {
    let name: String
    let address: Address
    var services: [Service]
    var openHour: Int
    var closeHour: Int
    
    static func == (lhs: Branch, rhs: Branch) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}

struct Address: Codable, CustomStringConvertible {
    let street: String
    let postalCode: String
    let city: String
    let latitude: Double
    let longitude: Double
    let phone: String
    
    var description: String {
        "\(street), \(postalCode), \(city)"
    }
}

struct Service: Codable {
    let name: String
    let description: String
    let imageURL: String
}

extension Branch {
    static func branchList() -> [Branch] {
        [
            Branch(name: "Agincourt",
                   address: Address(street: "155 Bonis Avenue",
                                    postalCode: "M1T 3W6",
                                    city: "Toronto",
                                    latitude: 0,
                                    longitude: 0,
                                    phone: "4379548950"),
                   services: [
                    Service(name: "Book rental",
                            description: "",
                            imageURL: "")
                   ],
                   openHour: 9,
                   closeHour: 17),
            Branch(name: "Albert Campbell",
                   address: Address(street: "496 Birchmount Road",
                                    postalCode: "M1K 1N8",
                                    city: "Toronto",
                                    latitude: 0,
                                    longitude: 0,
                                    phone: "4379548950"),
                   services: [
                    Service(name: "Book rental",
                            description: "",
                            imageURL: "")
                   ],
                   openHour: 9,
                   closeHour: 17),
            Branch(name: "Toronto Reference Library",
                   address: Address(street: "789 Yonge Street",
                                    postalCode: "M4W 2G8",
                                    city: "Toronto",
                                    latitude: 0,
                                    longitude: 0,
                                    phone: "4379548950"),
                   services: [
                    Service(name: "Book rental",
                            description: "",
                            imageURL: "")
                   ],
                   openHour: 9,
                   closeHour: 17)
        ]
    }
}

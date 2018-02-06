//
//  SystemExtensions.swift
//  ArquiMed
//
//  Created by Ricardo Venieris on 01/02/18.
//  Copyright © 2018 LES.PUC-RIO. All rights reserved.
//

extension System:CustomStringConvertible {
    var description: String {
        var description = "System: " + self.name + "\n"
                        + "   Attributes: " + String(describing: self.attributes) + "\n"
                        + "   Total Entities: \(self.entities.count)" + "\n"
        for entitie in self.entities {
            description += "     Entity: " + entitie.name + "\n"
                         + "        Attributes: " + String(describing: entitie.attributes) + "\n"
                         + "        Total Components: \(entitie.components.count)" + "\n"
            for component in entitie.components {
                description += "          Component: " + component.name + "\n"
                            + "          Attributes: " + String(describing: component.attributes) + "\n"
            }
        }
        return description
    }
}

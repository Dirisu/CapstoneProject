//
//  SideMenu.swift
//  CapstoneProject
//
//  Created by Marvellous Dirisu on 06/07/2022.
//

import Foundation


var options: [option] = [option(title: "Sign In",
                                segue: "HomeSegue"),
                         option(title: "Sign Up",
                                segue: "SettingsSegue")
                        ]

struct option {
    var title = String()
    var segue = String()
}

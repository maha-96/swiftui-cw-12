//
//  env.swift
//  ex 12
//
//  Created by bibi on 08/01/2021.
//

import SwiftUI
class Env: ObservableObject {
    @Published var name = ""
    @Published var age = ""
    @Published var phone = ""
    @Published var isMentor = false
}

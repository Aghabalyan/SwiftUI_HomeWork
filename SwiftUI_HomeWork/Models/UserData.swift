//
//  UserData.swift
//  SwiftUI_HomeWork
//
//  Created by Grigor Aghabalyan on 5/14/20.
//  Copyright © 2020 aghabalyan. All rights reserved.
//


import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}

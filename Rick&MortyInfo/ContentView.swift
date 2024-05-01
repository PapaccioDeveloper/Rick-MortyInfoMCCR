//
//  ContentView.swift
//  Rick&MortyInfo
//
//  Created by Carlos Chica on 01/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    ListCharacterView(presenter: ListCharacterPresenter(listCharacterInteractor: ListCharacterInteractor()))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

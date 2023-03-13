//
//  ContentView.swift
//  Kadai9-SwiftUI
//
//  Created by Ryuga on 2023/03/09.
//

import SwiftUI

struct ContentView: View {
        @State private var showingModal = false
        @State var selection: String = "未選択"

           var body: some View {
               VStack {
                   HStack(spacing:50) {
                       Text("都道府県")
                       Text(selection)
                       Button("入力") {
                           self.showingModal.toggle()
                       }
                       .fullScreenCover(isPresented: $showingModal) {
                           ModalView(selection:$selection)
                       }
                   }
                   .padding(40)
                   Spacer()
               }

           }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ModalView.swift
//  Kadai9-SwiftUI
//
//  Created by Ryuga on 2023/03/12.
//

import SwiftUI

struct ModalView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var selection: String
    let options = ["東京都", "神奈川県", "埼玉県", "千葉県"]

    var body: some View {
        NavigationView {
            VStack {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        selection = option
                        dismiss()
                    }, label: {
                        Text(option)
                            .padding(10)
                    })
                }
                .navigationBarTitle("ModalView")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(leading: Button("Cancel") {
                    dismiss()
                })
                Spacer()
            }
        }
    }
}

struct Preview: View {
    @State var selection = "未選択"
    var body: some View {
        ModalView(selection: $selection)
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        Preview()
    }
}

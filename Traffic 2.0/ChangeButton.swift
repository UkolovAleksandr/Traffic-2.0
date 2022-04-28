//
//  ChangeButton.swift
//  Traffic 2.0
//
//  Created by Александр Уколов on 28.04.2022.
//

import SwiftUI

struct ChangeButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .padding()
        .frame(width: 200, height: 60)
        .background(Color(.gray))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20,
                style: .continuous)
                .stroke(Color.white, lineWidth: 1)
        )
    }
}

struct ChangeButton_Previewis: PreviewProvider
{
    static var previews: some View{
        ChangeButton(title: "START", action: {})
    }
}

//
//  BranchSelectionView.swift
//  TPL-SwiftUI
//
//  Created by Davi Cabral de Oliveira on 2024-06-20.
//

import SwiftUI

struct BranchSelectionView: View {
    
    @Binding var branch: Branch
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                VStack(alignment: .leading) {
                    Text(branch.name)
                        .bold()
                    Text(branch.address.description)
                        .font(.callout)
                    Text(branch.isOpen ? "Open" : "Closed")
                        .foregroundStyle(branch.isOpen ? .green : .red)
                        
                }
                
                Spacer()
                Button(action: { print("GPS") }) {
                    Image(systemName: "mappin.and.ellipse.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                Button(action: { print("Phone") }) {
                    Image(systemName: "phone.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                Image(systemName: "chevron.right")
            }
        }.padding()
    }
}

#Preview {
    struct FeaturePreview: View {
        
        @State private var branch: Branch = Branch.branchList().first!
        var body: some View {
            BranchSelectionView(branch: $branch)
        }
    }
    return FeaturePreview()
}

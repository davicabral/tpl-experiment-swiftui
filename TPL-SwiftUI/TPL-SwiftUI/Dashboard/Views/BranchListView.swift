//
//  BranchListView.swift
//  TPL-SwiftUI
//
//  Created by Davi Cabral de Oliveira on 2024-06-20.
//

import SwiftUI

struct BranchListView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var selectedBranch: Branch
    var body: some View {
        List {
            ForEach(Branch.branchList(), id: \.name) { branch in
                Button(action: {
                    selectedBranch = branch
                    dismiss()
                }){
                    HStack(spacing: 8) {
                        Image(systemName: "house.fill")
                        VStack(alignment: .leading) {
                            Text(branch.name)
                                .bold()
                            Text(branch.address.description)
                                .font(.callout)
                        }
                        Spacer()
                        if branch == selectedBranch {
                            Image(systemName: "checkmark")
                                                .foregroundColor(.accentColor)
                        }
                    }
                }
                .buttonStyle(.plain)
            }
        }.navigationTitle("Branches")
    }
}

//#Preview {
//    BranchListView(selectedBranch: <#Binding<Branch>#>)
//}

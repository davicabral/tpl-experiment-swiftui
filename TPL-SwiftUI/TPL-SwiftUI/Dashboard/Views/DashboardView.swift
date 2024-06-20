//
//  DashboardView.swift
//  TPL-SwiftUI
//
//  Created by Davi Cabral de Oliveira on 2024-06-20.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationStack {
            Button {
                print("Button")
            } label: {
                BranchSelectionView(branch: Branch.branchList().first!)
            }
            .buttonStyle(.plain)

            
        }
    }
}

#Preview {
    DashboardView()
}

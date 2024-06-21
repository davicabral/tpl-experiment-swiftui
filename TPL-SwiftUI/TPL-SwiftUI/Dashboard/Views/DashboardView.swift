//
//  DashboardView.swift
//  TPL-SwiftUI
//
//  Created by Davi Cabral de Oliveira on 2024-06-20.
//

import SwiftUI

struct DashboardView: View {
    
    @ObservedObject var viewModel: DashboardViewModel = DashboardViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(value: viewModel.currentBranch) {
                    BranchSelectionView(branch: $viewModel.currentBranch)
                }
                .buttonStyle(.plain)
                Spacer()
            }
            .navigationTitle("TPL")
            .navigationDestination(for: Branch.self) { branch in
                BranchListView(selectedBranch: $viewModel.currentBranch)
            }
        }
        
    }
}

class DashboardViewModel: ObservableObject {
    
    @Published var currentBranch: Branch = Branch.branchList().first!
}

#Preview {
    DashboardView()
}

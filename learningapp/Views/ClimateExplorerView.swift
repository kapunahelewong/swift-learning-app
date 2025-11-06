import SwiftUI

struct ClimateExplorerView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    LazyVGrid(columns: [
                        GridItem(.flexible(minimum: 100), spacing: 12),
                        GridItem(.flexible(minimum: 100), spacing: 12)
                    ], spacing: 12, pinnedViews: []) {
                        ForEach(climatePlaces) { place in
                            ClimateCardView(place: place)
                        }
                    }
                    .padding(16)
                }
            }
            .navigationTitle("Natural Places")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ClimateExplorerView()
}

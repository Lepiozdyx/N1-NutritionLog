import SwiftUI

struct RootView: View {
    @AppStorage("hasCompletedOnboarding") private var hasCompletedOnboarding = false
    @StateObject private var nutritionStore = NutritionStore()
    
    var body: some View {
        Group {
            if hasCompletedOnboarding {
                ContentView()
                    .environmentObject(nutritionStore)
            } else {
                OnboardingView()
                    .environmentObject(nutritionStore)
            }
        }
    }
}

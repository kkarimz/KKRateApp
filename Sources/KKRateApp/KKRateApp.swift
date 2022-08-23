
import StoreKit

public struct KKRateApp {
    
    /// Call this func from your main view controller in viewDidLoad to trigger app review prompt
    /// - Parameter appLaunches: number of app launches before attempting to present the review prompt to the user, default value is 5
    public static func rateAppAfter(appLaunches: Int? = 5) {
        
        let userDefaultsKey = "kkRateAppUsageCount"
        var usageCount: Int = UserDefaults.standard.integer(forKey: userDefaultsKey)
        
        if usageCount > 0 {
            
            usageCount += 1
            UserDefaults.standard.set(usageCount, forKey: userDefaultsKey)
            
            if usageCount == appLaunches, let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                SKStoreReviewController.requestReview(in: scene)
                UserDefaults.standard.set(0, forKey: userDefaultsKey)
            }
        } else {
            UserDefaults.standard.set(1, forKey: userDefaultsKey)
        }
    }
    
    /// call this func from anywhere you want to attempt to launch an app review
    public static func attemptAppReview() {
        if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            SKStoreReviewController.requestReview(in: scene)
        }
    }
    
}

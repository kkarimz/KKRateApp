
import StoreKit

public struct KKRateApp {
    
    public init() {
    }
    
    static func rateAppAfter(appLaunches: Int? = 5) {
        
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
    
    static func attemptAppReview() {
        if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            SKStoreReviewController.requestReview(in: scene)
        }
    }
    
}

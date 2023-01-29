import Foundation

final class NotificationsListRepository {
    static let storrage = NotificationsListRepository()
    
    private (set) var inputNotifications:[String] = []
    private (set) var outputNotifications:[String] = []
    
    private let userDefaults = UserDefaults.standard
    private init() {}
    
    func saveInputNotification(notification:String) {
        
    }
    
    func saveOutputNotification(notification:String) {
        
    }
}

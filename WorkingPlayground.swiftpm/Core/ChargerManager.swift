import UIKit
import Combine

typealias BatteryState = UIDevice.BatteryState

final class ChargerManager {
    // MARK: - Init -
    static let shared = ChargerManager()
    // MARK: - Private -
    private let publisherName = UIDevice.batteryStateDidChangeNotification 
    private let notificationCenter = NotificationCenter.default

    private var cancelables: [AnyCancellable] = []
    // MARK: - Open -
    @Published var isCharging: Bool = false
    
    private init() {       
        UIDevice.current.isBatteryMonitoringEnabled = true
        setupObservers()
    }
    
    private func setupObservers() {
        notificationCenter.publisher(for: publisherName).sink { [unowned self] value in
            let state = UIDevice.current.batteryState
            self.isCharging = self.isCharging(for: state) 
            print("\(value)")
        }.store(in: &cancelables)
    }
    
    private func isCharging(for state: BatteryState) -> Bool {
        switch state {
        case .charging, .full:
            return true
        case .unknown, .unplugged:
            return false
        default: 
            return false
        }
    }
}

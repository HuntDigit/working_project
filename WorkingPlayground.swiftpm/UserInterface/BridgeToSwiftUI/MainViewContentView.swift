import SwiftUI

struct MainViewContentView: UIViewControllerRepresentable {
    private let viewController = {
        MainViewController()
    }()

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // do nothong
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        MainNavigationController(rootViewController: viewController)
    }
}

import UIKit
import Combine

class MainViewController: UIViewController {    
    private lazy var clientView = {
        let view = UIView()
        view.setHeightGreatConstant(constant: 100)
        view.setWidthGreatConstant(constant: view.bounds.width - .basicMargin)
        view.backgroundColor = .gray
        view.layer.cornerRadius = .basicCornerRadius
        return view
    }()
    
    private lazy var serverView = {
        let view = UIView()
        view.setHeightGreatConstant(constant: 100)
        view.setWidthGreatConstant(constant: view.bounds.width - .basicMargin)
        view.backgroundColor = .gray
        view.layer.cornerRadius = .basicCornerRadius
        return view
    }()
    
    private lazy var buttonServer = {
        let button = UIButton()
        let action = UIAction(title: "What for the title", handler: { [unowned self] action in
            self.onServerAction(action: action)
        })
        button.addAction(action, for: .touchUpInside)
        return button
    }()
    
    private var cancelables:[AnyCancellable] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurationUI()
        configirationConstraints()
        configurationObservers()
    }
    
    private func configurationUI() {
        view.backgroundColor = .lightGray
        title = "Choose Your Side"
        navigationController?.navigationBar.backgroundColor = .darkGray
        
        view.addSubview(clientView)
        view.addSubview(serverView)
        serverView.addSubview(buttonServer)
    }
    
    private func configirationConstraints() {
        clientView.alignTrailingAndLeading(to: view, constant: .basicMargin)
        clientView.alignTop(to: view.safeAreaLayoutGuide.topAnchor, constant: .basicMargin, priority: .defaultLow)
        clientView.alignCenterX(to: view)
        clientView.alignBottom(to: view.centerYAnchor, constant: .mediumMargin, priority: .defaultHigh)
        serverView.alignTrailingAndLeading(to: view, constant: .basicMargin)
        serverView.alignBottom(to: view.safeAreaLayoutGuide.bottomAnchor, constant: .basicMargin, priority: .defaultLow)
        serverView.alignCenterX(to: view)
        serverView.alignTop(to: view.centerYAnchor, constant: .mediumMargin, priority: .defaultHigh)
        buttonServer.alignTrailingAndLeading(to: serverView)
        buttonServer.alignTopAndBottom(to: serverView)
    }
    
    private func configurationObservers() {
        ChargerManager.shared.$isCharging
            .receive(on: RunLoop.main)
            .sink { [weak self] isCharging in
                self?.serverView.backgroundColor = isCharging ?  .green : .red
            }.store(in: &cancelables)
    }
    
    func onServerAction(action: UIAction) {
 
    }
}


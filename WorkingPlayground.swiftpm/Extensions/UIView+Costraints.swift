import UIKit

// MARK: - Costraints
extension UIView {
    func align(with view: UIView, constant: CGFloat = 0.0) {
        translatesAutoresizingMaskIntoConstraints = false
        leftAnchor.constraint(equalTo: view.leftAnchor, constant: constant).isActive = true
        rightAnchor.constraint(equalTo: view.rightAnchor, constant: -constant).isActive = true
        topAnchor.constraint(equalTo: view.topAnchor, constant: constant).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -constant).isActive = true
    }
    
    func alignTop(
        to anchor: NSLayoutYAxisAnchor,
        constant: CGFloat = 0.0,
        priority: UILayoutPriority = .required
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = topAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
    }
    
    func alignTopGreaterThanOrEqual(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = topAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
    }
    
    func alignBottom(
        to anchor: NSLayoutYAxisAnchor,
        constant: CGFloat = 0.0,
        priority: UILayoutPriority = .required
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = bottomAnchor.constraint(equalTo: anchor, constant: -constant)
        constraint.priority = priority
        constraint.isActive = true
    }
    
    func alignBottomGreaterThanOrEqual(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = bottomAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
    }
    
    func alignBottomLessThanOrEqual(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = bottomAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
    }
    
    func alignTrailing(to anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = trailingAnchor.constraint(equalTo: anchor, constant: -constant)
        constraint.isActive = true
    }
    
    func alignTrailingGreaterThanOrEqual(to anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = trailingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
    }
    
    func alignLeading(to anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = leadingAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
    }
    
    func alignLeadingWithConstraint(to anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = leadingAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    func alignCenter(to view: UIView, constant: CGFloat = 0.0) {
        translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: constant),
            centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: constant)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func alignCenter(to view: UIView, verticalConstant: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: verticalConstant)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func alignCenterX(to view: UIView, constant: CGFloat = 0.0) {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: constant)
        constraint.isActive = true
    }
    
    func alignCenterY(to view: UIView, constant: CGFloat = 0.0) {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: constant)
        constraint.isActive = true
    }
    
    func alignTrailingAndLeading(to view: UIView, constant: CGFloat = 0.0) {
        translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            leftAnchor.constraint(equalTo: view.leftAnchor, constant: constant),
            rightAnchor.constraint(equalTo: view.rightAnchor, constant: -constant)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func alignTopAndBottom(to view: UIView, constant: CGFloat = 0.0) {
        translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            topAnchor.constraint(equalTo: view.topAnchor, constant: constant),
            bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -constant)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func alignTopWithConstraint(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = topAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    func alignBottomWithConstraint(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = bottomAnchor.constraint(equalTo: anchor, constant: -constant)
        constraint.isActive = true
        return constraint
    }
    
    func setHeightConstant(constant: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: constant).isActive = true
    }
    
    func setHeightGreatConstant(constant: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(greaterThanOrEqualToConstant: constant).isActive = true
    }
    
    func setWidthGreatConstant(constant: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(greaterThanOrEqualToConstant: constant).isActive = true
    }
    
    func setWidthConstant(constant: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: constant).isActive = true
    }
    
    func setHeightConstantWithConstraint(constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let height = heightAnchor.constraint(equalToConstant: constant)
        height.isActive = true
        return height
    }
    func setWidthConstantWithConstraint(constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let width = widthAnchor.constraint(equalToConstant: constant)
        width.isActive = true
        return width
    }
    func setWidthAspect(ratio: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        addConstraint(NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: self, attribute: .height, multiplier: ratio, constant: 0))
    }
    func setHeightAspect(ratio: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        addConstraint(NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: self, attribute: .width, multiplier: ratio, constant: 0))
    }
    
    func lessThanOrEqualWidth(to view: UIView, constant: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(
            lessThanOrEqualTo: view.widthAnchor,
            constant: constant
        ).isActive = true
    }
}

#if canImport(Combine) && canImport(UIKit) && os(iOS)
import Combine
import UIKit

@available(iOS 13.0, *)
public protocol KeyboardTransitioningContext {
    var animationCurve: UIView.AnimationCurve { get }
    var animationDuration: TimeInterval { get }
    var endFrame: CGRect { get }
    var startFrame: CGRect { get }
}

@available(iOS 13.0, *)
private struct KeyboardChangeInfo: KeyboardTransitioningContext {
    let animationCurve: UIView.AnimationCurve
    let animationDuration: TimeInterval
    let endFrame: CGRect
    let startFrame: CGRect
}

extension UIViewController {
    
    public func keyboardChangePublisher() -> AnyPublisher<KeyboardTransitioningContext, Never> {
        return NotificationCenter.default.publisher(for: UIResponder.keyboardWillChangeFrameNotification, object: nil)
            .compactMap { (notification: Notification) -> KeyboardTransitioningContext? in
                guard let dict = notification.userInfo,
                      let animationDuration = dict[UIResponder.keyboardAnimationDurationUserInfoKey] as? TimeInterval,
                      let animationCurveInt = dict[UIResponder.keyboardAnimationCurveUserInfoKey] as? Int,
                      let animationCurve = UIView.AnimationCurve(rawValue: animationCurveInt),
                      let endFrame = dict[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect,
                      let startFrame = dict[UIResponder.keyboardFrameBeginUserInfoKey] as? CGRect else {
                    return nil
                }
                
                let changeInfo = KeyboardChangeInfo(animationCurve: animationCurve, animationDuration: animationDuration, endFrame: endFrame, startFrame: startFrame)
                return changeInfo
            }
            .eraseToAnyPublisher()
    }
    
    public func bottomContentInset(for context: KeyboardTransitioningContext) -> CGFloat {
        guard let window = view.window else {
            return 0
        }
        
        let viewOrigin = view.convert(CGPoint(x: 0, y: view.frame.maxY), to: window.coordinateSpace)
        let contentInsetBottom = max(0, viewOrigin.y - context.endFrame.minY - view.frame.minY)
        
        return contentInsetBottom
    }
}

#endif

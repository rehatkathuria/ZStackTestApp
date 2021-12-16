import SwiftUI

struct ContentView: View {
	var body: some View {
		ZStack {
			RegularViewControllerRepresentable()
				
			Text("Second Layer")
			
			Text("Third Layer")
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

public struct RegularViewControllerRepresentable: UIViewControllerRepresentable {
	public typealias UIViewControllerType = UIViewController
	
	public init() { }
	
	// MARK: - UIViewRepresentable

	public func makeUIViewController(context: Context) -> UIViewController { .init(nibName: nil, bundle: nil) }

	public func updateUIViewController(_ uiViewController: UIViewController, context: Context) { }

}


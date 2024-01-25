import Foundation
import SwiftUI

class SearchScreenOneViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var searchbar: String = ""
}

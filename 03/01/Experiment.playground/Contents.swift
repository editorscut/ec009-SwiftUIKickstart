import SwiftUI

var seven = -7

let formatter = NumberFormatter()
formatter.numberStyle = .spellOut

formatter.string(for: seven)?.capitalized

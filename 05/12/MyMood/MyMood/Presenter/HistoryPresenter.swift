import SwiftUI

class HistoryPresenter: ObservableObject {
    private var history: History
    
    @Published var lastUpdated = Date()
    
    init(_ history: History) {
        self.history = history
        history.onUpdate = {[weak self] in
            self?.lastUpdated = Date()
        }
    }
}

extension HistoryPresenter {
    var moodPresenters: [MoodPresenter] {
        history.moods.map(MoodPresenter.init(mood:))
    }
    
    func clear() {
        history.clear()
    }
    
    func remove(at indexSet: IndexSet) {
        if let index = indexSet.first {
            history.remove(at: index)
        }
    }
}

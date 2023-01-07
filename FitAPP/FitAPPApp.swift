//
//  FitAPPApp.swift
//  FitAPP
//
//  Created by GIORGI's MacPro on 30.11.22.
//

import SwiftUI


@main
struct FitApp: App {
  @StateObject private var historyStore: HistoryStore
  @State private var showAlert = false

  init() {
    let historyStore: HistoryStore
    do {
      historyStore = try HistoryStore(withChecking: true)
    } catch {
      historyStore = HistoryStore()
      showAlert = true
    }
    _historyStore = StateObject(wrappedValue: historyStore)
  }

  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(historyStore)
        .onAppear {
          print(FileManager.default.urls(
            for: .documentDirectory,
            in: .userDomainMask))
        }
    }
  }
}

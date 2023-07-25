import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 800
    height: 600

    // Define two states: SplashScreenState and MainContentState
    states: [
        State {
            name: "SplashScreenState"
            PropertyChanges {
                target: loader
                source: "SplashScreen.qml" // Load SplashScreen.qml
            }
        },
        State {
            name: "MainContentState"
            PropertyChanges {
                target: loader
                source: "main.qml" // Load mainContent.qml
            }
        }
    ]

    // Set the initial state to SplashScreenState

    // Loader to dynamically load content
    Loader {
        id: loader
        anchors.fill: parent
        asynchronous: true // Load asynchronously for smooth transition

        // The Timer to control the loading time for the SplashScreen.qml
        Timer {
            interval: 3000 // 3000 ms = 3 seconds
            running: false // Start the timer only when needed
            onTriggered: {
                // Once the timer is triggered, change to MainContentState
                loader.state = "MainContentState"
            }
        }
    }
}
// property Splash splash: Splash {
//  onTimeout: mainWindow.show()
//}


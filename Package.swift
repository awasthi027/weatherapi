// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WeatherAPI",
    platforms: [.iOS("14.0.0"), .macOS("11")],
    products: [
          .library(
              name: "WeatherAPI",
              targets: ["WeatherAPI"]),
      ],
    dependencies: [
            .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "4.0.0")
        ],

    targets: [
            .target(
                name: "WeatherAPI",
                dependencies: ["SwiftyJSON"],path: "Sources/WeatherAPI"),
            .testTarget(
                name: "WeatherAPITests",
                dependencies: ["WeatherAPI"],path: "Tests/WeatherAPITests"),
        ]
)

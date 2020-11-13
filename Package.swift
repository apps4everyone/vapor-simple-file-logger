// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SimpleFileLogger",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "SimpleFileLogger", targets: ["SimpleFileLogger"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.35.0"),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "SimpleFileLogger", dependencies: [
            .product(name: "Vapor", package: "vapor"),
            .product(name: "Logging", package: "swift-log"),
        ])
    ]
)

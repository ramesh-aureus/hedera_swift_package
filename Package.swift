// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "hedera",
    platforms: [
           .macOS(.v10_15), // macOS version 10.15
           .iOS(.v13) // Add iOS platform version 13.0
       ],
    products: [
        .library(
            name: "hedera",
            targets: ["hedera"]),
    ],
    dependencies: [
        // Add Hedera SDK as a dependency here
        .package(url: "https://github.com/hashgraph/hedera-sdk-swift.git", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "hedera",
            dependencies: [
                // Specify the dependency here
                .product(name: "Hedera", package: "hedera-sdk-swift")
            ]),
        .testTarget(
            name: "hederaTests",
            dependencies: ["hedera"]),
    ]
)

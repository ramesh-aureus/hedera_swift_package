// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "hedera",
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

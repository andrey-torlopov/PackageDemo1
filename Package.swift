// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PackageDemo1",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "PackageDemo1",
            targets: ["PackageDemo1"]),
    ],
    dependencies: [
        .package(url: "git@github.com:andrey-torlopov/PackageDemo2.git", .branch("main"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PackageDemo1",
            dependencies: ["PackageDemo2"]
        ),
        .testTarget(
            name: "PackageDemo1Tests",
            dependencies: ["PackageDemo1"]),
    ]
)

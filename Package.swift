// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "swift-sovereign-state-subdivisions-level-1",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v13),
        .iOS(.v16),
        .tvOS(.v16),
        .watchOS(.v9)
    ],
    products: [
        .library(name: "SwiftSovereignStateSubdivisionsLevel1", targets: ["SwiftSovereignStateSubdivisionsLevel1"]),
    ],
    dependencies: [
        .package(url: "https://github.com/RandomHashTags/swift-sovereign-states.git", branch: "main"),
        .package(url: "https://github.com/apple/swift-syntax.git", from: "510.0.2")
    ],
    targets: [
        .macro(
            name: "Macros",
            dependencies: [
                .product(name: "SwiftSyntax", package: "swift-syntax"),
                .product(name: "SwiftSyntaxBuilder", package: "swift-syntax"),
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax")
            ]
        ),
        
        .target(
            name: "SwiftSovereignStateSubdivisionsLevel1",
            dependencies: [
                "Macros",
                .product(name: "SwiftSovereignStates", package: "swift-sovereign-states")
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "SwiftSovereignStateSubdivisionsLevel1Tests",
            dependencies: ["SwiftSovereignStateSubdivisionsLevel1"]
        ),
    ]
)

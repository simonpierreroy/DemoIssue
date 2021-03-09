// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DemoIssue",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "DemoIssue",
            type: .dynamic,
            targets: ["DemoIssue"]),
    ],
    dependencies: [
        .package(name: "demo-issue-dep", url: "git@github.com:simonpierreroy/demo-issue-dep.git", .branch("master"))
    ],
    targets: [
        
        .target(
            name: "DemoIssue",
            dependencies: [ .product(name: "Stripe-wrapper", package: "demo-issue-dep")]),
        .testTarget(
            name: "DemoIssueTests",
            dependencies: ["DemoIssue"]),
    ]
)

// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Erik",
    products: [
        .library(name: "Erik", targets: ["Erik"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kwiadmin/Kanna", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/kwiadmin/BrightFutures", .upToNextMajor(from: "8.0.0")),
        .package(url: "https://github.com/kwiadmin/FileKit", .upToNextMajor(from: "6.0.0"))
    ],
    targets: [
        .target(name: "Erik", dependencies: ["Kanna", "BrightFutures"], path: "Sources"),
        .testTarget(name: "ErikTests", dependencies: ["Erik", "Kanna", "BrightFutures", "FileKit"], path: "ErikTests")
    ]
)


// swift-tools-version:5.3
// Managed by ice

import PackageDescription

let package = Package(
    name: "Shout",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "Shout", targets: ["Shout"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Kitura/BlueSocket.git", from: "1.0.46"),
    ],
    targets: [
        .systemLibrary(name: "CSSH", pkgConfig: "libssh2", providers: [.brew(["libssh2","openssl"])]),
        .target(name: "Shout", dependencies: ["CSSH", .product(name: "Socket", package: "BlueSocket")]),
        .testTarget(name: "ShoutTests", dependencies: ["Shout"]),
    ]
)

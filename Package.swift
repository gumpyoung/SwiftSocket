// swift-tools-version:4.0
import PackageDescription

var targets: [PackageDescription.Target] = [
    .target(name: "EchoServer", dependencies: ["SwiftSocket"]),
    .target(name: "SwiftSocket", dependencies: ["YSocket"]),
    .target(name: "YSocket",
            dependencies: []),
]

let package = Package(
    name: "swift-socket",
    products: [
    	.executable(name: "EchoServer", targets: ["EchoServer"]),
    	.library(name: "SwiftSocket", targets: ["SwiftSocket"]),
    ],
    targets: targets
)
    

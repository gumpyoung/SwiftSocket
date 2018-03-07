import PackageDescription

#if os(Linux) || os(macOS) || os(iOS) || os(tvOS)
    
let package = Package(
    name: "SwiftSocket",
    targets: [Target(name: "SwiftSocket")]
)
    
#else
    
fatalError("Unsupported OS")
    
#endif

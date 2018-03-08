// swift-tools-version:4.0
import PackageDescription

#if os(Linux) || os(macOS) || os(iOS) || os(tvOS)

let package = Package(
    name: "swift-socket",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
    	.executable(name: "EchoServer", targets: ["EchoServer"]),
        .library(
            name: "SwiftSocket",
            targets: ["SwiftSocket"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
	    .target(name: "EchoServer", dependencies: ["SwiftSocket"]),
	    .target(name: "SwiftSocket", 
	    	dependencies: ["YSocket"],
		    exclude: [
		    	"SwiftSocket.xcodeproj", 
	    		"SwiftSocket.xcworkspace", 
	    		"README.md", 
	    		"Sources/SwiftSocket/Info.plist", 
	    		"Sources/SwiftSocket/Socket.h"]	    	
	    	),
	    .target(name: "YSocket",
	            dependencies: []),
	]
)
    
#else
    
fatalError("Unsupported OS")
    
#endif

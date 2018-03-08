//
//  SwiftSocket.swift
//  SwiftSocket
import PackageDescription

#if os(Linux) || os(macOS) || os(iOS) || os(tvOS)
    
let package = Package(
    name: "swift-socket",
    exclude: [
		    	"SwiftSocket.xcodeproj", 
	    		"SwiftSocket.xcworkspace", 
	    		"README.md", 
	    		"Sources/SwiftSocket/Info.plist", 
	    		"Sources/SwiftSocket/Socket.h"],
    targets: [Target(name: "Socket")],
)
    
#else
    
fatalError("Unsupported OS")
    
#endif

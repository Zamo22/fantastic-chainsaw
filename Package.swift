// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "fantastic-chainsaw",
  platforms: [
    .macOS(.v10_15), .iOS(.v14)
  ],
  products: [
    .library(
      name: "fantastic-chainsaw",
      targets: ["fantastic-chainsaw"]),
  ],
  targets: [
    .binaryTarget(
      name: "fantastic-chainsaw",
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.3/fantastic-chainsaw.xcframework.zip",
      checksum: "b0c6e356cf1b68db8e35c43ab98218e59f2d91583313ba03fb0f62f1a57c21c5"
    )
  ]
)

// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "fantastic_chainsaw",
  platforms: [
    .macOS(.v10_15), .iOS(.v14)
  ],
  products: [
    .library(
      name: "fantastic_chainsaw",
      targets: ["fantastic_chainsaw"]),
  ],
  targets: [
    .binaryTarget(
      name: "fantastic_chainsaw",
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.1/fantastic-chainsaw.xcframework.zip",
      checksum: "402e6160af85c8da8f61a3625e43abb229c5d02a674633ab7df643b5d3b76a09"
    )
  ]
)

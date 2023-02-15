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
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.2/fantastic-chainsaw.xcframework.zip",
      checksum: "3dc566176caa000da33eef143934d3d22995f40d0a88b96aa9fca87341de58d0"
    )
  ]
)

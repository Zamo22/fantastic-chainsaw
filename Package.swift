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
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.6/chainsaw.xcframework.zip",
      checksum: "e1d03c3a65a975390300087b19be95ca9b6fbc03b809f9f0a2bee9ae1bf40d76"
    )
  ]
)

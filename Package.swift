// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "chainsaw",
  platforms: [
    .macOS(.v10_15), .iOS(.v14)
  ],
  products: [
    .library(
      name: "chainsaw",
      targets: ["chainsaw"]),
  ],
  targets: [
    .binaryTarget(
      name: "chainsaw",
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.6/chainsaw.xcframework.zip",
      checksum: "e1d03c3a65a975390300087b19be95ca9b6fbc03b809f9f0a2bee9ae1bf40d76"
    )
  ]
)

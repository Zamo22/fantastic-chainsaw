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
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.21/chainsaw.xcframework.zip",
      checksum: "38832f07343fe1fe7438b2d8ee780878d59cb07656af9fe2f183ffb06f5d48f7"
    )
  ]
)

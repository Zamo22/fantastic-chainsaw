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
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.15/chainsaw.xcframework.zip",
      checksum: "ce277a7de7b7e50b2e82fea9f194b9b78c6b6d02008c81848f0b01f366e54c47"
    )
  ]
)

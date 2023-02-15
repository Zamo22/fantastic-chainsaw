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
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.13/chainsaw.xcframework.zip",
      checksum: "afd99e9fbf2eb77ac17405b313c8c0817aa8d1ace3abf8d6cf1a6669e27d571f"
    )
  ]
)

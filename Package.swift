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
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.17/chainsaw.xcframework.zip",
      checksum: "a374d4a2e72bfd4c4bcb98abf1859b0d9a62097e9c7f2363a7e833b2d083e3da"
    )
  ]
)

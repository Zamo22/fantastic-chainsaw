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
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.7/chainsaw.xcframework.zip",
      checksum: "17e8e8b58984eb9a9495ad1a356cd3c1bc9dbff3c82866aced112d117d7f05dd"
    )
  ]
)

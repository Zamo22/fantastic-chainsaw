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
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.11/chainsaw.xcframework.zip",
      checksum: "3eb8cfea8e6d9c9e6c5e1c8ddbdc1c580526946a7c10e21243a4071bfc285c80"
    )
  ]
)

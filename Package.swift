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
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.12/chainsaw.xcframework.zip",
      checksum: "3b7311c55bb266ad93c2a829a53ce6d15d15259bfd0f92537feebf25756bc4d6"
    )
  ]
)

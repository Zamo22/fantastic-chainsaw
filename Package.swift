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
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.10/chainsaw.xcframework.zip",
      checksum: "ec6ffdc782d19f0df2ef18d3820eccc6562e650d26c98f0d66ed8ff05d209aab"
    )
  ]
)

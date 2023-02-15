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
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.8/chainsaw.xcframework.zip",
      checksum: "965f015dcc30d772c549f614aa8ed30c7e9eaa99c95a70affe8ad42df345398d"
    )
  ]
)

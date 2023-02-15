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
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.9/chainsaw.xcframework.zip",
      checksum: "d10e4b54287022f07d28a3fb2cf662adc3c582c7500283d56ca96680744d5303"
    )
  ]
)

// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "fantastic-chainsaw",
  platforms: [
    .macOS(.v10_15), .iOS(.v14)
  ],
  products: [
    .library(
      name: "fantastic-chainsaw",
      targets: ["fantastic-chainsaw"]),
  ],
  targets: [
    .binaryTarget(
      name: "fantastic-chainsaw",
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.4/fantastic-chainsaw.xcframework.zip",
      checksum: "2b42286c4078dc0b893b5c3548b6b9d5812a5d3a979706ec0c3e080b76d4746b"
    )
  ]
)

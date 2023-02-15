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
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.5/fantastic-chainsaw.xcframework.zip",
      checksum: "079a123fb3fa07a3c4fbfb95dc91828f921db232c6a4e8ed3ab6934c34f1f8f2"
    )
  ]
)

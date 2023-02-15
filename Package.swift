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
      url: "https://github.com/Zamo22/fantastic-chainsaw/releases/download/0.0.14/chainsaw.xcframework.zip",
      checksum: "1cbfc5e4e9d521841eacc2b29b3c03191022bbabedc3a73a4552ca9b9061a23d"
    )
  ]
)

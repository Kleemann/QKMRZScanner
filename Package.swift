// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "QKMRZScanner",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "QKMRZScanner",
            targets: ["QKMRZScanner"]),
    ],
    dependencies: [
         .package(url: "https://github.com/SwiftyTesseract/SwiftyTesseract", from: "4.0.0"),
         .package(url: "https://github.com/Kleemann/QKMRZParser.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "QKMRZScanner",
            dependencies: [
                "SwiftyTesseract",
                "QKMRZParser"
            ],
            path: "QKMRZScanner",
            exclude: ["Supporting Files/Info.plist"],
            resources: [
                .copy("Supporting Files/tessdata/ocrb.traineddata")
            ]
        )
    ]
)

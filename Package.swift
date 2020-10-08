// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SwiftyRSA",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11),
        .watchOS(.v5)
    ],
    products: [
        .library(name: "SwiftyRSA", targets: ["SwiftyRSA"]),
    ],
    targets: [
        .target(
            name: "SwiftyRSA",
            dependencies: ["SwiftyRSA_SHA"],
            path: "Source",
            exclude: ["SwiftyRSA.h",
                      "NSData+SHA.h",
                      "NSData+SHA.m",
                      "Info.plist",
                      "Info-tvOS.plist"]
        ),
        .target(
            name: "SwiftyRSA_SHA",
            dependencies: [],
            path: "Source",
            exclude: ["Asn1Parser.swift",
                      "ClearMessage.swift",
                      "EncryptedMessage.swift",
                      "Info-tvOS.plist",
                      "Info.plist",
                      "Key.swift",
                      "Message.swift",
                      "PrivateKey.swift",
                      "PublicKey.swift",
                      "Signature.swift",
                      "SwiftyRSA+ObjC.swift",
                      "SwiftyRSA.h",
                      "SwiftyRSA.swift",
                      "SwiftyRSAError.swift"],
            sources: ["NSData+SHA.m"],
            publicHeadersPath: "."
        )
    ]
)

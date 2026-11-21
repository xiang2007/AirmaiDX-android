# AirmaiDX

<img src="docs/assets/airmaidx-icon.png" alt="AirmaiDX logo: a laptop and a rhythm-game controller" width="128" height="128">

AirmaiDX is a macOS launcher for rhythm-game installations you already have. It opens the folder you select, including folders on an external SSD, and keeps the compatibility environment and diagnostics on your Mac.

- Set the game’s display mode and render resolution independently.
- Use a mouse or a supported controller. Input support varies by controller and game version.
- Browse songs, preview charts, and manage supported chart data in your local library.
- Use your iPhone as a card reader with [Airmai Card](#airmai-card-for-iphone).

## Install

Download the DMG from [Releases](https://github.com/finnoscar/AirmaiDX/releases). Drag AirmaiDX into Applications, open it, and select your game folder. The first setup asks before downloading Wine, DXMT, and the Visual C++ runtime directly from their publishers. Allow about 355 MB of downloads, plus disk space for the installed runtime and per-game environment.

The preview requires an Apple silicon Mac, macOS 15 or later, and Rosetta 2 for the Windows runtime. The DMG is ad hoc signed and is not notarized. If macOS blocks a verified copy, see [Apple’s instructions for opening apps from outside the App Store](https://support.apple.com/102445).

AirmaiDX does not provide game files, accounts, machine credentials, or game services. Bring an installation you are authorized to use. This is an independent project and is not affiliated with SEGA.

## Airmai Card for iPhone

Airmai Card turns your iPhone into a card reader for AirmaiDX. [Join the Airmai Card beta on TestFlight](https://testflight.apple.com/join/9TUNCCcU).

- Read supported Aime cards using your iPhone’s NFC reader.
- Scan the printed 20-digit access code with the camera, or enter it manually.
- Save cards on your iPhone and use a saved card in the running game with one tap.

To set it up, connect both devices to the same local network. In AirmaiDX, open **iPhone Card Reader** and click **Generate pairing code**. Open the **Mac** tab in Airmai Card, select your Mac, and enter the six-digit code. On your Mac, select your game, turn on **Use iPhone as card reader**, and restart the game.

Requires iOS 17 or later and AirmaiDX 0.2.13 or later. NFC scanning requires a compatible iPhone and card.

## Android (experimental)

No native port. See [android/winlator](android/winlator/README.md) for running the Windows package in Winlator.

## Development

See [Architecture](docs/ARCHITECTURE.md), [Build and test](docs/BUILDING.md), and [Third-party notices](docs/THIRD_PARTY_NOTICES.md).

AirmaiDX source is available under the [MIT License](LICENSE). Third-party components retain their own licenses. The project name and artwork identify the project and do not imply endorsement by another party.

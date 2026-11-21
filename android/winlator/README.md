# Running on Android with Winlator (experimental, untested)

AirmaiDX itself is macOS-only (Wine + DXMT/Metal). On Android, run the same Windows
package in [Winlator](https://github.com/brunodev85/winlator) (or a fork) yourself.
Bring a game package you are authorized to use. Not verified on real hardware; Unity D3D11
under Box64 may be too slow, especially on Mali GPUs (Turnip/Adreno works best).

1. Copy the game folder (contains `Sinmai.exe`, `inject.exe`, `segatools.ini`) to the device.
2. Install Winlator; create a 64-bit container: Wine 9+, Vulkan + DXVK 2.x, Box64 performance
   preset, screen 1080x1920 (lower if slow). Add the game folder under Drives.
3. Start the container and run `vcredist_x64.exe` (VC++ 2012) from
   <https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x64.exe>
   (SHA-256 `681be3e5ba9fd3da02c09d7e565adfa078640ed66a0d58583efad2c1e3cc4064`).
4. Copy `start.bat` from this folder into the game folder; edit the `Sinmai.exe` arguments if needed.
5. Set the shortcut's working directory to the game folder and launch `start.bat`.
   In `segatools.ini` set `[aime] enable=0` (or `scan=0`) if you have no card reader.

`start.bat` mirrors what `Native/GameLauncher.c` does on macOS: start `inject.exe ... amdaemon.exe`
hidden, wait, then start `Sinmai.exe`.

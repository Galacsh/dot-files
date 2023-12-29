# VSCode configuration

## Import default profile

Since current version(1.85.1) of VSCode is unable to import profile as a default profile,
use below commands to update the default profile.

### macOS

```shell
cp -f Default/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
cat Default/extensions.txt | xargs -L1 code --profile="Default" --install-extension
```

### Windows (⚠️ Not tested)

```shell
# Window command prompt
copy /Y "Default\settings.json" "%APPDATA%\Code\User\settings.json"
for /F "tokens=*" %a in (Default\extensions.txt) do code --install-extension %a

# PowerShell
Copy-Item -Force "Default\settings.json" -Destination "$env:APPDATA\Code\User\settings.json"
Get-Content "Default\extensions.txt" | ForEach-Object { code --install-extension $_ }
```

### Linux (⚠️ Not tested)

```shell
cp -f Default/settings.json $HOME/.config/Code/User/settings.json
cat Default/extensions.txt | xargs -L1 code --profile="Default" --install-extension
```

- Reference
  - [Make it easy for users to import a profile as default #168867](https://github.com/microsoft/vscode/issues/168867)
  - [Settings file locations](https://code.visualstudio.com/docs/getstarted/settings)

## Other profiles

Use VSCode's "**Import profile**" feature to import other profiles.
Select "*.code-profile" files in this directory.

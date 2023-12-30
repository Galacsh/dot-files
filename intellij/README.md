# IntelliJ settings

## Import settings

1. Open IntelliJ IDEA
2. Import Settings...
3. Select `settings` directory

## Plugins

### Installed

> [!IMPORTANT]
> (~ 2023.12.30) Plugins will not be installed automatically.

- **IdeaVim** (IdeaVIM)
- **GitHub Copilot** (com.github.copilot)
- **Catppuccin Theme** (com.github.catppuccin.jetbrains)
- **Catppuccin Icons** (com.github.catppuccin.jetbrains_icons)
- **Key Promoter X** (Key Promoter X)
- **VSCode Keymap** (com.intellij.plugins.vscodekeymap)
- **String Manipulation** (String Manipulation)
- **Rainbow Brackets** (izhangzhihao.rainbow.brackets)
- **JPA Buddy** (com.haulmont.jpab)
- **GitToolBox** (zielu.gittoolbox)
- **.ignore** (mobi.hsz.idea.gitignore)

### Disabled

To disable plugins using `disabled_plugins.txt`:

```shell
# For macOS
cat disabled_plugins.txt >> ~/Library/Application\ Support/JetBrains/IntelliJIdea<version>/disabled_plugins.txt
```

See [IntelliJ IDEA Configuration directory](https://www.jetbrains.com/help/idea/directories-used-by-the-ide-to-store-settings-caches-plugins-and-logs.html#config-directory) for appropriate path for your OS.

> [!WARNING]
> In above command, you should replace <version> with your IntelliJ IDEA version.

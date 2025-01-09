# Plugin Reference

## Obsidian.nvim

| Command                                  | Description                                                                                                                       |
| ---------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| `:ObsidianOpen [QUERY]`                  | Open a note in the Obsidian app                                                                                                   |
| `:ObsidianNew [TITLE]`                   | Create a new note                                                                                                                 |
| `:ObsidianQuickSwitch`                   | Quickly switch to (or open) another note in your vault, searching by its name using ripgrep with your preferred picker            |
| `:ObsidianFollowLink` \[vsplit\|hsplit\] | Follow a note reference under the cursor, optionally opening it in a vertical or horizontal split                                 |
| `:ObsidianBacklinks`                     | Get a picker list of references to the current buffer                                                                             |
| `:ObsidianTags [TAG ...]`                | Get a picker list of all occurrences of the given tags                                                                            |
| `:ObsidianToday [OFFSET]`                | Open/create a new daily note                                                                                                      |
| `:ObsidianYesterday`                     | Open/create the daily note for the previous working day                                                                           |
| `:ObsidianTomorrow`                      | Open/create the daily note for the next working day                                                                               |
| `:ObsidianDailies [OFFSET ...]`          | Open a picker list of daily notes                                                                                                 |
| `:ObsidianTemplate [NAME]`               | Insert a template from the templates folder, selecting from a list using your preferred picker                                    |
| `:ObsidianSearch [QUERY]`                | Search for (or create) notes in your vault using ripgrep with your preferred picker                                               |
| `:ObsidianLink [QUERY]`                  | Link an inline visual selection of text to a note                                                                                 |
| `:ObsidianLinkNew [TITLE]`               | Create a new note and link it to an inline visual selection of text                                                               |
| `:ObsidianLinks`                         | Collect all links within the current buffer into a picker window                                                                  |
| `:ObsidianExtractNote [TITLE]`           | Extract the visually selected text into a new note and link to it                                                                 |
| `:ObsidianWorkspace [NAME]`              | Switch to another workspace                                                                                                       |
| `:ObsidianPasteImg [IMGNAME]`            | Paste an image from the clipboard into the note at the cursor position by saving it to the vault and adding a markdown image link |
| `:ObsidianRename [NEWNAME] [--dry-run]`  | Rename the note of the current buffer or reference under the cursor, updating all backlinks across the vault                      |
| `:ObsidianToggleCheckbox`                | Cycle through checkbox options                                                                                                    |
| `:ObsidianNewFromTemplate [TITLE]`       | Create a new note from a template in the templates folder                                                                         |
| `:ObsidianTOC`                           | Load the table of contents of the current note into a picker list                                                                 |

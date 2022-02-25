# Mac Development Setup (Ansible Playbook)

This project is highly inspired by [Jeff Geerling's mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook).

## What's in this repo?

- macOS configuration
- Homebrew bundle
- iTerm2 preferences
- Karabiner-Elements rules
- Cloudflare DoH profile (https://github.com/paulmillr/encrypted-dns)

## Installation

1. Clone this repository to your local drive and change working directory to there.
2. Run `brew bundle install --verbose` to install applications listed in `Brewfile`.
3. Run `ansible-playbook main.yml`.
4. Optionally enable DoH by double-clicking `cloudflare-https.mobileconfig`.

### Running a specific set of tasks

You can filter which part of the provisioning process to run either by manually changing variables defined in `config.yml` (start with `configure_*`), or specifying a set of tags using `ansible-playbook` command's `--tags` flag. The tags available are `finder`, `karabiner`, `keyboard` and `zsh`.

```shellscript
ansible-playbook main.yml --tags "finder,keyboard"
```

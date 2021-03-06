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
1. Optionally enable DoH by double-clicking `cloudflare-https.mobileconfig`.
1. Run `softwareupdate --all --install --force` to upgrade to latest softwares.
1. (Apple Silicon only) Run `sudo softwareupdate --install-rosetta` to install Rosetta.
1. Run `brew bundle install --verbose` to install applications listed in `Brewfile`.
1. Run `ansible-playbook main.yml`.
1. Run `p10k configure` to install _Meslo Nerd Font_.
1. Configure `iTerm2`.

   1. Open `iTerm2`.
   1. Go to `Preferences > General > Preferences`
   1. Check `Load preferences from a custom folder or URL` and select `assets/iTerm2` directory.

### Running a specific set of tasks

You can filter which part of the provisioning process to run either by manually changing variables defined in `config.yml` (start with `configure_*`), or specifying a set of tags using `ansible-playbook` command's `--tags` flag. The tags available are `finder`, `karabiner`, `keyboard` and `zsh`.

```shellscript
ansible-playbook main.yml --tags "finder,keyboard"
```

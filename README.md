# Mac Development Setup (Ansible Playbook)

This project is highly inspired by [Jeff Geerling's mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook).

## What's in this repo?

- macOS configuration
- List of Homebrew formulae, casks
- List of Mac App Store apps
- iTerm2 preferences
- Karabiner-Elements rules
- Cloudflare DoH profile (https://github.com/paulmillr/encrypted-dns)

## Installation

1. Go to System Settings > Privacy & Security > Developer Tools, and Add the preferred terminal application to the list.
1. Install [Homebrew](https://brew.sh).
1. Install ansible and git by running `brew install ansible git`.
1. Clone this repository to your local drive and change working directory to there.
1. (Optional) Copy post tasks to `post_tasks` directory.
1. (Optional) Enable DoH by double-clicking `cloudflare-https.mobileconfig`.
1. Run `softwareupdate --all --install --force` to upgrade to the latest software.
1. (Apple Silicon only) Run `softwareupdate --install-rosetta` to install Rosetta.
1. Run `ansible-playbook main.yml`.
1. Configure `iTerm2`.

   1. Open `iTerm2`.
   1. Go to `Preferences > General > Preferences`
   1. Check `Load preferences from a custom folder or URL` and select `files/iTerm2` directory.

### Running a specific set of tasks

You can filter which part of the provisioning process to run either by manually changing variables defined in `config.yml` (start with `configure_*`), or specifying a set of tags using `ansible-playbook` command's `--tags` flag.
The tags available are `keyboard`, `menubar`, `dock`, `finder`, `homebrew`, `mas`, `karabiner`, and `post`.

```shellscript
ansible-playbook main.yml --tags "finder,keyboard"
```

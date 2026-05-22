# Workstation Ansible

Automated workstation configuration using Ansible. Installs and configures base packages, Neovim, tmux, and fish shell across Debian, RedHat, and SUSE-based systems.

---

## Requirements

- Ansible >= 2.14
- Python 3
- Internet access
- sudo/become privileges

## Quick Start

### 1. Clone

```sh
git clone https://github.com/suresh-chandran-pulikkal/workstation-ansible.git
cd workstation-ansible
```

### 2. Install Ansible

```sh
sudo apt install ansible    # Debian/Ubuntu
sudo dnf install ansible    # Fedora/RHEL
sudo zypper install ansible # openSUSE
```

### 3. Install required collections

```sh
ansible-galaxy collection install -r requirements.yml
```

### 4. Run

```sh
ansible-playbook playbooks/workstation.yml
```

---

## Repository Structure

```
workstation-ansible/
├── ansible.cfg
├── requirements.yml
├── inventory/
│   └── localhost.ini
├── group_vars/
│   └── all.yml               # common vars + repo URL overrides
├── files/
│   ├── neovim/               # custom neovim lua configs and plugins
│   └── tmux/                 # tmux config files
└── playbooks/
    ├── workstation.yml        # master playbook (all roles)
    ├── base_packages.yml      # base packages only
    ├── tmux-setup.yml         # tmux only
    └── roles/
        ├── base_packages/     # installs OS packages (Debian/RedHat/SUSE)
        ├── neovim/            # installs and configures Neovim
        ├── setup-tmux/        # installs tmux, deploys config from git
        └── setup-fish/        # installs fish + starship, deploys config from git
```

---

## Roles

| Role | What it does |
|---|---|
| `base_packages` | Installs OS-specific base packages; supports Debian, RedHat, Suse |
| `neovim` | Installs Neovim (snap on Debian, package manager elsewhere), clones custom config from git |
| `setup-tmux` | Installs tmux, clones config repo, creates symlinks |
| `setup-fish` | Installs fish + starship, clones config repo, sets fish as default shell |

---

## Customization

### Override repo URLs

Edit `group_vars/all.yml`:

```yaml
my_neovim_repo: "https://github.com/your-fork/customized-neovim"
fish_config_repo: "https://github.com/your-fork/fish-customised.git"
tmux_config_repo: "https://github.com/your-fork/tmux.git"
```

### Override the config user

```yaml
config_user_id: myuser
```

Or set at runtime:

```sh
ansible-playbook playbooks/workstation.yml -e config_user_id=myuser
```

---

## Tags

Run only specific phases:

```sh
# install only
ansible-playbook playbooks/workstation.yml --tags install

# configure only
ansible-playbook playbooks/workstation.yml --tags config

# validate only
ansible-playbook playbooks/workstation.yml --tags validate

# single role
ansible-playbook playbooks/workstation.yml --tags neovim

# combine
ansible-playbook playbooks/workstation.yml --tags "neovim,install"

# skip validation
ansible-playbook playbooks/workstation.yml --skip-tags validate
```

---

## Status

| Feature | Status |
|---|---|
| Base OS packages (Debian/RedHat/SUSE) | Done |
| Neovim + custom config | Done |
| tmux + custom config | Done |
| fish shell + starship prompt | Done |
| Dotfiles (fish, bash) | In progress |
| Multi-distro support (Arch, Alpine) | Planned |
| Molecule tests | Planned |

---

## Linting

```sh
pip install ansible-lint yamllint
yamllint -c .yamllint.yml .
ansible-lint playbooks/
```

CI runs automatically on push and pull requests via GitHub Actions.

---

## Troubleshooting

Verbose output:

```sh
ansible-playbook playbooks/workstation.yml -v
```

Dry run:

```sh
ansible-playbook playbooks/workstation.yml --check
```

List all tags:

```sh
ansible-playbook playbooks/workstation.yml --list-tags
```

---

## Why This Setup?

- **Consistency & Repeatability** – Deploy your tools the same way, every time.
- **Efficiency Boost** – Minimize manual setup, focus on coding and automation instead.
- **Scalability** – Adapt environments dynamically for development, testing, and production.
- **Seamless Workflow** – Everything works out-of-the-box, reducing troubleshooting time.

---

## Checklist

| Feature | Status |
|---|---|
| Base OS packages and tools for Linux/SRE/DevOps | ✅ Completed |
| Neovim with custom config | ✅ Completed |
| Mason (LSP/linter/formatter installer) | ✅ Completed |
| Neovim plugins (telescope, treesitter, nvim-cmp, nvim-tree, whichkey, etc.) | ✅ Completed |
| LSP, Formatter & Snippets (Ansible, Docker, Python, Shellscript, Lua) | ✅ Completed |
| Docker & docker-compose packages | ✅ Completed |
| Kubernetes tools (kubectl, helm, helmfile) | ✅ Completed (Debian/RedHat); ☐ Planned (SUSE) |
| Tmux & custom configurations | ✅ Completed |
| Fish shell + starship prompt | ✅ Completed |
| Dotfiles (fish, bash) | ☐ Not completed |
| Shell configuration | ☐ Not completed |
| Multi-distro support (Arch, Alpine) | ☐ Planned |
| Molecule tests | ☐ Planned |

---

## Contributing

Fork and submit PRs. Run linting before pushing.

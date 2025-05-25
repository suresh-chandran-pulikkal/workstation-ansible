Workstation Ansible Setup
Automated development workstation configuration using Ansible.
📌 Features
- Installs and configures Neovim, Tmux, and essential plugins.
- Sets up LazyVim, Tmux plugins, and shell environments like Fish/Zsh.
- Automates dotfile management and workflow optimizations.
🚀 Installation
1. Clone the Repository
git clone https://github.com/suresh-chandran-pulikkal/workstation-ansible.git
cd workstation-ansible


2. Install Ansible
Ensure Ansible is installed:
sudo apt install ansible  # Debian-based
sudo dnf install ansible  # Fedora-based
sudo zypper install ansible  # openSUSE


3. Run the Playbook
ansible-playbook workstation.yml --ask-become-pass


This will configure the workstation automatically.
⚙ Customization
Modify group_vars/all.yml to adjust settings:
nvim_custom_configs_s: "~/.config/nvim/lua/config/custom/"
nvim_custom_plugins_s: "~/.config/nvim/lua/plugins/custom/"


Change shell preferences, dotfiles, and more as needed.
❓ Troubleshooting
If something doesn’t work:
ansible-playbook setup.yml --verbose


Use --check mode for a dry run:
ansible-playbook setup.yml --check

✨ Contributing
Feel free to fork and submit PRs!

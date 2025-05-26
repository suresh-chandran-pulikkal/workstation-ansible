# **Workstation setup using Ansible**
Automated **development workstation** configuration using **Ansible**.

## 📌 **Features**
- Installs and configures **Neovim**, **Tmux**, and essential plugins.
- Sets up **LazyVim**, **Tmux plugins**, and shell environments like **Fish/Zsh**.
- Automates **dotfile management** and workflow optimizations.

## 🚀 **Installation**
### **1. Clone the Repository**
```sh
git clone https://github.com/suresh-chandran-pulikkal/workstation-ansible.git
cd workstation-ansible
```
### **2. Install Ansible**
Ensure Ansible is installed:
```sh
sudo apt install ansible  # Debian-based
sudo dnf install ansible  # Fedora-based
sudo zypper install ansible  # openSUSE
```
### **3. Run the Playbook**
```sh
ansible-playbook workstation.yml --ask-become-pass
```
This will configure the workstation automatically.

## ⚙ **Customization**
```sh
Modify group_vars/all.yml to adjust settings:
Custom configuration files : "~/.config/nvim/lua/config/custom/"
Custom plugins files : "~/.config/nvim/lua/plugins/custom/"
```

Change shell preferences, dotfiles, and more as needed.

## ✅ **Checklist**

Here’s your checklist **formatted as a table** for better readability:

| **Features**                  | **Status**      |
|--------------------------------|---------------|
| Base OS packages               | ✅ Completed  |
| Neovim                         | ✅ Completed  |
| LazyVim                        | ✅ Completed  |
| Neovim Plugins                 | ✅ Completed  |
| Ansible/yaml LSP, Linters, Snippets | ✅ Completed  |
| Dotfiles                       | ☐ Not completed |
| Tmux                           | ☐ Not completed |
| Shell Configuration            | ☐ Not completed |




❓ Troubleshooting
If something doesn’t work:
```sh
ansible-playbook workstation.yml --verbose
```

Use --check mode for a dry run:
```sh
ansible-playbook workstation.yml --check
```
✨ Contributing
Feel free to fork and submit PRs!

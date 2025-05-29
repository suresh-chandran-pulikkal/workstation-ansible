# **Workstation setup using Ansible**
Automated **development workstation** configuration using **Ansible**.

---
### 📜 **Repository Overview**  
This repository provides a **fully automated, optimized setup** for managing development environments, system configurations, and infrastructure provisioning. It streamlines workflows with:  

- **Ansible Playbooks** – Automating installations, configuration management, and task execution.  
- **LazyVim Customizations** – Enhancing coding efficiency with intelligent auto-completion, linting, and snippet support.  
- **Tmux Configurations** – Improving session persistence and multitasking with advanced plugins like `tmux-resurrect` and `tmux-continuum`.  
- **Infrastructure Automation** – Leveraging **Terraform and Kubernetes** for scalable, reproducible cloud-native deployments.  
- **Bash & Python Scripting** – Automating repetitive tasks, integrating APIs, and optimizing system performance.  

### ⚡ **Why This Setup?**  
✅ **Consistency & Repeatability** – Deploy your tools the same way, every time.  
✅ **Efficiency Boost** – Minimize manual setup, focus on **coding and automation** instead.  
✅ **Scalability** – Adapt environments dynamically for **development, testing, and production**.  
✅ **Seamless Workflow** – Everything works **out-of-the-box**, reducing troubleshooting time.  

🔧 ** Automation isn’t just a process—it’s a mindset. 🧠💡 **  



## 📌 **Features**
- Installs and configures **Neovim**, **Tmux**, and essential plugins.
- Sets up **LazyVim**, **Tmux plugins**, and shell environments like **Fish/Zsh**.
- Automates **dotfile management** and workflow optimizations.

## 📝 **Requirements**

- Internet connection
- User must have permissions to install packages and run commands as root.

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
ansible-playbook setup-workstation.yml
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
| Base OS packages for development               | ✅ Completed  |
| Neovim                         | ✅ Completed  |
| LazyVim                        | ✅ Completed  |
| Mason| ✅ Completed  |
| Neovim Plugins                 | ✅ Completed  |
| AI/ML Plugins| ✅ Completed  |
| LSP, Formateter & Snippets for development (Ansible, Docker, Python, Shellscript, Lua)| ✅ Completed  |
| Dotfiles (fish, bash )                       | ☐ Not completed |
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

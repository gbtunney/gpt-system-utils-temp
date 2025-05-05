## 📄 SSH Key Overview
**Version:** 1.2.0  
**Last Updated:** 2025-05-05

---

### 🔐 SSH Key Status Overview

| Key Purpose        | Private Key     | Public Key          | Config Entry |
| ------------------ | --------------- | ------------------- | ------------ |
| **GitHub**         | `id_github2025` | `id_github2025.pub` | ✅ Yes        |
| **Home Assistant** | `id_ha_green`   | `id_ha_green.pub`   | ✅ Yes        |
| **Bluehost**       | *(on hold)*     | *(not created)*     | ❌ No         |

---

### 📌 Notes

- The GitHub and Home Assistant keys have been generated, added to your config file, and are ready for use.
- The Bluehost key is pending creation.

- [ ] Create Bluehost key pair  
- [ ] Add Bluehost key to SSH agent  
- [ ] Update `~/.ssh/config` with Bluehost key details  
- [ ] Test Bluehost SSH connection

---

### ✅ SSH Key Test Checklist

```bash
# Test GitHub SSH connection
ssh -T git@github.com

# Test Home Assistant connection
ssh homeassistant.local

# Placeholder for Bluehost connection (once configured)
ssh bluehost
```

- [ ] GitHub connection returns: `Hi gbtunney! You've successfully authenticated...`
- [ ] Home Assistant shell login opens for `ssh homeassistant.local`
- [ ] Bluehost connects successfully with `ssh bluehost` (once key is configured)

---

### 🧪 System Diagnostics Checklist

```bash
# ===== Node, NPM, and PNPM ===== #
node -v
npm -v
pnpm -v

# ===== Python =====
python3 --version
pip3 --version

# ===== Git =====
git --version

# ===== SSH =====
ssh -V
ssh-add -l

# ===== Docker =====
docker --version
docker info

# ===== macOS =====
sw_vers

# ===== Debian/Ubuntu tools =====
apt-get -v
wget --version
curl --version
```

---

### 🕘 Changelog

- **1.2.0** – Added success checklist for testing SSH connections and connection test scripts  
- **1.1.0** – Added checklist block for Bluehost key setup and bumped version  
- **1.0.0** – Initial version with GitHub and Home Assistant keys complete, Bluehost pending

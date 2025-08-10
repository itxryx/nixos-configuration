# NixOS Configuration for GPD WIN MAX 2 2025

## Initial Setup

### 0. Install git (if not already installed)
```bash
# Enable flakes and install git temporarily
sudo nix-shell -p git
```

### 1. Clone configuration
```bash
# Backup existing configuration
sudo mv /etc/nixos /etc/nixos.bak

# Clone this repository
sudo git clone https://github.com/itxryx/nixos-configuration /etc/nixos
cd /etc/nixos
```

### 2. Generate hardware configuration
```bash
sudo nixos-generate-config --dir /etc/nixos
```

### 3. Apply configuration
```bash
# Test build
sudo nixos-rebuild dry-build --flake .#nixos

# Apply configuration
sudo nixos-rebuild switch --flake .#nixos
```

## Maintenance

### Update packages
```bash
cd /etc/nixos
nix flake update
sudo nixos-rebuild switch --flake .#nixos
```

### Rollback
```bash
sudo nixos-rebuild switch --rollback
```
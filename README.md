# 🎯 CAMHUNTER-29

> **Advanced Network Camera Reconnaissance & Security Assessment Tool**

[![Version](https://img.shields.io/badge/Version-1.0-red)](https://github.com/MrRedRaccoon/CAMHUNTER-29)
[![Platform](https://img.shields.io/badge/Platform-Linux-blue)](https://github.com/MrRedRaccoon/CAMHUNTER-29)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Active-brightgreen)](https://github.com/MrRedRaccoon/CAMHUNTER-29)
[![Requirements](https://img.shields.io/badge/Requirements-nmap%20%7C%20ffmpeg%20%7C%20arp--scan-orange)](README.md)

**CAMHUNTER-29** is a sophisticated security reconnaissance tool designed for authorized penetration testing and vulnerability assessment of IoT surveillance systems. This automated framework identifies, classifies, and analyzes network-connected cameras, generating comprehensive security reports for legitimate security audits.

---

## 📋 Table of Contents

- [Features](#-features)
- [Installation](#-installation)
- [Usage](#-usage)
- [Output](#-output)
- [Legal Notice](#⚠️-legal--ethical-notice)
- [Screenshots](#-screenshots)
- [Detection Methods](#-detection-methods)
- [Roadmap](#-roadmap)
- [Contributing](#-contributing)
- [License](#-license)
- [Acknowledgments](#-acknowledgments)

---

## ✨ Features

### 🎯 **Core Capabilities**
- **Network Discovery** - Automated scanning of local networks for active devices
- **Camera Identification** - Intelligent detection of IP cameras, DVRs, and NVRs
- **Vulnerability Assessment** - Testing for common security weaknesses
- **Credential Testing** - Automatic testing against default camera credentials
- **Stream Detection** - Identification of exposed RTSP/HTTP video streams

### 📊 **Reporting & Output**
- **Professional HTML Reports** - Detailed security findings with metadata
- **Playlist Generation** - M3U playlists for easy stream access
- **Logging System** - Complete audit trail of all scanning activities
- **Visual Interface** - Color-coded terminal output with real-time status

### 🔧 **Technical Specifications**
- **Protocol Support**: HTTP, RTSP, RTMP, ONVIF (partial)
- **Port Scanning**: 80, 443, 554, 37777, 8080, and more
- **Credential Database**: 15+ common default camera credentials
- **Vendor Detection**: MAC-based camera manufacturer identification
- **Stream Paths**: 16+ common RTSP URL patterns

---

## 🛠️ Installation

### Prerequisites
```bash
# Required tools
sudo apt-get update
sudo apt-get install -y nmap arp-scan ffmpeg curl

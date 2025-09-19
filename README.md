# Server Performance Stats Script

This project provides a simple Bash script (`server-stats.sh`) to analyze **basic server performance stats**.  
The script is lightweight and can be run on any Linux server (including WSL).  

---

## 📌 Features
The script provides the following information:

1. **Total CPU usage**  
2. **Total memory usage** (Free vs Used including percentage)  
3. **Total disk usage** (Free vs Used including percentage)  
4. **Top 5 processes by CPU usage**  
5. **Top 5 processes by memory usage**

---

## 📂 File
- `server-stats.sh` → Main script

---

## ⚡ Usage
Make the script executable and run it:

```bash
chmod +x server-stats.sh
./server-stats.sh

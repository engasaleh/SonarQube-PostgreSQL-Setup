# SonarQube with PostgreSQL Docker Setup  

🚀 **Deploy SonarQube with PostgreSQL using Docker in two ways:**  
1. **Docker Compose** (Recommended for simplicity)  
2. **Docker CLI** (For manual control)  

## **📌 Features**  
✅ **Pre-configured PostgreSQL** for SonarQube  
✅ **Persistent storage** using Docker volumes  
✅ **Easy setup** with `docker-compose` or `docker run` commands  
✅ **Production-ready** with best practices  

## **⚡ Quick Start**  

### **Option 1: Docker Compose (Recommended)**  
```bash
cd docker-compose
docker-compose up -d
```

### **Option 2: Docker CLI**  
```bash
cd docker-cli
chmod +x setup.sh
./setup.sh
```

🔹 **Access SonarQube:** `http://localhost:9000`  
🔹 **Default login:** `admin` / `admin`  

---

## **📂 Repository Structure**  
| Directory | Description |
|-----------|-------------|
| `docker-compose/` | Docker Compose setup |
| `docker-cli/` | Docker CLI setup |
| `.gitignore` | Excluded files |

---

## **🔧 Maintenance**  
### **Backup Database**  
```bash
docker exec -t postgres pg_dumpall -U sonar > sonarqube_backup.sql
```

### **Upgrade SonarQube**  
1. Stop containers  
2. Pull new images  
3. Restart  

---

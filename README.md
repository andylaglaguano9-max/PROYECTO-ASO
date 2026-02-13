# Proyecto Final Infraestructura - SOC Panel & LDAP RBAC

## 📋 Prerrequisitos
1. **ZeroTier**: Estar unido a la red y autorizado (IPs 10.26.208.x).
2. **Docker & Docker Compose**: Para los servicios de monitoreo.
3. **OpenLDAP**: Instalado y corriendo en el puerto 389.

## 🛠️ Despliegue Rápido
1. **Clonar Repo:** `git clone <url-tu-repo>`
2. **Levantar Monitoreo:** `cd monitoreo && docker compose up -d`
3. **Configurar LDAP:** `sudo dpkg-reconfigure slapd` (Dominio: proyecto.local).

## 🔑 Variables y Credenciales
- **LDAP_HOST:** 10.26.208.201
- **BASE_DN:** ou=Usuarios,dc=proyecto,dc=local
- **ADMIN_BIND_DN:** cn=admin,dc=proyecto,dc=local
- **BIND_PASS:** 12345
- **Usuarios de prueba:** `lagla` / `companero` (Pass: Password123!)

## 📡 Puertos Abiertos (Hardening UFW)
- **389**: LDAP (Acceso Web)
- **3000**: Grafana (Monitoreo)
- **9100**: Node Exporter (Métricas)

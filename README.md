# ITFlow Docker Stack

Deze repository bevat de configuratiebestanden om ITFlow te implementeren met Docker en Portainer. Het maakt gebruik van Docker Compose om ITFlow en de benodigde MariaDB-database eenvoudig te beheren en te draaien.

## Inhoud

- `docker-compose.yml`: De Docker Compose-configuratie voor ITFlow en MariaDB.
- `Dockerfile`: Aanpassingen voor ITFlow-containers, inclusief PHP-configuraties.
- `entrypoint.sh`: Script voor het instellen van runtime PHP-configuraties.
---

## Vereisten

1. **Docker** en **Docker Compose** geïnstalleerd.
2. **Portainer** voor het beheren van de stack.
3. **Git** indien je de repository lokaal wilt klonen.

---

## Installatie

### 1. Repository klonen
Kloon de repository naar je lokale machine:
```bash
git clone https://github.com/dnlweijers/itflow.git
cd itflow-docker

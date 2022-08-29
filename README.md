# XR Stager Custom Keycloak Theme

Alle Themes sind basierend auf dem Keycloak Theme und ändern nur das verwendete CSS.

## Theme testen

Das Theme kann getestet werden, indem das Script `start_keycloak_testing_container.sh` ausgeführt wird. Dazu sind ein paar Vorbereitungen notwendig:

- Docker muss installiert sein
- Die Dateipfade in `start_keycloak_testing_container.sh` müssen auf das lokale System angepasst werden

Das Script startet automatisch einen Docker Container mit Keycloak. Man kann sich mit den Daten `admin / admin` einloggen. Anschließend muss unter "Realm Settings" das Theme `xrstager`ausgewählt werden. Das ganze kann im Privaten Modus des Browsers getestet werden.

## Theme deployen und installieren

Das Theme kann am leichtesten installiert werden, wenn es al .jar Datei gepackt wird. Danach kann es im keycloak Docker Container unter /opt/bitnami/keycloak/providers/ kopiert werden. Nach einem Neustart des Containers ist es dann als Theme verfügbar.

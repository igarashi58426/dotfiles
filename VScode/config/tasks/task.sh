case $1 in
"A")
docker container exec -it hole.lan /bin/bash
;;"B")
docker logs -f hole.lan
;;"C")

;;"D")

;;esac

# docker compose -f 'docker-compose.yml' down && docker compose -f 'docker-compose.yml' up -d
# docker compouse -f 'docker-compose.yml' up -d
# docker compose -f 'docker-compose.yml' down

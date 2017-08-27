IP=			hassio.local
USER=		root

put-config:
	scp -rp ./config/* ${USER}@${IP}:/config

get-config:
	scp -rp ${USER}@${IP}:/config/{*.yaml,**/*.yaml,*.conf} ./config

hass-logs:
	ssh ${USER}@${IP} "hassio homeassistant logs"

hass-check:
	ssh ${USER}@${IP} "hassio homeassistant check"

hass-restart:
	ssh ${USER}@${IP} "hassio homeassistant restart"

get-backup:
		scp -rp ${USER}@${IP}:/backup/* ./backup/

put-backup:
		scp -rp ./backup/* ${USER}@${IP}:/backup/

secrets:
	cp ./config/secrets.yaml.sample ./config/secrets.yaml

reset-nest:
	ssh ${USER}@${IP} "sudo rm /home/homeassistant/.homeassistant/nest.con"

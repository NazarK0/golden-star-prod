start:
	docker-compose up --build --remove-orphans
stop:
	docker-compose down --remove-orphans
db-console:
	docker exec -it db bash
app-ui-console:
	docker exec -it app-ui bash
panel-ui-console:
	docker exec -it admin-ui bash
panel-logs:
	docker logs admin-panel
api-console:
	docker exec -it public-api bash
api-logs:
	docker logs public-api
lint:
	npx eslint ./applications/adminPanelServer --ext .ts -f stylish
	npx eslint ./applications/publicApiServer --ext .ts -f stylish
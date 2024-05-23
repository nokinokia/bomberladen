run:
	docker build -t bomberman . && docker run -p 8080:80 -v ./:/usr/share/nginx/html bomberman
	
runn:
	docker build -t bomberman .; docker run -p 8080:80 -v ${PWD}:/usr/share/nginx/html bomberman

deploy:
	git add . && git commit -m "Auto commit" && git push

.PHONY: run deploy runn

default_target: all

TARGET = run

all: $(TARGET)

setup: clean
	npm install

clean:
	rm -rf node_modules

lint:
	./node_modules/jshint/bin/jshint -c ./.jshintrc ./app.js

run:
	@node app.js

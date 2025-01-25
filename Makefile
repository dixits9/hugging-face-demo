# Install dependencies
install:
	pip	install	--upgrade	pip
	pip	install	-r	requirements.txt	

# Run tests
test:
	pytest	-v	test_hello.py	

# Format code
format:
	black	*.py

# Lint
lint:
	pylint	--disable=R,C	hello.py

# Run all targets
all: install	lint	test

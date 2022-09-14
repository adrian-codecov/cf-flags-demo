test.all:
	python3 -m pytest --cov=src --junitxml=pytest-report.xml --cov-report=xml tests/unit

test.index:
	python3 -m pytest --cov=src/index --cov-report=xml tests/unit/index

test.demo:
	python3 -m pytest --cov=src/demo --cov-report=xml tests/unit/demo

codecov.all:
	bash <(curl -s http://localhost/bash) -t 8633fbbf-278c-4a1e-bb1b-2cdc32cdb86b -f coverage.xml

codecov.demo:
	bash <(curl -s http://localhost/bash) -t 8633fbbf-278c-4a1e-bb1b-2cdc32cdb86b -F demo -f coverage.xml

codecov.index:
	bash <(curl -s http://localhost/bash) -t 8633fbbf-278c-4a1e-bb1b-2cdc32cdb86b -F index -f coverage.xml
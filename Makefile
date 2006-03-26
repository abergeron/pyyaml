
.PHONY: default build force install test dist-src clean

PYTHON=/usr/bin/python
TEST=
PARAMETERS=

build:
	${PYTHON} setup.py build ${PARAMETERS}

force:
	${PYTHON} setup.py build -f ${PARAMETERS}

install: build
	${PYTHON} setup.py install ${PARAMETERS}

test: build
	${PYTHON} tests/test_build.py ${TEST}

dist-src:
	${PYTHON} setup.py sdist --formats=zip,gztar

clean:
	${PYTHON} setup.py clean -a


CC=gcc
SRCDIR=src/
DESTDIR=build/

all: build_client_web build_client_correu

help:
	@echo -e "Objectius possibles:\n"
	@echo -e "  * help   :Aquesta ajuda\n"
	@echo -e "  * build  :Compilar/construir executables\n"
	@echo -e "  * clean  :Netejar/borrar projecte\n"
	@echo -e "  * doc    :Crear documentacio\n"

build: 
	mkdir build
	
build_client_web: build
	mkdir -p ${DESTDIR}/client_web
	${CC} ${SRCDIR}/client_web/main.c -o ${DESTDIR}/client_web/client_web

build_client_correu: build
	mkdir -p ${DESTDIR}/client_correu
	${CC} ${SRCDIR}/client_correu/main.c -o ${DESTDIR}/client_correu/client_correu

clean:
	rm -rf ${DESTDIR}

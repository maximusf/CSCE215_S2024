CC=g++
CFLAGS=--std=c++17
EXE=fib
SRC=./src
INC=./inc
OBJ=./obj
DEBUG=./debug.log

all: clean obj fib.o main.o
	$(CC) $(CFLAGS) -o $(EXE) $(OBJ)/*

main.o: obj $(INC)/main.h $(SRC)/main.cpp
	$(CC) $(CFLAGS) -c $(SRC)/main.cpp -o $(OBJ)/main.o

fib.o: obj $(INC)/fib.h $(SRC)/fib.cpp
	$(CC) $(CFLAGS) -c $(SRC)/fib.cpp -o $(OBJ)/fib.o

obj:
	mkdir -p $(OBJ)

submit: obj
	./a_submit.sh

extract: submit
	./b_extract.sh

test: extract
	./$(EXE)

clean:
	rm -rf $(EXE) $(OBJ) $(DEBUG)

cleanall: clean
	rm -rf testing submissions out



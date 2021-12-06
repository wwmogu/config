## reference: 
## https://www.cs.swarthmore.edu/~newhall/unixhelp/howto_makefiles.html


# the complier: g++ or clang
CC=g++

# complier flags:
# -Wall turns on most, but not all, complier warnings
CPPFLAGS = -Wall -std=c++11 -O2
DEGUBFLAGS = -g

# the build target executable:
TARGET = main

# type make: generate excutable file "main"
all: $(TARGET).cpp *.hpp
	$(CC) $(CPPFLAGS) -o $(TARGET) $< 

# type make test: auto-test
test: all
	./$(TARGET) < in.txt > out.txt
	diff -Z out.txt cmp.txt

# type make debug: debuging
debug: $(TARGET).cpp *.hpp
	$(CC) $(CPPFLAGS) $(DEGUBFLAGS) -o debug $<

# -Z is for ignore the trailing space
# reference diff's options
# https://stackoverflow.com/questions/16423024/how-can-i-diff-2-files-while-ignoring-leading-white-space/16423101

# copy all files from test_template folder
copy: 
	cp -r ../test_template/* .

# creat useful file for testing
create:
	touch in.txt out.txt cmp.txt logbook-backup.txt

# remove all excutable file and useless file
clean:
	rm main debug in.txt out.txt cmp.txt

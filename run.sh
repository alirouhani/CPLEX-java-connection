#!/bin/bash

# Compile the Java source file and output the class file in the 'bin' directory
javac -d bin -classpath /Applications/CPLEX_Studio2211/cplex/lib/cplex.jar src/test.java

# Check if the compilation was successful
if [ $? -eq 0 ]; then
    echo "Compilation successful."

    # Run the compiled Java program from the 'bin' directory
    cd bin
    java -Djava.library.path=/Applications/CPLEX_Studio2211/cplex/bin/x86-64_osx -classpath /Applications/CPLEX_Studio2211/cplex/lib/cplex.jar: test
else
    echo "Compilation failed."
fi


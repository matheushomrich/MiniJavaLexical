# Compiler
JC := javac

# JFlex executable
JFLEX := jflex

# Source file
LEX_SRC := MiniJavaLexical.flex
JAVA_SRC := MiniJavaLexical.java

# Phony targets
.PHONY: all clean

# Default target
all: $(JAVA_SRC)
	$(JC) $(JAVA_SRC)

# Rule to generate Java source from JFlex specification
$(JAVA_SRC): $(LEX_SRC)
	$(JFLEX) $(LEX_SRC)

# Clean generated files
clean:
	rm -f $(JAVA_SRC) *.class

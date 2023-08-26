JFLEX  = jflex
JAVAC  = javac

# targets:
clean:
    rm -f *~ *.class Yylex.java

AsdrSample.class: MiniJavaLexical.java MiniJavaLexical.java
    $(JAVAC) AsdrSample.java

Yylex.java: MiniJavaLexical.flex
    $(JFLEX) MiniJavaLexical.flex
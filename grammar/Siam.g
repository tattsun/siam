grammar Siam;
options {
    output = AST;
    language = Ruby;
    ASTLabelType = CommonTree;
}

tokens {
}


compilationUnit
    :   INT
    ;


INT :   '0'..'9'+
    ;

WS  :   (' '|'\r'|'\t'|'\n') {$channel=HIDDEN;}
    ;

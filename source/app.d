import std.conv;
import std.stdio;
import std.string;

import apoyo;
import arbol;
static import lexico;
static import semantico;
static import sintaxis;

dstring archivo = "código.ri";

void main()
{
	INFO = true;

	dstring código_ri = leearchivo(archivo);

	iri(código_ri);
}

void iri(dstring código)
{

	lexema[] resultado_lex = lexico.analiza(código);

	infoln();

	info(to!dstring(resultado_lex));

	Nodo árbol_gramatical = sintaxis.analiza(resultado_lex);

	infoln();

	bool resultado = semantico.analiza(árbol_gramatical);

	infoln();
}
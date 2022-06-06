enum Ambientes {
  producao,
  prodicaoInterno,
  homologacao,
  teste
}

void main(List<String> args) {
var amb = Ambientes.producao;
if ( Ambientes.producao == '192.555.55.555') {
  print('Você está da producao');
}else if (Ambientes.homologacao == '789.456.123') {
  print('Você está na homologação');
} else {
  print('Você está no ambiente de testes');
}


// com a atualização do dart paara a versao 2.15
// posso agora exibir o conteudo da minha variavel enum sem maiores problemas

print(Ambientes.prodicaoInterno.name);

// transformando enums em mapas
// esse codigo irá gerar um map com os indices dos enums e os prorios enums
var enumMap = Ambientes.values.asMap();
// esse codigo ira gerar um enum com os nomes e seus atributos
var enumManeMap = Ambientes.values.asNameMap();

print(enumMap);
print(enumManeMap);
}
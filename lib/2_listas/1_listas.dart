void main(List<String> args) {
   var numero = List.generate(10, (index) => index);

numero.forEach(printPersonalizado);

// expand
// array bidimencional, ou matraiz
var listaDaLista =[
  [1,2,3,4,5,6],
  [7,8,9,10,11]
];

print(listaDaLista[0][0]);

// printo um array de 2 dimenções da mesma forma como printo uma lista com um array de apenas 1 dimenção
for (var element in listaDaLista) {
  print(element);
}

// forma de juntar essas duas lista em apenas 1 lista
var terceitaLista = [...listaDaLista[0],...listaDaLista[1]]; // dessa forma tenho um array de apenas 1 dimensão

// forma mais elegante de fazer a mesma coisa 
// o expand retorna um iterable
// para transformar em uma lista basta adicionar ao final da lista o comando toList
var listaElegante = listaDaLista.expand((element) => listaDaLista).toList();
print(listaElegante);

final ListaDeNome = ['Ulysses', 'Filipe', 'Rafinha','Marcelo','Helto'];

// any -> procura por algo na lista
// nesse caso ele está procurando pela string Ulysses
if (ListaDeNome.any((element) => element == 'Ulysses')) {
  print('Acho Ulysses');
}else{
  print('Não acho Ulysses');
  }

//every
// valida em cada elemento da lista se um teste é verdadeiro
final outraListaDeNome = ['Ulysses', 'Filipe', 'Rafinha','Marcelo','Helto'];
// nesse caso ele ira varlidar se todos os elementos da lista tem a letra z
// caso sim ele retorna true, e nao false
if (outraListaDeNome.every((element) => element.contains('z'))) {
  print('Acho Z');
}else{
  print('Não acho Z');
  }

//sort
//comando para ordenar uma lsta 

final listaDesordenada = [4,5,1,8,77,22,1,5,66,44,12,15];
listaDesordenada.sort();
print(listaDesordenada);

// ordenando uma lista de nome
final listaDeNomes = ['Ulysses', 'Filipe', 'Rafinha','Marcelo','Helto'];
listaDeNomes.sort();
print(listaDeNomes);

final listaDePacientes = ['Ulysses | 29 ',
'Filipe | 45',
'Clodoaldo | 55',
'Luana | 25', 
'Andreia | 26'];
// posso criar minha propria logica de ordenação como mostrado a baixo
listaDePacientes.sort((nome,nome2){
  var nomesDados = nome.split('|');
  var nomesDados2 = nome2.split('|');

  var idadePac1 = int.parse(nomesDados[1]);
  var idadePac2 = int.parse(nomesDados2[1]);

if (idadePac1 > idadePac2) {
  return 1;
} else if(idadePac1 == idadePac2) {
  return 0;
}else{
  return -1;
}
});
print(listaDePacientes);

//CompareTo
// faz a mesma logica que foi feita a cima. 
// mas quem faz isso é uma classe no tipo num
final listaDePacientes3 = ['Ulysses | 29 ',
'Filipe | 45',
'Clodoaldo | 55',
'Luana | 25', 
'Andreia | 26'];


listaDePacientes3.sort((nome,nome2){
  var nomesDados = nome.split('|');
  var nomesDados2 = nome2.split('|');

  var idadePac1 = int.parse(nomesDados[1]);
  var idadePac2 = int.parse(nomesDados2[1]);

 return idadePac1.compareTo(idadePac2);
});
print(listaDePacientes3);
//OBS: O sort não retorna uma nova lista ordenada, ele ordena a propria lista
// logo se usar o sort vc poder a ordem inicial da lista 
}

void printPersonalizado( Object valor){
print(valor);
}
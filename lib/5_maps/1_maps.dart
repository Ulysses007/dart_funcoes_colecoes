void main(List<String> args) {
  

// MAPS
// Uma das estruturas mais importante do dart e flutter
// muito usado

// Como criar um map
// <String, String> que dizer que a nossa chave é uma String e o valor correpondente a ela tambem é uma String
final novoMap = <String, String>{}; // assim criamos um mapa, (é bem parecido de como criamos um set muda apenas uma coisa)
final novoSet =<String>{};// que colocamos <> na frente ele cria um set em vez de um mapa

//exemplo de um maps com valores
 final mapComValores = <String, String>{
   'Marcelo':'Boi',
   'Filipe':'Irmão',
   'Helton':'Amigo',
   'rafael':'Amigo'
 };
// esse modo o mapa nao pode ser null
 Map<int, int> numerosNonNullSafety = {}; 

// esse modo o mapa pode ser null por conta que coloquei assim <int, int>?
 Map<int, int>? numerosNullSafety = null; 

// esse modo pode ter chavez nulos pois coloquei assim <int?, int>
Map<int?, int> numerosChavesNullSafety = {
  null:0
}; 

// esse modo pode ter valores nulos pois coloquei assim <int, int?>
Map<int, int?> numerosValoresNullSafety = {
  0:null,
  1:null,
  2:10
};

// esse modo pode ter chavez e valores nulos pois coloquei assim <int?, int?>
Map<int?, int?> numerosChavesEValoresNullSafety = {
  null:null,
  1:null,
  null:10
};

// como adicionar elementos em um mapa
//putIfAbsent
 Map<String, String>? mapDeProdutos = {};
 mapDeProdutos.putIfAbsent('bebidas', () => 'corredor 1');
 mapDeProdutos.putIfAbsent('verduras', () => 'corredor 2');
 mapDeProdutos.putIfAbsent('limpeza', () => 'corredor 3');
 // caso tente adiconar um item com uma chave q já existe p elemento nao sera adicionado
 // como nesse exemplo
 mapDeProdutos.putIfAbsent('limpeza', () => 'corredor 4');
 print(mapDeProdutos); 
//como atualizar a chave ao o valor de um elemento do map
//update
// nao posso atualizar uma chave que nao existe
mapDeProdutos.update('bebidas',(_) => 'corredor 6');
print(mapDeProdutos);

// Para tratarmos a atualização de chavez que nao existem podemos fazer da seguinte maneira
mapDeProdutos.update('Higiene', (value) => 'corredor 11', ifAbsent: () => 'corredor 11');
//Coloquei um ifAbsent para se a chave nao existir ele ira mapear uma chave e valor novos
print(mapDeProdutos);

// recuperando o valor
print('Sessao de bebidas: ${mapDeProdutos['bebidas']}');


// foreach para mapas
// OBS: FOREACH é usado para fazer processo sincronos com mapas
mapDeProdutos.forEach((key, value) {
  
  print('elementos do mapa: chave $key e valor $value');
});


// mapas com for in
// OBS: FOR IN usado para fazer algum processo assincrono com mapaz
for (var element in mapDeProdutos.entries) {
  print('chavez e valores ${element.key} e ${element.value}');
}

// posso com o for in pegar apenas as chavez do mapa
// E a mesma coisa para os valores
for (var key in mapDeProdutos.keys) {
  print('chaves do mapa: ${key}');
  }

// pegando apenas os valores
for (var value in mapDeProdutos.values) {
  print('valores do mapa: ${value}');
  }


// como varrer um mapa fazendo modificações nele
// Isso ira me retornar um novo mapa mais cmom os valores todos em letra maiuscula
var novoMapaDeProdutos = mapDeProdutos.map((key, value) {
  return MapEntry(key, value.toUpperCase());
});

print(novoMapaDeProdutos); 


// tambem posso criar mapas dentro de mapa como no exemplo abaixo

Map <String, Object> mapaDentroDeMapa = {
  'nome': 'Ulysses',
  'nome1': 5, 
  'nome2':{ 'chave 1':'mapa interno', 
  'chave 2': 'mapa interno 2'}

};
// veja que o dort ira printa um map, mas o terceiro elemento do map é, outro map interno
// Isso se aproxima tambem da forma de como trabalhos com json dentro do dart
print(mapaDentroDeMapa);
}
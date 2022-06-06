void main(List<String> args) {
String nome = '40';

//EXCEÇÕES NO DART E FLUTTER 
// para feitas para tratarem erros que podem acontecer dentro do programa
//try -> como se ele falasse tente fazer esse comando
// tudo que tiver dentro do try, caso ele não consiga executar 
// o dart irá redirecionar para a blodo do catch
try{
int.parse(nome);// ele vai tentar executar esse comando
}catch(erro){
print('Erro ao converter'); // caso não consiga ira executar o comando dentro do try ele ira executar o catch
}

//o dart nos da a possibilidade de tratar o os tipos de exeção
// exemplo: caso o mnetodo int.parse não consiga converter o numero
// então o proprio metodo no avisa que essa exeção e do tipo FormatException
// Podemos colocar isso antes do cacth para que o dart só entre deentro dessa exeção
//apenas quando o erro geraado for do tipo FormatException
//veja no exemplo abaixo 
String? nomenulo; 
try{
int.parse(nome);// ele vai tentar executar esse comando
nomenulo!.length; //; Isso tambem ira me gerar uma exceção mas ele ira executar o segundo cast
} on FormatException catch(erro_1){
print('Erro ao converter numero'); // ele so ira entrar aqui caso o erro for do tipo FormatException
}
catch(erro_2){// chamadao de exceção generica
print('Erro ao chamar metodo length'); // caso o erro for de outro tipo que nao  FormatException ele ira executar essa exceção
}



//OBS: Lembrado que caso o try contenha codigos com 2 ou main execoçoes o dart ira executar apenas a primeirta execeção
// As execeções devem ser ordenadas das especifidas para as genericas
// pois se colocar a generica primeiro o dart sempre entrará nela e nunca passará pelas outras
//veja a maneira correta de fazer
try{
int.parse(nome);// ele vai tentar executar esse comando
nomenulo!.length; //; Isso tambem ira me gerar uma exceção mas ele ira executar o segundo cast
} on FormatException catch(erro_1){
print('Erro ao converter numero'); // ele so ira entrar aqui caso o erro for do tipo FormatException
}on TypeError catch(erro_2){
print('Erro ao converter numero'); // ele so ira entrar aqui caso o erro for do tipo FormatException
}
catch(erro_3){// chamadao de exceção generica
print('Erro ao chamar metodo length'); // caso o erro for de outro tipo que nao  FormatException ele ira executar essa exceção
}

//FANALLY
// O fanally é uma estrutura que pode fazer parte da execeção
//ele será excecutado sempre, independente se o programa dé alguma exceção ou nao
// exemplo abaixo
// o finally é muito excecutado para quando trabalhamos com banco de dados.
try{
int.parse(nome);// ele vai tentar executar esse comando
nomenulo!.length; //; Isso tambem ira me gerar uma exceção mas ele ira executar o segundo cast
} on FormatException catch(erro_1){
print('Erro ao converter numero'); // ele so ira entrar aqui caso o erro for do tipo FormatException
}on TypeError catch(erro_2){
print('Erro ao converter numero'); // ele so ira entrar aqui caso o erro for do tipo FormatException
}
catch(erro_3){// chamadao de exceção generica
print('Erro ao chamar metodo length'); // caso o erro for de outro tipo que nao  FormatException ele ira executar essa exceção
}finally{
  print('Irá passar independente de erro'); // sempre vai passar aqui.
}



// parametros do cacth (Erro,  StackTrace)
// Parametro erro -> Apenas identifica o conteudo que gerou on erro
// Parametro StackTrace -> Mostra todo o caminho que o dart fez até chegar na linha especifica que gerou o erro
try{
int.parse(nome);
}catch(erro_1, stack){
print(erro_1);// retorna o conteudo que gerouno erro
print(stack); // Identifica a linha que gerou o erro
}finally{
  print('Irá passar independente de erro'); // sempre vai passar aqui.
}


// Cao especifique o tipo de erro comom por exemplo o TypeError então o cacth pasa a ser opcional
//Caso você necessite do cactr pode colocalo sem problemas, mas se nao for usar pode omiti-lo sem problemas
//exemplo
try{
int.parse(nome);
}on FormatException{// veja que nao coloqueio cacth nessa linha, pois identifiquei o tipo de erro.
  print('Erro ao converter');
}finally{
  print('Irá passar independente de erro'); // sempre vai passar aqui.
}

// Aprendendo a forçar uma exceção
// Veja que o int.parse será executado com sucesso
// contudo o numero será direfente de 30 dai eu forceei ele entrar numa exeção
// Observe que a resposta no console será a da exception
// Veja o exemplo abaixo
//OBS o metodo Exception é pai de todas as outras execeções
// de modo que ele sempre terá que ficar antes das execoções generias e apos as especificas
// se colocar ele antes das exceções especificas então sempre irá entrar nele gerando um codigo morto nas outras exceções

try{
int.parse(nome);

if (nome != 30) {
  throw Exception();
}
}on FormatException{
  print('Erro ao converter');
}on Exception{
  print('Erro ao pois o numero não é 30');
}finally{
  print('Irá passar independente de erro'); // sempre vai passar aqui.
}

}
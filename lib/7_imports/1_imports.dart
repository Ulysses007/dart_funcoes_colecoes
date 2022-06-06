//maneira de fazer o importe em o pack
import '2_soma.dart';
//importando com p pack
// // Posso i importe dessa maniera tambem
// import 'package:dart_funcoes_colecoes/7_imports/2_soma.dart';
// import 'package:dart_funcoes_colecoes/7_imports/2_soma.dart';
import 'package:dart_funcoes_colecoes/7_imports/2_soma.dart' as  soma;

//Posso usar o alias para diferenciar funções com mesmos nomes
// caso queira chamar a soma  do arquivo 2_soma basta usar o alias soma
//  caso queira chamar a soma  do arquivo 3_somaigual basta usar o alias soma_nova
import '3_somaigual.dart' as soma_nova;
void main(List<String> args) {
  //IMPORTS
  //É a capacidade de trazer funcões de outros arquivos
  //Veja que eu nao tenho a funcao somaDouble dentro desse arquivo
  //Mas o dart está conseguindo lancar mãop dela pois usei o import
  //para facilidade o import podemos apenas digitar o nmome da função e apenas ctrl + espaco
  //Que o proprio dart já identifica qual o arquivo que você está querendo importar 
  //Posso importar manualmente digitando 
  print(soma.somaDoubleImports(2.5,5.8));
  print(soma.soma(5, 8));
}
# Netunne-Provider
O pacote disponibilizado possui arquivos .PHP com o codigo-fonte do Netunne Provider

Um gerenciador de rede Linux com interface web, focado em controle de banda e hotspot

Também incorpora um sistema operacional baseado em Debian, usando scripts de inicialização Knoppix e uma instalação gráfica.

O Netunne é perfeito para pequenos ISPs que precisam de um servidor fácil de manter.

Algumas funcionalidades descritas abaixo: * Hotspot, em um sistema baseado em créditos, os usuários podem se conectar à internet por um período limitado de tempo. * Controle de largura de banda (com camada 7), facilmente configurado em uma interface web. * I18n, em português brasileiro e inglês (precisa de revisão) * Interface web Ajax

Este projeto está atualmente em espera, seu principal objetivo é ser uma startup para projetos semelhantes


Registro do Servidor

ID - ( A4910210 ) userkey

user - ( 00011200003 ) Chave

2100cfa754e97e34089167db74ccc25a  

/// certificado, mas não e nescessario porque o servidor de chave nao fuciona mais esta off

//////////////////////////////////////////////


Voce vai precisar de um programa que faca SFTP, recomendo o Filezilla, que pode ser obtido em: http://filezilla-project.org/download.php

Tambem ira precisar de um editor de PHP, pode ser o PHP Editor ou Notepad++, o Notepad normal do Windows nao vai funcionar, o Wordpad do Windows talvez funcione.


Alterando o Netunne
Apos descompactar o pacote, acesse e altere um arquivo PHP dentro, por exemplo NEXUS/nexus/core/nlib/core_common.php define ("PRODNAME","Netunne"); define ("PRODCLASS","Provider"); Altere para: define ("PRODNAME","Netunne"); define ("PRODCLASS","Pr0vid3r");

Salve o arquivo e abra o Filezilla.

No Filezilla, digite o IP do seu Netunne, usuario: root, senha: (senha de administrador) e porta 22 (nao vamos conectar por FTP, e sim por SFTP (FTP sobre SSH).

Conectando, voce vera toda a arvore de arquivos de seu Netunne, tome cuidado pois qualquer alteracao pode danificar o sistema.

Navegue no lado direito (remoto) ate a pasta: /NEXUS/nexus/core/nlib/

Renomeie o core_commom.php para core_common.nx

No lado esquerdo (local), navegue ate a pasta que contem o core_common.nx modificado.

Arraste o core_common.nx do lado esquerdo para o lado direito, o filezilla ira perguntar se quer sobreescrever, diga que sim.

Se tudo ocorreu bem, acesse seu netunne normalmente e va na opcao de Info. de Atualizacao, que voce vera o novo nome do sistema, ao inves de Provider.


///////////////////////////////////////////
Desenvolvido por 
Allan Denot
https://allandenot.com/about/

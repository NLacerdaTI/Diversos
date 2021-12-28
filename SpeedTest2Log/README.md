# SpeedTest2Log

Este script foi desenvolvido com o propósito de executar testes de velocidade gerando logs dos testes. Os logs ficarão em uma pasta "SpeedTestLogs" dentro do diretório raiz onde está o script.

É necessário ter o ```speedtest-cli``` instalado para funcionar.

A idéia é que ele seja chamado pelo cron, no devido iintervalo de tempo que o usuário determinar. Por esta razão, não fará nenhuma exibição no terminal ao ser executado.

Caso queira verificar se está funcionando, abra o terminal na pasta onde está o script e use o comando: ```clear && ./SpeedTest.sh && tree SpeedTestLogs && cat ./SpeedTestLogs/Teste_*.log```. Aguarde até que seja executado o teste em modo oculto e ao final veja o log com o resultar.
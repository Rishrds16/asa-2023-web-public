# Cria uma rede Docker chamada "asa-net" com driver de bridge
docker network create -d bridge asa-net

# Executa o container "c01" na rede "asa-net" com a tag "c01"
docker run -d --net=asa-net --name c01 c01

# Executa o container "c02" na rede "asa-net" com a tag "c02"
docker run -d --net=asa-net --name c02 c02

# Executa o container "c03" na rede "asa-net" com a tag "c03"
docker run -d --net=asa-net --name c03 c03

# Executa o container "proxy" na rede "asa-net" com a tag "proxy"
docker run -dp 80:80 --net=asa-net --name proxy proxy
 
sudo apt update
sudo apt install -y ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
# per verificare il comando e versione (funziona senza sudo??)
docker --version
sudo groupadd docker
sudo usermod -aG docker $USER
groups $USER
newgrp docker
# Verifica se il comando "docker" funziona senza il sudo
echo 'Installazione finita. Controlla se Docker funziona con il comando docker ps, e se così non fosse, riesegui sudo usermod -aG docker $USER e esegui il logout e login dalla macchina in cui sei.'

# Add Docker's official GPG key:
sudo apt update
sudo apt install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
docker --version

# per verificare il comando e versione (funziona senza sudo??)
sudo groupadd docker
sudo usermod -aG docker $USER
groups $USER
newgrp docker
# Verifica se il comando "docker" funziona senza il sudo
echo 'Installazione finita. Controlla se Docker funziona con il comando docker ps, e se così non fosse, riesegui sudo usermod -aG docker $USER e esegui il logout e login dalla macchina in cui sei.'

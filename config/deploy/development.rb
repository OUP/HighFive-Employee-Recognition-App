# Configure your hostname and identity file in ~/.ssh/config, e.g.
#
# Host highfive_development
# HostName highfive.example.com
# User deploy
# IdentitiesOnly yes
# IdentityFile /path/to/your/keyfile.pem

server "highfive_development", roles: %w{web app db}

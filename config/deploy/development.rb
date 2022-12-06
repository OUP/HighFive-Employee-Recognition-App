# Set hostname and identify file using local ssh_config, e.g.
#     cp config/ssh_config.example config/ssh_config
#     vim config/ssh_config
# Or add a host to your per-user ssh config at ~/.ssh/config

server "highfive_development", roles: %w{web app db}, ssh_options: (
  File.exist?('config/ssh_config') ? { config: 'config/ssh_config' } : nil
)

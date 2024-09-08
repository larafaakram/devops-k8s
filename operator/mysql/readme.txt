
Install and configure Kudo Operator

# wget https://github.com/kudobuilder/kudo/releases/download/v0.19.0/kubectl-kudo_0.19.0_linux_x86_64

# mv kubectl-kudo_0.19.0_linux_x86_64 /usr/local/bin/kubectl-kudo

# chmod +x /usr/local/bin/kubectl-kudo

# kubectl kudo version

# kubectl kudo init --unsafe-self-signed-webhook-ca

Install the Mysql Operator

# git clone https://github.com/kudobuilder/operators.git

# kubectl kudo install .repository/mysql/operator

# kubectl get operator

# kubectl get instance

# kubectl get operatorversion


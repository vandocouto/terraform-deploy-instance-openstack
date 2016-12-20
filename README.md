# terraform-deploy-instance-openstack



- Instalando o curl

* CentOS
<pre>
# yum install curl 
</pre>
* Ubuntu
<pre>
# apt-get install curl
</pre>
- Instalando o terraform
<pre>
# curl "https://releases.hashicorp.com/terraform/0.8.1/terraform_0.8.1_linux_amd64.zip" -o "/opt/terraform_0.8.1_linux_amd64.zip"
# cd /opt
# unzip terraform_0.7.13_linux_amd64.zip
# ln -s /opt/terraform /usr/local/bin/
# terraform --version
Terraform v0.8.1
</pre>

- Ajustando os dados de acesso no OpenStack (Controller)
<pre>
$ vim deploy.sh
</pre>

- Altere conforme os seus dados de acesso 
<pre>
export OS_USERNAME=login
export OS_PASSWORD=password
export OS_AUTH_URL=http://IP:5000/v2.0
export OS_TENANT_NAME=projeto
export OS_REGION_NAME=RegionOne
</pre>
- Diretório onde contém o arquivo main.tf
- Neste arquivo terá a configuração de cada passo para o deploy da instância
<pre>
$ cd default
</pre>
- Altere conforme sua necessidade
<pre>
vim main.tf
</pre>
<hr>
- Preparando a contrução da instância
<pre>
./deploy.sh default plan
</pre>
- Criando a instância
<pre>
./deploy.sh default apply
</pre>
- Destruíndo a instância
<pre>
./deploy.sh default destroy
</pre>
<hr>

- Mais sobre o terraform, visite o link abaixo:
* https://www.terraform.io/


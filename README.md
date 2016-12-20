# terraform-deploy-instance-openstack


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



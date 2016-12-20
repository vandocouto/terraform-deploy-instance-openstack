# terraform-deploy-instance-openstack


- Ajustando os dados de acesso no OpenStack (Controller)
<pre>
$ vim deploy.sh
</pre>

<pre>
export OS_USERNAME=login
export OS_PASSWORD=password
export OS_AUTH_URL=http://IP:5000/v2.0
export OS_TENANT_NAME=projeto
export OS_REGION_NAME=RegionOne
</pre>


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



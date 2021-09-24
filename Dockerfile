FROM jboss/wildfly
WORKDIR /home/joaovictor/Documentos/CloudOpss/arquitetura-microservices
ADD portal/target/portal.war ~/Documentos/CloudOpss/wildfly-8.2.1.Final/standalone/deployments
ADD cadastros/target/cadastros.war ~/Documentos/CloudOpss/wildfly-8.2.1.Final/standalone/deployments
ADD vendas/target/pedidos.war ~/Documentos/CloudOpss/wildfly-8.2.1.Final/standalone/deployments
ADD relatorios/target/relatorios.war ~/Documentos/CloudOpss/wildfly-8.2.1.Final/standalone/deployments



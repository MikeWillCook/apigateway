FROM jkt628/apigateway:greatest

# add the redirect fix
RUN sed -i -e '/^        proxy_set_header Connection/a \ \ \ \ \ \ \ \ proxy_set_header Host \$host;' /etc/api-gateway/conf.d/marathon_apis.conf

FROM nginx:alpine

# Remove a configuração padrão do Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copia os arquivos do protótipo HTML para o diretório padrão do Nginx
COPY ./html /usr/share/nginx/html

# Copia uma configuração personalizada do Nginx (opcional)
COPY nginx.conf /etc/nginx/conf.d/

# Expõe a porta 80
EXPOSE 80

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
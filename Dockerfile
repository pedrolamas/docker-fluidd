FROM nginx:alpine

ENV PORT=80

COPY /fluidd/dist /usr/share/nginx/html
COPY /nginx /etc/nginx/templates

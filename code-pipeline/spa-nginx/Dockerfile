# build stage 
FROM node:16-alpine AS build

COPY . /app/
WORKDIR /app
RUN yarn
RUN yarn build-something

# production static file을 nginx container로 복사
FROM nginx:stable-alpine
COPY --from=build /app/some/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
##from which image we will deploy out container
FROM alpine:3.19
##Next what software and how we want to install inside the container
##the apk file manager updates its lists and searches the latest versions of software, then update the outdated packages and install nginx without saving srcs in the cache.
RUN	apk update && apk upgrade && apk add --no-cache nginx
##open the  port through which the container will exchange traffic
EXPOSE 443
##run the installed configuration
##Using "daemon off" we run nginx directly and not in daemon mode.
CMD ["nginx", "-g", "daemon off;"]

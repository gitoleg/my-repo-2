FROM gitoleg/my-repo-1:latest as base

# RUN echo "built!"


# FROM debian:stable-slim
# WORKDIR /home/me
# COPY --from=base /home/myfolder/1.file /home/me

RUN apt-get update && apt-get install git --yes \
 && git clone https://gitoleg@github.com/my-repo-2.git  \
 && cd my-repo-2 \
 && sh -c "echo a > 11" \
 && git add 11 \
 && git commit -m "message" \
 && git push origin master

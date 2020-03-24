FROM gitoleg/my-repo-1:latest as base

# RUN echo "built!"


# FROM debian:stable-slim
# WORKDIR /home/me
# COPY --from=base /home/myfolder/1.file /home/me

RUN apt-get update && apt-get install git --yes

RUN echo "ssh $SSH_PRIVATE" \
 && git clone git@github.com:gitoleg/my-repo-2.git  \
 && cd my-repo-2 \
 && sh -c "echo a > 11" \
 && git config --global user.email "noreply@github.com" \
 && git config --global user.name  "Me" \
 && git add 11 \
 && git commit -m "message" \
 && git push origin master

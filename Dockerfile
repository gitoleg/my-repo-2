FROM gitoleg/my-repo-1:latest

RUN echo "rebuilt!"


# RUN ls -l \
#  && git@github.com:gitoleg/my-repo-2.git  \
#  && cd my-repo-2 \
#  && sh -c "echo a > 11" \
#  && git add 11 \
#  && git commit -m "message" \
#  && git push origin master

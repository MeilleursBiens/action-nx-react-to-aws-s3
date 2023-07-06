FROM jeanlescure/node-awscli:latest

LABEL "com.github.actions.name"="NX React Deploy to S3"
LABEL "com.github.actions.description"="Build a React.js web app and sync to an AWS S3 repository"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

LABEL version="1.1.0"
LABEL repository="https://github.com/meilleursbiens/action-nx-react-to-aws-s3"
LABEL maintainer="MeilleursBiens <tech@meilleursbiens.com>"

ENV PATH /github/workspace/node_modules/.bin:$PATH
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

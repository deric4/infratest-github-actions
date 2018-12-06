FROM python:3.6-slim-jessie

LABEL "name"="infratest"
LABEL "maintainer"="deric.miguel@protonmail.com"
LABEL "version"="0.0.1"
LABEL "repository"="https://github.com/deric4/pytest-github-actions"

LABEL "com.github.actions.name"="A pytest container for GitHub Actions"
LABEL "com.github.actions.description"="Runs pytest for the repository"
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="gray-dark"

RUN pip install --upgrade pip==18.0 && \
	pip install pipenv


COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

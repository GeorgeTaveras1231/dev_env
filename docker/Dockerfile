FROM ubuntu

MAINTAINER "George Taveras <george.taveras1231@gmail.com>"

ENV HOME='/root'
ENV TERM=screen-256color

RUN apt-get update && \
    apt-get install -y ca-certificates \
                       git-core \
                       ssh \
                       vim \
                       python-software-properties \
                       software-properties-common \
                       silversearcher-ag \
                       ruby && \
    add-apt-repository -y ppa:pi-rho/dev && \
    apt-get update && \
    # Install tmux 2.0
    apt-get install -y tmux=2.0-1~ppa1~t

RUN mkdir $HOME/.ssh
ADD ssh/ $HOME/.ssh/
RUN chmod 600 $HOME/.ssh/id_rsa

RUN ssh-keyscan github.com >> $HOME/.ssh/known_hosts
RUN git clone git@github.com:GeorgeTaveras1231/dev_env.git $HOME/dev_env

RUN ln -s $HOME/dev_env/vim/vimrc       $HOME/.vimrc && \
    ln -s $HOME/dev_env/vim/plugins.vim $HOME/.plugins.vim && \
    ln -s $HOME/dev_env/tmux/tmux.conf  $HOME/.tmux.conf && \
    ln -s $HOME/dev_env/bash/bash_profile.bash  $HOME/.bash_profile && \
    mkdir $HOME/.tmux && \
    ln -s $HOME/dev_env/tmux/tmux_git_branch.rb $HOME/.tmux/ && \
    ln -s $HOME/dev_env/.gitconfig              $HOME/.gitconfig && \
    ln -s $HOME/dev_env/.gitaliases             $HOME/.gitaliases

RUN git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
RUN vim +PluginInstall +qall -u $HOME/.plugins.vim


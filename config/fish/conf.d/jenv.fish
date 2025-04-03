set -gx PATH $HOME/.jenv/bin $PATH
status --is-interactive; and source (jenv init -|psub)

set -gx JAVA_HOME /opt/homebrew/opt/openjdk@23
set -gx PATH $JAVA_HOME/bin $PATH

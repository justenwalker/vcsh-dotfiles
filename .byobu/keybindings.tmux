unbind-key -n C-a
set -g prefix ^A
set -g prefix2 ^A
bind a send-prefix
bind-key b send-keys -R \; clear-history

1. Install [`tpm`](https://github.com/tmux-plugins/tpm).
```bash
git clone --depth=1 git@github.com:tmux-plugins/tpm.git ~/.tmux/plugins/tpm
```

2. Put the following configuration in `~/.tmux.conf`.
```
set -g mouse on
bind - split-window -v
set -g default-terminal "screen-256color"

# List of plugins
set -g @plugin 'git@github.com:tmux-plugins/tpm'
set -g @plugin 'git@github.com:tmux-plugins/tmux-sensible'
set -g @plugin 'git@github.com:tmux-plugins/tmux-prefix-highlight'
set -g @plugin 'git@github.com:tmux-plugins/tmux-sidebar'

set -g @plugin 'git@github.com:tmux-plugins/tmux-yank'

set -g @plugin 'git@github.com:dracula/tmux'
# set -g @dracula-plugins "cpu-usage ram-usage git time"
set -g @dracula-plugins "cpu-usage ram-usage"
set -g @dracula-show-flags true
set -g @dracula-show-powerline true
# set -g @dracula-show-left-icon "#h | #S"
set -g @dracula-show-left-icon "#S"
set -g @dracula-force-gpu "NVIDIA"
# set -g @dracula-gpu-vram-percent true
# set -g @dracula-gpu-power-percent true
# set -g @dracula-day-month true

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'github_username/plugin_name#branch'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

3. Reload if needed.
```bash
# type this in terminal if tmux is already running
tmux source ~/.tmux.conf
```

4. Fetch plugins.
    - press `prefix` + `I` in tmux session.
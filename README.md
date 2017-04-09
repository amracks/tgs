# Task Git Sync

## Installation

You must manually setup your .task directory to be a git repository with some remote upstream.

### Manual Installation
1. Clone tgs `git clone git@gitlab.com:amracks/tgs`
2. Copy scripts to you hooks directory `cd tgs && cp *.sh ~/.task/hooks`

### Git Submodule Installation
1. Change do your .task directory `cd ~/.task`
2. Add submodule for tgs `git submodule add git@gitlab.com:amracks/tgs`
3. Symlink all scripts to the hooks directory `cd ~/.task/hooks && ln -s ../tgs/*.sh`


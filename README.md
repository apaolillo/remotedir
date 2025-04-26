# remotedir

## Installation

```bash
git clone git@github.com:apaolillo/remotedir.git
cd remotedir/
make
sudo apt install ./remotedir.deb
```


## Deploy a repo on a remote host

To use deployrepo:

```bash
cd <repo-you-want-to-transfer>
deployrepo <ssh-host-where-to-transfer>
```

This will copy the repo locally into `/tmp/deploy_git_repo/`,
then remove all untracked git files (recursively over git modules)
and then rsync the copied repo on the target ssh host into
`~/<your-local-username>/<name-of-the-repo>/

Profit!


## Retrieve a directory from a remote host

To retrieve a remote directory:

```bash
cd <repo-you-want-to-transfer>
retrievedir <path-of-the-dir-on-the-remote-host> <ssh-remote-host>
```

And the remote directory will be copied in your local current
directory.

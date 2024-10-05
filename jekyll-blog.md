# Jekyll Blog

## Choose Theme

Go to [http://jekyllthemes.org/](http://jekyllthemes.org/), choose a jekyll theme.

## Ruby

### ruby-install

```sh
wget https://github.com/postmodern/ruby-install/releases/download/v0.9.3/ruby-install-0.9.3.tar.gz
tar -xzvf ruby-install-0.9.3.tar.gz
cd ruby-install-0.9.3/
sudo make install
```

### chruby

```sh
wget https://github.com/postmodern/chruby/releases/download/v0.3.9/chruby-0.3.9.tar.gz
tar -xzvf chruby-0.3.9.tar.gz
cd chruby-0.3.9/
sudo make install

source /usr/local/share/chruby/chruby.sh
echo 'source /usr/local/share/chruby/chruby.sh' >> ~/.zshrc
```

### ruby

```sh
ruby-install ruby 3.3.5
chruby 3.3.5 # auto set GEM_HOME GEM_PATH ...
gem install jekyll bundler
```

## `cd` to blog repo

```sh
# init env
# bundle install
bundle exec jekyll s
# bundle exec jekyll serve
# bundle exec jekyll serve --port 8888
```

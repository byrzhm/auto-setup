# Huggingface

## HF-Mirror ([hf-mirror.com]([hf-mirror.com](https://hf-mirror.com/)))

See [https://zhuanlan.zhihu.com/p/663712983](https://zhuanlan.zhihu.com/p/663712983).

```sh
pip install -U huggingface_hub
echo 'export HF_ENDPOINT=https://hf-mirror.com' >> ~/.bashrc
exec $SHELL
huggingface-cli download --resume-download gpt2 --local-dir gpt2 # download models
huggingface-cli download --repo-type dataset --resume-download wikitext --local-dir wikitext # download dataset
```

# Huggingface

## HF-Mirror ([hf-mirror.com](https://hf-mirror.com/))

See [https://zhuanlan.zhihu.com/p/663712983](https://zhuanlan.zhihu.com/p/663712983), [https://huggingface.co/docs/huggingface_hub/v0.23.4/guides/download#download-an-entire-repository](https://huggingface.co/docs/huggingface_hub/v0.23.4/guides/download#download-an-entire-repository), [https://huggingface.co/docs/hub/security-tokens](https://huggingface.co/docs/hub/security-tokens).

```sh
pip install -U huggingface_hub
echo 'export HF_ENDPOINT=https://hf-mirror.com' >> ~/.bashrc
exec $SHELL
huggingface-cli download --resume-download gpt2 --local-dir gpt2 # download models
huggingface-cli download --repo-type dataset --resume-download wikitext --local-dir wikitext # download dataset
```

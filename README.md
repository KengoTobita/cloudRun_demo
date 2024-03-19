# 環境構築
1. リポジトリをクローン  
  `git clone <this reposirty>`
1. Open devcontainer  
\><からそれっぽいやつ選んで。
1. run `gcloud_install.sh`  
`sudo sh gcloud_install.sh`
1. gcloudの認証  
`gcloud auth login`
# ローカルでの起動
1. ライブラリインストール  
`npm install`
1. TS -> JSのコンパイル  
`npx tsc`
1. 実行  
`node dist/main.js`
# ArtifactRegistryへのプッシュ
1. イメージ化する  
`docker image build -t <なんか書いとけ> .`
1. タグをつける  
`docker image tag <なんか書いたやつ> <Artifact Registryの指定/お好きな言葉>`
1. プッシュする  
`doker image push <Artifact Registryの指定/お好きな言葉……上のやつ>`

**Cloud Runへのデプロイはスライドで！**
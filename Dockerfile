# ビルドステージ
FROM node:16 as builder

# 作業ディレクトリを設定
WORKDIR /app

# package.json と package-lock.json をコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install

# アプリケーションのソースコードをコピー
COPY . .

# TypeScript のコンパイル
RUN npx tsc

# 実行ステージ
FROM gcr.io/distroless/nodejs:16

# 作業ディレクトリを設定
WORKDIR /app

# ビルドステージからビルド成果物とnode_modulesをコピー
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules

EXPOSE 3000

# アプリケーションを実行
CMD ["dist/main.js"]

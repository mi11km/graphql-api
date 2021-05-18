# GraphQl API
- gqlgenを使ったGoのGraphQL API

# 機能一覧


# 使用技術
- Go (gqlgen)
- GraphQL
- Docker
- AWS(ECS(Fargate), ECR, Route53, ALB, ACM)
- Github Actions

# 実行
```shell
docker-compose up -d --build
```

# テスト
```shell
docker-compose run --rm api go test ./... -v -cover
```

# GraphQLのスキーマを変更したら...
```shell
docker-compose run --rm api go run github.com/99designs/gqlgen generate
```
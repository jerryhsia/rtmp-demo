# rtmp-demo

## 启动容器

```bash
docker run -d --name="rtmp-demo" -p 8935:1935 -p 8080:80 jerry9916/rtmp-demo:latest
```

## 推流

```bash
rtmp://127.0.0.1:8935/myapp # 密钥myapp
```

## 拉流

```bash
rtmp://127.0.0.1:8935/myapp/myapp
http://127.0.0.1:8080/myapp.m3u8
```
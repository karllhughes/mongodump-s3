# mongodump-s3

For documentation and usage, see the [original repository](https://github.com/lgaticaq/mongodump-s3)

Here's how I use this image:

```bash
docker run -it --rm \
  -e "MONGO_URI=..." \
  -e "AWS_ACCESS_KEY_ID=..." \
  -e "AWS_SECRET_ACCESS_KEY=..." \
  -e "AWS_DEFAULT_REGION=..." \
  -e "S3_BUCKET=..." \
  -e "MAX_BACKUPS=..." \
  karllhughes/mongodump-s3
```

## License

[MIT](https://tldrlegal.com/license/mit-license)

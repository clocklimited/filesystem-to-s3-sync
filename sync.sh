#!/bin/sh

# Create an rclone config file with the provided environment variables
cat <<EOF > /root/.config/rclone/rclone.conf
[r2]
type = s3
provider = Other
env_auth = false
access_key_id = ${S3_ACCESS_KEY_ID}
secret_access_key = ${S3_SECRET_ACCESS_KEY}
endpoint = ${S3_ENDPOINT}
region = ${S3_REGION}
EOF

# Sync the directory to Cloudflare R2 bucket
rclone sync ${SOURCE} r2:${S3_BUCKET}

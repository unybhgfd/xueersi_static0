# 初始化
# pip install awscli
aws configure set aws_access_key_id 4acfe4badb15f4168bedf41d6ed629ef
aws configure set aws_secret_access_key 01a3cbea152cc3fab3cdb02ff1326063

# 下载文件夹
aws s3 cp --endpoint-url http://upload.xueersi.com/v4/ --recursive s3://talcode/ ./download

# 修改学而思oss部分资源(慎用!!!)
aws s3 cp ./talcode_rebuild --endpoint-url http://upload.xueersi.com/v4/ s3://talcode/ --recursive

# 恢复学而思oss部分资源
aws s3 cp ./CHECKPOINT --endpoint-url http://upload.xueersi.com/v4/ s3://talcode/ --recursive

# 下载所有js文件(不全)
aws s3 cp --endpoint-url http://upload.xueersi.com/v4/ s3://talcode/ ./talcode_assets --exclude "*" --include "*.js" --recursive

# 列出文件(请修改s3 uri)
aws s3 ls --endpoint-url http://upload.xueersi.com/v4/ --human-readable s3://talcode/
aws s3 ls --endpoint-url http://upload.xueersi.com/v4/ --recursive --human-readable s3://talcode/

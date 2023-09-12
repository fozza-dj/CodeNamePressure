import json
import os
import random
import string
from enum import Enum

# FollowStatus 枚举类型
class FollowStatus(Enum):
    unfollow = 0
    followed = 1

# ArticleModel 类
class ArticleModel:
    def __init__(self, articleID, author, text, imageUrls):
        self.articleID = articleID
        self.author = author
        self.text = text
        self.imageUrls = imageUrls
        self.commentCount = 0
        self.likeCount = 0
        self.isLiked = False

# UserModel 类
class UserModel:
    def __init__(self, userID, nickname, avatarUrl, followStatus, isVip):
        self.userID = userID
        self.nickname = nickname
        self.avatarUrl = avatarUrl
        self.followStatus = followStatus
        self.isVip = isVip

# 生成随机的 ID
def generate_random_id():
    return ''.join(random.choices(string.ascii_letters + string.digits, k=10))

# 生成随机的文本
def generate_random_text(length=20):
    random_number = random.randint(1, length)
    letters = string.ascii_lowercase
    random_string = ''.join(random.choice(letters) for _ in range(random_number))
    return random_string

# 获取文件夹下的 JPG 文件
def get_random_jpg_filelist(n):
    random_number = random.randint(1, n)
    folder_path = "../MyPressure/Resources/"  # 替换为实际的文件夹路径
    jpg_list = []
    for i in range(random_number):
        jpg_files = [file for file in os.listdir(folder_path) if file.endswith(".jpg")]
        if jpg_files:
            random_jpg_filename = random.choice(jpg_files)
            jpg_list.append(random_jpg_filename)
    return jpg_list

# 生成随机的作者信息
def generate_author():
    userID = generate_random_id()
    nickname = generate_random_text()
    avatarUrl = get_random_jpg_filelist(1)
    followStatus = random.choice([0, 1])
    isVip = random.choice([True, False])
    author = UserModel(userID, nickname, avatarUrl, followStatus, isVip)
    return author

# 生成随机的推文信息
def generate_acticle():
    articleID = generate_random_id()
    author = generate_author()
    text = generate_random_text()
    imageUrls = get_random_jpg_filelist(4)
    article = ArticleModel(articleID, author, text, imageUrls)
    return article

def generate_article_list_dict(n):
    article_list = []
    for i in range(n):
        article_list.append(generate_acticle())
    article_list_dict = {'list': article_list}
    return article_list_dict

# 主函数
if __name__ == "__main__":
    acticle_list_dict = generate_article_list_dict(5)
    json_data = json.dumps(acticle_list_dict, default=lambda a: a.__dict__)
    output_file = 'test1.json'
    with open(output_file, 'w') as file:
        file.write(json_data)
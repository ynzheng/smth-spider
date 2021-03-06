# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html
import pymongo
import os
import time
from scrapy.exceptions import DropItem
from pprint import pprint
import datetime

class SmthSpiderPipeline(object):
    def process_item(self, item, spider):
        return item


class DuplicatesPipeline(object):

    def __init__(self):
        self.ids_seen = set()

    def process_item(self, item, spider):
        if item['id'] in self.ids_seen:
            raise DropItem("Duplicate item found: %s" % item)
        else:
            self.ids_seen.add(item['id'])
            return item

class MongoPipeline(object):

    collection_name = 'user'

    def __init__(self, mongo_uri, mongo_db):
        self.mongo_uri = mongo_uri
        self.mongo_db = mongo_db

    @classmethod
    def from_crawler(cls, crawler):
        return cls(
            mongo_uri=crawler.settings.get('MONGO_URI'),
            mongo_db=crawler.settings.get('MONGO_DATABASE', 'items')
        )

    def open_spider(self, spider):
        self.client = pymongo.MongoClient(self.mongo_uri)
        self.db = self.client[self.mongo_db]

    def close_spider(self, spider):
        self.client.close()

    def process_item(self, item, spider):
        print '=================> ' ,item['id'], item['title'], item['content'] if 'content' in item else ''
        # return item
        if not self.db[self.collection_name].find_one({'id':item['id']}):
            item['created_at'] = datetime.datetime.now()
            self.db[self.collection_name].insert_one(item)
            user=item['id']
            os.system('bash smth_spider/spiders/send_invitation.sh '+user)
            time.sleep(5)
            return item
        else:
            raise DropItem("Duplicate item found: %s" % item)

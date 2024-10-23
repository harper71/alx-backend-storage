#!/usr/bin/env python3
"""update the document in the collection
of  a mongodb database
"""


def update_topics(mongo_collection, name, topics):
    """add to collection"""
    mongo_collection.update_one({"name": name}, {"$set": {"topics": topics}})

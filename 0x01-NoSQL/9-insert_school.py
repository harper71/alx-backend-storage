#!/usr/bin/env python3
"""inserts new documents in collection"""


def insert_school(mongo_collection, **kwargs):
    """insert document to collection"""
    new_school = mongo_collection.insert_one(kwargs)

    return new_school.inserted_id

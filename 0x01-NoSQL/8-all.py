#!/usr/bin/env python3
"""use to list document in
mongodb database
"""


def list_all(mongo_collection):
    """find all elements in the databas

    Args:
        mongo_collection (object): mongodb collection

    Returns:
        list: list of all documents
    """
    all_data = mongo_collection.find()

    if all_data is None:
        return []
    return [items for items in all_data]

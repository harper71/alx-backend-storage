#!/usr/bin/env python3
"""search for a specific topic"""


def schools_by_topic(mongo_collection, topic):
    """
    Finds and returns schools that include the specified topic.

    :param mongo_collection: The MongoDB collection object.
    :param topic: The topic to search for (as a string).
    :return: A cursor of schools that match the topic.
    """
    specific_schools = mongo_collection.find({"topics": {"$in": [topic]}})
    return specific_schools

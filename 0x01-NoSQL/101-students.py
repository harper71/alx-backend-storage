#!/usr/bin/env  python3
"""gives the average score"""


def top_students(mongo_collection):
    """this gives the agregate scores
    """
    pipeline = [
        {
            '$project': {
                'name': '$name',
                'averageScore': {
                    '$avg': '$topics.score'
                }
            }
        },
        {
            '$sort': {
                'averageScore': -1
            }
        }
    ]

    return list(mongo_collection.aggregate(pipeline))

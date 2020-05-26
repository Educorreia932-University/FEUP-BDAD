db.tweets.aggregate([
                     { $unwind: '$user.time_zone' },
                     { $sortByCount : '$user.time_zone'},
                     { $limit: 1}
                    ])
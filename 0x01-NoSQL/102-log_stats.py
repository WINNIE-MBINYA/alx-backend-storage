#!/usr/bin/env python3
"""
Provides stats about Nginx logs stored in MongoDB
"""
from pymongo import MongoClient

def log_stats():
    """
    Provides stats about Nginx logs stored in MongoDB
    """
    # Connect to the MongoDB server running locally on port 27017
    client = MongoClient('mongodb://127.0.0.1:27017')
    # Access the 'nginx' collection in the 'logs' database
    collection = client.logs.nginx

    # Count the total number of documents in the collection
    num_logs = collection.count_documents({})
    print(f"{num_logs} logs")

    print("Methods:")
    # List of HTTP methods to check in the logs
    methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]
    # Count and print the number of documents for each HTTP method
    for method in methods:
        count = collection.count_documents({"method": method})
        print(f"\tmethod {method}: {count}")

    # Count and print the number of documents with method "GET" and path "/status"
    status_check = collection.count_documents({"method": "GET", "path": "/status"})
    print(f"{status_check} status check")

    # Aggregation pipeline to get the top 10 most present IPs
    pipeline = [
        {"$group": {"_id": "$ip", "count": {"$sum": 1}}},  # Group by IP and count occurrences
        {"$sort": {"count": -1}},  # Sort by count in descending order
        {"$limit": 10}  # Limit results to top 10
    ]
    top_ips = list(collection.aggregate(pipeline))

    print("IPs:")
    # Print the top 10 most present IPs
    for ip in top_ips:
        print(f"\t{ip['_id']}: {ip['count']}")

if __name__ == "__main__":
    log_stats()

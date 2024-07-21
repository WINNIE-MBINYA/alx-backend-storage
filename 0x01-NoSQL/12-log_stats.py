#!/usr/bin/env python3
from pymongo import MongoClient

def log_stats():
    client = MongoClient('mongodb://127.0.0.1:27017')
    db = client.logs
    collection = db.nginx
    
    # Total number of logs
    num_logs = collection.count_documents({})
    print(f"{num_logs} logs")
    
    # Number of each method
    methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]
    print("Methods:")
    for method in methods:
        count = collection.count_documents({"method": method})
        print(f"\tmethod {method}: {count}")
    
    # Number of documents with method=GET and path=/status
    status_check = collection.count_documents({"method": "GET", "path": "/status"})
    print(f"{status_check} status check")

if __name__ == "__main__":
    log_stats()

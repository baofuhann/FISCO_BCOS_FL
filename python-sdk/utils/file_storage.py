import csv
import json


def dic2csv(results, filename):
    """
    :param results: experiment results
    :type results: list()
    :param filename: File name to write results to
    :type filename: String
    """
    header = ["Epoch", "Address", "Acc"]
    with open(filename, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile, delimiter=',')
        writer.writerow(header)
        for key,value in results.items():
            print(key,value[0])
            writer.writerow([key,value[0],value[1]])
def simpledic2csv(results, filename):
    """
    :param results: experiment results
    :type results: list()
    :param filename: File name to write results to
    :type filename: String
    """
    with open(filename, 'a', newline='') as csvfile:
        writer = csv.writer(csvfile, delimiter=',')
        for key,value in results.items():
            writer.writerow([key,value])

    print("写入成功")

def save_results_v2(results, filename):
    """
    Save results to a file. Using format v2.

    :param results: json
    :param filename: string
    """
    with open(filename, "w") as f:
        json.dump(results, f, indent=4, sort_keys=True)

def read_results_v2(filename):
    """
    Read results from a file. Using format v2.
    """
    with open(filename, "r") as f:
        return json.load(f)


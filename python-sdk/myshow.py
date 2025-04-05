import matplotlib.pyplot as plt
from utils.file_storage import save_results

def showAcc(x_label,y_label):
    epochs = range(1, y_label+ 1)
    plt.plot(epochs, x_label, 'bo', label='Training Accuracy')
    plt.xlabel('Epochs')
    plt.ylabel('Loss')
    plt.legend()
    plt.show()

def saveToFile():
    data = {"epoch_1":["key_1",1],"epoch_2":["key_2",2],"epoch_3":["key_3",1]}
    save_results(data,"file")
    print(data)


if __name__ == "__main__":
    saveToFile()

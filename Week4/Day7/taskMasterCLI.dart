import 'dart:convert';
import 'dart:io';

class Task {
  int id;
  String title;
  String description;
  Task(this.id, this.title, this.description);

  @override
  String toString() {
    return "Task(ID: $id, Title: $title, Description: $description)";
  }

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(json['ID'], json['Title'], json['Description']);
  }

  Map<String, dynamic> toJson() {
    return {'ID': id, 'Title': title, 'Description': description};
  }
}

class TaskManager {
  List<Task> taskList = [];
  Map<int, Task> taskMap = {};
  File myFile = File('Storage.txt');

  //Here gonna manage all the task functionality

  void loadFromFile() {
    if (myFile.existsSync()) {
      String data = myFile.readAsStringSync();
      if (data.isNotEmpty) {
        List<dynamic> decodeData = jsonDecode(data);

        for (var task in decodeData) {
          var taskObj = Task.fromJson(task);
          taskList.add(taskObj);
          taskMap[taskObj.id] = taskObj;
        }
      }
    }
  }

  //User can add Task
  void addTask() {
    print("Create new Task");

    //Error handling of inputting int
    stdout.write("Enter Task ID: ");
    int id = int.parse(stdin.readLineSync()!);

    stdout.write("Enter Task Title: ");
    String title = stdin.readLineSync() ?? "No title";

    stdout.write('Write some description: ');
    String desc = stdin.readLineSync() ?? "No description";

    Task newTask = Task(id, title, desc);
    taskList.add(newTask);
    taskMap[newTask.id] = newTask;

    saveToFile();
  }

  //Sorting task
  void sortTask() {
    taskList.sort((a, b) => b.id.compareTo(a.id));
    print(taskList);
  }

  //Searching Task
  void searchTask() {
    stdout.write("Search by ID");
    int search = int.parse(stdin.readLineSync()!);

    if (taskMap.containsKey(search)) {
      print("Task Found");
      print("ID: ${taskMap[search]!.id}");
      print("Title: ${taskMap[search]!.title}");
    } else {
      print('Task not Found');
    }
  }

  void display() {
    for (var task in taskList) {
      print("ID: ${task.id} - Title: ${task.title}");
    }
  }

  void deleteTask() {
    stdout.write("Enter Delete ID:");
    int id = int.parse(stdin.readLineSync() ?? "");
    //Deleting from list
    taskList.removeWhere((data) => data.id == id);
    //Deleting from Map
    taskMap.remove(id);
    saveToFile();
    print('Task $id deleted successfully');
  }

  void saveToFile() {
    var data = jsonEncode(taskList.map((task) => task.toJson()).toList());

    myFile.writeAsString(data);
  }
}

void main() {
  TaskManager task = TaskManager();
  task.loadFromFile();

  bool flag = true;
  while (flag) {
    print("-----Task Manager-----");
    print("1. Add a Task");
    print("2. Delete a Task");
    print("3. Sort in assending Order");
    print("4. Search a Task");
    print("5. Display Task");
    print("6. Exit");
    print("Choose between 1 - 6");

    String? choice = stdin.readLineSync();
    switch (choice) {
      case '1':
        task.addTask();
        break;

      case '2':
        task.deleteTask();
        break;

      case '3':
        task.sortTask();
        break;

      case '4':
        task.searchTask();
        break;

      case '5':
        task.display();
        break;

      case '6':
        print('Task Manager is closing');
        flag = false;
        break;

      default:
        print("Wrong Input!! Please enter between 1 to 5");
    }
  }
}

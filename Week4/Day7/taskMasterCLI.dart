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

  factory Task.fromJson(Map<String, dynamic> json){
    return Task(json['ID'], json['Title'], json['Description']);
  }

  Map<String, dynamic> toJson() {
    return {'ID': id, 'Title': title, 'Description': description};
  }

  //void toString(){};
}

class TaskManager {
  List<Task> taskList = [];
  Map<int, Task> taskMap = {};
  File myFile = File('Storage.txt');

  //Here gonna manage all the task functionality

  //User can add Task
  void loadFromFile(){
    if(myFile.existsSync()){
      if(myFile.)
    }
  }

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

  void saveToFile() {
    //converting list to map
    var data = jsonEncode(taskList.map((task) => task.toJson()).toList());

    myFille.writeAsString(data);

  }
}

void main() {
  print("User choose.");
  TaskManager task = TaskManager();
  task.addTask();
}

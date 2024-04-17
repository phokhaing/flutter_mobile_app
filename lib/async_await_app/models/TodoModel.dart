/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 4.3.2023                                     |
 * +-------------------------------------------------------+
 */

class TodoModel {
  late int userId;
  late int id;
  late String title;
  late bool completed;

  TodoModel({
    this.userId = 0,
    this.id = 0,
    this.title = "no title",
    this.completed = false,
  });

  TodoModel.fromJson(Map<String, dynamic> todo) {
    userId = todo['userId'];
    id = todo['id'];
    title = todo['title'];
    completed = todo['completed'];
  }
}

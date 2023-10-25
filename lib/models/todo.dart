class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(
        id: '1',
        todoText: 'Buy milk',
      ),
      ToDo(
        id: '2',
        todoText: 'Buy eggs',
        isDone: true,
      ),
      ToDo(
        id: '3',
        todoText: 'Buy bread',
      ),
      ToDo(
        id: '4',
        todoText: 'Buy butter',
        isDone: true,
      ),
      ToDo(
        id: '5',
        todoText: 'Buy cheese',
        isDone: true,
      ),
    ];
  }
}

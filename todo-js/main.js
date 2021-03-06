// your code, here
let todo = ['Write some Javascript', 'Submit System Check', 'Take a break', 'Watch Dr. Strange', 'Visit friends', 'Feed guinea pigs'];

let listDiv = document.getElementById('todo-list');

todo.forEach((item) => {
  let itemDiv = document.createElement('li');
  itemDiv.innerHTML = item;
  listDiv.appendChild(itemDiv);
});

let inputTodoItem = document.getElementById('new-todo-item');

inputTodoItem.addEventListener('keyup', (event) => {
  if (event.keyCode == 13) {
    event.preventDefault();
    let newItem = document.createElement('li');
    newItem.innerHTML = inputTodoItem.value;
    listDiv.appendChild(newItem);
    inputTodoItem.value = "";
  }
});

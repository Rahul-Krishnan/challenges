// your code, here
let todo = ['Write some Javascript', 'Submit System Check', 'Take a break', 'Watch Dr. Strange', 'Visit friends', 'Feed guinea pigs'];

let listDiv = document.getElementById('todo-list');

for (let i = 0; i < todo.length; i++) {
  let itemDiv = document.createElement('li');
  itemDiv.innerHTML = todo[i];
  listDiv.appendChild(itemDiv);
}

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

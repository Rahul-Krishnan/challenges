// your code, here
let main = document.getElementById("main");

let menu = ["Chicken Pot Pie", "Baked Beans", "Macaroni and Cheese", "Burgundy Sauce with Beef and Noodles", "Creamed Spinach", "Pumpkin Pie", "Strawberry Shortcake"];

menu.forEach((item) => {
  let foodItemDiv = document.createElement('div');
  foodItemDiv.className = 'food-item';
  foodItemDiv.innerHTML = item;
  foodItemDiv.addEventListener('click', () => {
    foodItemDiv.className += ' hidden';
  });
  main.appendChild(foodItemDiv);
});

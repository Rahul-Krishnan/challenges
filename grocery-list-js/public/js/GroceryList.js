// your GroceryList code, here
/*jshint esversion: 6*/

class GroceryList {
  constructor(title, date) {
    this.title = title;
    this.date = date;
    this.items = [];
  }
  addItem(item) {
    this.items.push(item);
  }
  toHTML() {
    let htmlGroceryArray = [];
    htmlGroceryArray.push(`<h1>${this.title}</h1>\n<h3>${this.date}</h3>\n<ul>`);
    for(let item of this.items){
      htmlGroceryArray.push(`<li>(${item.quantity}) ${item.name}</li>`);
    }
    htmlGroceryArray.push(`</ul>`);
    let htmlGroceryList = htmlGroceryArray.join('\n');
    return htmlGroceryList;
  }
}

// module.exports = GroceryList;

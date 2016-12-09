// your GroceryItem code, here
/*jshint esversion: 6*/

class GroceryItem {
  constructor(name, quantity) {
    this.name = name;
    if (!!quantity) {
      this.quantity = quantity;
    }
    else {
      this.quantity = 1;
    }
  }
  toString() {
    return `(${this.quantity}) ${this.name}`;
  }
}

// module.exports = GroceryItem;

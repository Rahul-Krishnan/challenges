/* jshint esversion: 6 */

let inventory = [
  ['LA-LG-STICKER', 300, 'Large Sticker', 'images/la-large-sticker-256px.png', 'Show your Launch pride by plastering your laptop with these beautiful die-cut stickers.'],
  ['LA-SM-STICKER', 200, 'Small Sticker', 'images/la-small-sticker-128px.png', 'It\'s a tiny Launch sticker. How cute!'],
  ['LA-T-SHIRT', 50, 'T-Shirt', 'images/la-t-shirt-200px.png', '100% Cotton. Makes a great gift.']
];

// your code, here
class Product {
  constructor(id, quantity, name, image_url, description) {
    this.id = id;
    this.quantity = quantity;
    this.name = name;
    this.image_url = image_url;
    this.description = description;
  }
  sell() {
    this.quantity = this.quantity - 1;
  }
  toHtml() {
    let html = `<div class="product">
      <h1>Product Name: ${this.name}</h1>
      <h5>${this.quantity} In Stock</h5>
      <img src=${this.image_url} alt=${this.name} />

      <h3>Description</h3>
      <p>
        ${this.description}
      </p>
    </div>`;

    return html;
  }
}

let objectConverter = (thing) => {
  let thingObject = new Product(...thing);
  return thingObject;
};

let productObjectArray = inventory.map(objectConverter);

let element = document.getElementById('all-products');

productObjectArray.forEach((product) => {
  element.innerHTML += product.toHtml();
});

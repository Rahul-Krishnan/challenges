/* jshint esversion: 6 */
let rocket = {
  fuel: 0,
  addFuel(amount) {
    this.fuel += amount;
    console.log(`Fuel level: ${this.fuel}`);
  },
  fire() {
    if (this.fuel===0) {
      console.log('\nTAKEOFF ABORTED. INSUFFICIENT FUEL FOR LAUNCH.');
      return false;
    }
    else {
      this.fuel--;
      console.log('\nTHRUSTERS ENGAGED!');
      console.log(`New fuel level: ${this.fuel}`);
      return true;
    }
  }
};

module.exports = rocket;

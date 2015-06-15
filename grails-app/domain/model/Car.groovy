package model

class Car {
	String producer;
	String model;
	String id;

	String toString() {
		return String.format('%s - %s', this.producer, this.model);
	}

	static belongsTo = [parking: Parking]
    static constraints = {
    }
}

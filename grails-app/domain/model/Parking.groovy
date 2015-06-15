package model

class Parking {
	String name;
	String description;

	String toString() {
		return this.name;
	}

	static hasMany = [cars: Car]
    static constraints = {
    }
}

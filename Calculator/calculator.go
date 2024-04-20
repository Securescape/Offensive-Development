package main
import "fmt"


func Add(x, y int) (res int) {
	return x + y
}


func Subtract(x, y int) (res int) {
	return x - y
}


func main() {
	fmt.Println("Addition: ", Add(1, 2))
	fmt.Println("Subtraction: ", Subtract(4, 2))
}
package main
import "testing"

func TestAdd(t *testing.T){
	got := Add(4, 4)
	want:= 8

	if got != want {
		t.Errorf("got %q. wanted %q", got, want)
	}
}


func TestSubtract(t *testing.T){
	got := Subtract(6, 4)
	want:= 2

	if got != want {
		t.Errorf("got %q. wanted %q", got, want)
	}
}

package main

import (
	"fmt"
	"github.com/konimarti/opc"
)

func main() {
	client, _ := opc.NewConnection(
		"Graybox.Simulator", // ProgId
		[]string{"localhost"}, //  OPC servers nodes
		[]string{"numeric.sin.int64", "numeric.saw.float"}, // slice of OPC tags
	)
	defer client.Close()

	// read single tag: value, quality, timestamp
	fmt.Println(client.ReadItem("numeric.sin.int64"))

	// read all added tags
	fmt.Println(client.Read())
}
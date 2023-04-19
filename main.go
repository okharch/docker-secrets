package main

import (
    "os"
    "time"
    "log"
)

func main() {
    secretPath := "/run/secrets/MySecret"

    log.Print("Starting service...")

    // Read the secret data from the secret file
    for {
        secretData, err := os.ReadFile(secretPath)
        if err != nil {
            log.Print("Error reading secret data:", err)
        } else {
            log.Print("Read secret data:", string(secretData))
        }
        time.Sleep(time.Second*5)
    }
}

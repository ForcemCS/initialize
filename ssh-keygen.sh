#!/bin/bash
ssh-keygen -t rsa -C "test key" -P ''
for IP in { 5 6 15 16 17  25 26  27 35 36 37  }; do
	sshpass -p 123456 ssh-copy-id -o  StrictHostKeyChecking=no 12.0.0.$IP
done

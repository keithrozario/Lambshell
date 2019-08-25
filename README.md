# Lambshell

An interactive shell on a lambda using a netcat reverse shell

# Installation

To install, you'll need serverless framework, otherwise you can also deploy manually using the 2 publicly available layers in the `serverless.yml` file

	$ sls deploy

# Get the Shell

To obtain the shell, run the following commands

## On listening server
	sudo ncat -lv -p 8000

## On local machine (params.json has the ip and port of the listening server)
	sls invoke -f reverse --path params.json

# Notes

If you're running the listener on EC2 or lightsail, remember to enable to port in your security groups.

# Results

![Screenshot](revshell_on_lambda.gif)

# Thanks

Thanks to gkrizek for his Bash custom runtime

Thanks to Klayers for the netcat binary as a layer



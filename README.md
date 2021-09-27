# Description: 
This script normalizes the data contained in the file published by Binary Edge at https://api.binaryedge.io/v1/minions into a format that can be consumed as an EDL by the Palo Alto NGFW

The Script reads in the file minions from the current working directory and then strips out the following lines and characters:

From the first line  

         {"scanners":[ "

is eliminated from the first IP Address in the file

Each instance of 

          ", ") 

is replaced by a newline

The characters

           "]}

Are removed from the last IP Address in the file

# Support Policy

This script is provided under an as-is, best effort, support policy. This scripts should be seen as community supported and I will contribute mt expertise as and when possible. 

Palo Alto Networks does not provide technical support or help in using or troubleshooting the components of the project through its normal support options such as Palo Alto Networks support teams, or ASC (Authorized Support Centers) partners and backline support options. The underlying product used (Palo Alto Networks NGFW and EDLs) by the scripts is still supported by Palo Alto Networks, but the support is only for the product functionality and not for help in deploying or using the template or script itself. 

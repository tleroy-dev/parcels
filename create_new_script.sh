#!/bin/bash
###########################################
# Author: Theophile leroy <pro@tleroy.me>
# Version: v1.0.0
# Date: 2020-04-26
# Description: Create new script with template
# Usage: ./create_new_script script_name
###########################################

function cs() {
	SCRIPT_NAME=$1

	# Test for empty arg
	if test -z ${SCRIPT_NAME}; then
		read -p "Script name: " SCRIPT_NAME;
	fi

	current_date=$(date --rfc-3339=date)
	{
		echo "#!/bin/bash"	
		echo ""						
		echo "###########################################"
		echo "# Author: Theophile leroy <pro@tleroy.me>"
		echo "# Version: v1.0.0"
		echo "# Date: ${current_date}" 
		echo "# Description:" 
		echo "# Usage: ./${SCRIPT_NAME}.sh"
		echo "###########################################"
	} >> "${SCRIPT_NAME}.sh"
	chmod +x "${SCRIPT_NAME}.sh" 
}

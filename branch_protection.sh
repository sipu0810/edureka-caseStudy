#! /bin/sh

AUTH_TOKEN=${2:-"personal-access-token"}
USERNAME=${1:-"sipu0810"}
REPOSITORIES_FILE_PATH=${3:-"list.csv"}
while IFS="," read -r repo branches  || [ -n "$repo" ]; do

    echo "Bot: Updating Branch Protection for  ${repo} and branches ${branches}"

		for branch in ${branches//,/ }; do 
		echo "Bot: Updating Branch Protection for  ${repo} and branch ${branch}"
		curl -k -v -u "${USERNAME}:${AUTH_TOKEN}" \
		 -X PUT https://api.github.com/repos/sipu0810/edureka-caseStudy/${repo}/branches/${branch}/protection \
		echo "Bot: Completed For Repository  ${repo} and ${branch}"
	done	 
    echo "Bot: Completed For Repository  ${repo} and ${branches}"

done < ${REPOSITORIES_FILE_PATH}

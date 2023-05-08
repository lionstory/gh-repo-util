# Generate your own Github delete token here: https://github.com/settings/tokens
#
# replace  DELETE_KOKEN and GithubUserName with your own
DELETE_KOKEN="ghp_VjF1qU762551823et7uoMTxlGSmvfFbsO2dgbfg"
GithubName="xxxx"

for repName in $(cat repos.txt)
do
    echo "Delete "$repName
    curl -XDELETE -H "Authorization: token ${DELETE_KOKEN}" https://api.github.com/repos/${GithubName}/${repName}
done



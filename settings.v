 telegram token  = <telegram token>
chat access username = <telegram username>
//absolute path
solana key path = /<username>/solana
bot certificate = ssl/my.pem
//mb || tds
solana app = mb
watch interval min = 5
//cmd list -> full name from cmd_abbr = cmd. % key_from_settings.v% will replace
key validator = solana-keygen pubkey %solana_key_path%validator-keypair.json
key vote = solana-keygen pubkey %solana_key_path%vote-account-keypair.json
balance = echo "validator:" && solana balance %key_validator% && echo "vote:" && solana balance %key_vote%
install %param% = solana-install init %param% && systemctl restart solana
configuration = cat /etc/systemd/system/solana.service
catchup = solana catchup %key_validator% http://127.0.0.1:8899
delinquent = solana validators --output json | jq .delinquentValidators[].identityPubkey -r | grep %key_validator% | echo ";"
version = solana --version
stakes validator = solana stakes %key_validator%
stakes vote = solana stakes %key_vote%
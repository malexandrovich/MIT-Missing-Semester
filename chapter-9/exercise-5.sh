openssl aes-256-cbc -salt -in file_to_encrypt.txt -out encrypted.txt

echo "File was successfully encrypted."

openssl aes-256-cbc -d -in encrypted.txt -out decrypted.txt

echo "File was successfully decrypted."

cmp decrypted.txt file_to_encrypt.txt

echo "Comparison of files finished. If there is no output that we say about differences - the files are the same."


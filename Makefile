


copy_files:
	cp bin/zabbix-cli pyinstaller/zabbix-cli.py
	cp bin/zabbix-cli-init pyinstaller/zabbix-cli-init.py
	cp -R zabbix_cli pyinstaller/zabbix_cli

binary: copy_files
	pyinstaller --distpath pyinstaller/dist --workpath pyinstaller/build -F pyinstaller/zabbix-cli.py
	pyinstaller --distpath pyinstaller/dist --workpath pyinstaller/build -F pyinstaller/zabbix-cli-init.py


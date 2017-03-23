import mysql.connector
from mysql_config import *

class KaideeDB:

	cnx = mysql.connector.connect(**config)
		
	def selectAll(self):
		cursor = self.cnx.cursor()
		query = 'SELECT * FROM inventory'
		data = ''
		cursor.execute(query)
		result = {}
		for (iid, name) in cursor:
			result.update({'iid': iid, 'name': name})
		return result
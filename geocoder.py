import csv
from geopy.geocoders import Nominatim

geocoder = Nominatim(user_agent="http")
file = open('bdd.csv')
result = open('resultat.csv', 'w')
try:
	resultData = csv.writer(result, delimiter=';', lineterminator='\n')
	resultData.writerow(('latitude', 'longitude'))
	fileData = csv.reader(file, delimiter=';')
	for ligne in fileData:
		adresse = ligne[1] + ", " + ligne[2] + ", " + ligne[3]
		try:
			location = geocoder.geocode(adresse)
			resultData.writerow((location.latitude, location.longitude))
		except Exception as inst:
			print(inst)
finally:
	file.close()
	result.close()

	#mysql connector
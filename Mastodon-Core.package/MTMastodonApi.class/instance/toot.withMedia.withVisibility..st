endpoints
toot: aString withMedia: aMediaID withVisibility: aVisibility
	| url parameters response |
	url := self buildUrl: '/api/v1/statuses'.
	parameters := Dictionary newFromPairs: {'status'. aString. 'visibility' . aVisibility . 'media_ids[]'. aMediaID}.
	response := self postRequest: url withParameters: parameters.
	
	"
	ToDo: Später in TimeLine anzeigen
	^ MTResult value: (self deserialize: (response content) intoCollectionOf: MTToot)."
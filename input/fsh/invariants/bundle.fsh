Invariant: request-ifNoneExist
Description: "Si el entry exige un ifNoneExist en el request, entonces este debe comenzar con 'identifier='"
Expression: "entry.all(request.ifNoneExist.exists() implies request.ifNoneExist.startsWith('identifier='))"
Severity: #error
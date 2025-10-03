El mecanismo de intercambio definido para las transacciones es `RESTful API`. En este marco RESTful, las transacciones se realizan directamente sobre el recurso del servidor utilizando una solicitud/respuesta HTTP. 

### Estructura de la Operación
- Es importante considerar que la URL para el envío del mensaje será: `[base]` (Ej: https://fhir.example.com/fhir)
- Agrupador de Recursos: Un recurso de tipo `Bundle` del tipo `transaction` (type=transaction)
- Otros recursos: Necesariamente los recursos referenciados deben ser incluidos dentro del mismo Bundle como entradas adicionales.

### Operación de Envío
- El recurso del tipo Bundle debe ser del tipo transaction (type=transaction)
- Se debe indicar en el atributo `request` el tipo de transacción a realizar `(POST/PUT)`
- Ejemplo para evento Admisión:

```json
{
  "resourceType" : "Bundle",
  "id" : "Ej1BundleAdmision",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/BundleAdmision"
    ]
  },
  "type" : "transaction",
  "entry" : [
    {
      "fullUrl" : "urn:uuid:6ec6dc25-4b65-4165-a545-9b796f60b997",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "6ec6dc25-4b65-4165-a545-9b796f60b997",
        "meta" : {
          "profile" : [
             "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PatientUrg"
          ]
        },
        ... // Otra información del recurso Patient
      },
      "request" : {
        "method" : "POST",
        "url" : "Patient",
        "ifNoneExist" : "identifier=90000000-6"
      }
    },
    {
      "fullUrl" : "urn:uuid:d1391b7b-302a-49f8-a908-8116599e137e",
      "resource" : {
        "resourceType" : "Encounter",
        "id" : "d1391b7b-302a-49f8-a908-8116599e137e",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/EncounterUrg"
          ]
        },
        ... // Otra información del recurso Encounter
      },
      "request" : {
        "method" : "POST",
        "url" : "Encounter"
      }
    },
    {
      "fullUrl" : "urn:uuid:b9f6967f-51b5-49f4-8576-ce9f588523c2",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "b9f6967f-51b5-49f4-8576-ce9f588523c2",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/PrestadorAdministrativo"
          ]
        },
        ... // Otra información del recurso Practitioner
      },
      "request" : {
        "method" : "POST",
        "url" : "Practitioner",
        "ifNoneExist" : "identifier=44444444-4"
      }
    },
    ... // Otros recursos
 ]
}
```

### Respuestas de la Operación

#### Respuesta exitosa
- El recurso Bundle debe ser del tipo `transaction-response` (type=transaction-response)
- El servidor procesa todas las entradas del Bundle como una única unidad atómica (todo o nada). Esto significa que para que la transacción sea exitosa, todas las operaciones del Bundle deben ejecutarse con éxito.
- Ejemplo de respuesta evento Admisión

```json
{
  "resourceType": "Bundle",
  "type": "transaction-response",
  "entry": [
    {
      "response": {
        "status": "201 Created",
        "location": "Patient/123",
        "etag": "W/\"1\"",
        "lastModified": "2024-12-09T12:00:00Z"
      }
    },
    {
      "response": {
        "status": "201 Created",
        "location": "Encounter/456",
        "etag": "W/\"2\"",
        "lastModified": "2024-12-09T12:00:00Z"
      }
    },
    {
      "response": {
        "status": "200 OK",
        "location": "Practitioner/789",
        "etag": "W/\"2\"",
        "lastModified": "2024-12-09T12:00:00Z"
      }
    }
    ... // Otros recursos
  ]
}
```

#### Respuesta con error
- El recurso debe ser de tipo `OperationOutcome`
- Mensaje de Error, en caso de existir:

```json
{
  "resourceType": "OperationOutcome",
  "issue": [
    {
      "severity": "error",
      "code": "processing",
      "diagnostics": "Invalid identifier in entry 2"
    }
  ]
}
```

### Response Code
- Siempre es 200 en caso de que el mensaje sea procesado completamente
- 4XX si el mensaje no pudo ser procesado correctamente y se debe indicar error o errores usando el recurso OperationOutcome
- 5xx errores de servidor no relacionados al mensaje

### Interacción con el servidor

<table>
    <tr>
        <th>Propiedad</th>
        <th>Detalle</th>
    </tr>
    <tr>
        <td><strong>Método HTTP</strong></td>
        <td>POST</td>
    </tr>
    <tr>
        <td><strong>URL</strong></td>
        <td>https://fhir.example.com/fhir</td>
    </tr>
    <tr>
        <td><strong>Headers</strong></td>
        <td>
            <pre>
              Content-Type: application/json+fhir
            </pre>
        </td>
    </tr>
    <tr>
        <td><strong>Body</strong></td>
        <td>
            <pre>
              {
                  "resourceType": "Bundle",
                  "type": "transaction",
                  ... // Resto del mensaje
              }
            </pre>
        </td>
    </tr>
</table>

#### Ejemplo con cURL

```bash
curl --location 'https://fhir.example.com/fhir' \
--header 'Content-Type: application/json+fhir' \
--data '{
    "resourceType": "Bundle",
    "type": "transaction"
}'
```

#### Ejemplo con C# - HttpClient

```c#
var client = new HttpClient();
var request = new HttpRequestMessage(HttpMethod.Post, "https://fhir.example.com/fhir");
var content = new StringContent("{\n    \"resourceType\": \"Bundle\",\n    \"type\": \"transaction\"\n}", null, "application/json+fhir");
request.Content = content;
var response = await client.SendAsync(request);
response.EnsureSuccessStatusCode();
Console.WriteLine(await response.Content.ReadAsStringAsync());
```

#### Ejemplo con NodeJs - Axios

```js
const axios = require('axios');
let data = JSON.stringify({
  "resourceType": "Bundle",
  "type": "transaction"
});

let config = {
  method: 'post',
  url: 'https://fhir.example.com/fhir',
  headers: { 
    'Content-Type': 'application/json+fhir'
  },
  data : data
};

axios.request(config)
.then((response) => {
  console.log(JSON.stringify(response.data));
})
.catch((error) => {
  console.log(error);
});
```

#### Ejemplo con PHP - cURL

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://fhir.example.com/fhir',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
    "resourceType": "Bundle",
    "type": "transaction"
}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json+fhir'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
```

#### Ejemplo con Python - Requests

```python
import requests
import json

url = "https://fhir.example.com/fhir"

payload = json.dumps({
  "resourceType": "Bundle",
  "type": "transaction"
})
headers = {
  'Content-Type': 'application/json+fhir'
}

response = requests.request("POST", url, headers=headers, data=payload)

print(response.text)
```

<style>
  table {
      width: 100%;
      border-collapse: collapse;
      margin: 20px 0;
      font-size: 16px;
      text-align: left;
  }
  th, td {
      padding: 12px;
      border: 1px solid #ddd;
  }
  th {
      background-color: #f4f4f4;
  }
</style>
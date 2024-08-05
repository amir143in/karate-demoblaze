Feature: Pruebas de funcionalidad de Signup

  Background: 
    * url baseUrl
    * def signupData = read('classpath:data/signupData.json')
    * def requestHeaders = { Content-Type: 'application/json', Connection: 'keep-alive' }

  Scenario: Crear un nuevo usuario
    Given url baseUrl + '/signup'
    And headers requestHeaders
    And request { "username": '#(signupData.nuevoUsuario.usuario)', "password": '#(signupData.nuevoUsuario.contrasena)' }
    When method POST
    Then status 200
    * print 'Response:', response
    * def trimmedResponse = response.trim(response)
  	And match trimmedResponse  == '""'
    
  Scenario: Intentar crear un usuario ya existente
    Given url baseUrl + '/signup'
    And headers requestHeaders
    And request { "username": '#(signupData.usuarioExistente.usuario)', "password": '#(signupData.usuarioExistente.contrasena)' }
    When method POST
    Then status 200
    And match response.errorMessage == 'This user already exist.'

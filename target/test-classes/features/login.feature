Feature: Pruebas de funcionalidad de inicio de sesión

  Background: 
    * url baseUrl
    * def loginData = read('classpath:data/loginData.json')
    * def requestHeaders = { Content-Type: 'application/json', Connection: 'keep-alive' }

  Scenario: Usuario y contraseña correctos
    Given url baseUrl + '/login'
    And headers requestHeaders
    And request { "username": '#(loginData.credencialesValido.usuario)', "password": '#(loginData.credencialesValido.contrasena)' }
    When method POST
    Then status 200
    * def token = response.replace('Auth_token: ', '')
    * print 'Extracted Token:', token
    And match token == '#string'

  Scenario: Usuario incorrecto
    Given url baseUrl + '/login'
    And headers requestHeaders
    And request { "username": '#(loginData.usuarioIncorrecto.usuario)', "password": '#(loginData.usuarioIncorrecto.contrasena)' }
    When method POST
    Then status 200
    And match response.errorMessage == 'User does not exist.'

  Scenario: Contraseña incorrecta
    Given url baseUrl + '/login'
    And headers requestHeaders
    And request { "username": '#(loginData.contrasenaIncorrecta.usuario)', "password": '#(loginData.contrasenaIncorrecta.contrasena)' }
    When method POST
    Then status 200
    And match response.errorMessage == 'Wrong password.'

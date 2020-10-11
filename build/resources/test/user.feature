Feature: Proyecto
  @Usuario
  Scenario: Como usuario quiero adminstra usuarios
    Given Una autenticacion en todo.ly
    When Para usuario envio la solicitud POST a 'api/user.json' con el json
    """
    {
      "Email":"user1@user14.com",
      "FullName":"user14",
      "Password":"pwd10000"
    }
    """
    Then Se espera el codigo de respuesta 200
    And Se espera que el Body de respuesta sea igual
    """
    {
      "Id": "EXCLUDE",
      "Email": "user1@user14.com",
      "Password": null,
      "FullName": "user14",
      "TimeZone": 0,
      "IsProUser": false,
      "DefaultProjectId": "EXCLUDE",
      "AddItemMoreExpanded": false,
      "EditDueDateMoreExpanded": false,
      "ListSortType": 0,
      "FirstDayOfWeek": 0,
      "NewTaskDueDate": -1,
      "TimeZoneId": "Pacific Standard Time"
    }
    """
    And Obtengo el valor de propiedad 'FullName' y se guarda en FULL_NAME

    When Envio la solicitud PUT a 'api/user/0.json' con el json
    """
    {
        "FullName":"FULL_NAME ABC"
    }
    """
    Then Se espera el codigo de respuesta 200
    And Se espera que el Body de respuesta sea igual
    """
    {
      "Id": "EXCLUDE",
      "Email": "catolica@cat.com",
      "Password": null,
      "FullName": "FULL_NAME ABC",
      "TimeZone": 0,
      "IsProUser": false,
      "DefaultProjectId": "EXCLUDE",
      "AddItemMoreExpanded": false,
      "EditDueDateMoreExpanded": false,
      "ListSortType": 0,
      "FirstDayOfWeek": 0,
      "NewTaskDueDate": -1,
      "TimeZoneId": "Pacific Standard Time"
    }
    """




Feature: Proyecto
  @Proyecto
  Scenario: Como usuario quiero crear un proyecto para organizar Proyectos

    Given Una autenticacion en todo.ly

    When Envio la solicitud POST a 'api/projects.json' con el json
    """
    {
       "Content":"CUCUMBER",
       "Icon": 4
    }
    """
    # verificar el response
    Then Se espera el codigo de respuesta 200
    And Se espera que el Body de respuesta sea igual
    """
    {
        "Id": "EXCLUDE",
        "Content": "CUCUMBER",
        "ItemsCount": 0,
        "Icon": 4,
        "ItemType": 2,
        "ParentId": null,
        "Collapsed": false,
        "ItemOrder": "EXCLUDE",
        "Children": [],
        "IsProjectShared": false,
        "ProjectShareOwnerName": null,
        "ProjectShareOwnerEmail": null,
        "IsShareApproved": false,
        "IsOwnProject": true,
        "LastSyncedDateTime": "EXCLUDE",
        "LastUpdatedDate": "EXCLUDE",
        "Deleted": false,
        "SyncClientCreationId": null
    }
    """

    And Obtengo el valor de propiedad 'Id' y se guarda en ID_PROJECT
    And Obtengo el valor de propiedad 'Content' y se guarda en NAME_PROJECT

    When Envio la solicitud PUT a 'api/projects/ID_PROJECT.json' con el json
    """
    {
       "Content":"NAME_PROJECT UPDATE",
       "Icon": 4
    }
    """

    # verificar el response

    Then Se espera el codigo de respuesta 200
    And Se espera que el Body de respuesta sea igual
    """
    {
        "Id": ID_PROJECT,
        "Content": "NAME_PROJECT UPDATE",
        "ItemsCount": 0,
        "Icon": 4,
        "ItemType": 2,
        "ParentId": null,
        "Collapsed": false,
        "ItemOrder": "EXCLUDE",
        "Children": [],
        "IsProjectShared": false,
        "ProjectShareOwnerName": null,
        "ProjectShareOwnerEmail": null,
        "IsShareApproved": false,
        "IsOwnProject": true,
        "LastSyncedDateTime": "EXCLUDE",
        "LastUpdatedDate": "EXCLUDE",
        "Deleted": false,
        "SyncClientCreationId": null
    }
    """
    When Envio la solicitud GET a 'api/projects/ID_PROJECT.json' con el json
    """
    """
    Then Se espera el codigo de respuesta 200
    And Se espera que el Body de respuesta sea igual
    """
    {
        "Id": ID_PROJECT,
        "Content": "NAME_PROJECT UPDATE",
        "ItemsCount": 0,
        "Icon": 4,
        "ItemType": 2,
        "ParentId": null,
        "Collapsed": false,
        "ItemOrder": "EXCLUDE",
        "Children": [],
        "IsProjectShared": false,
        "ProjectShareOwnerName": null,
        "ProjectShareOwnerEmail": null,
        "IsShareApproved": false,
        "IsOwnProject": true,
        "LastSyncedDateTime":"EXCLUDE",
        "LastUpdatedDate": "EXCLUDE",
        "Deleted": false,
        "SyncClientCreationId": null
    }
    """
    When Envio la solicitud DELETE a 'api/projects/ID_PROJECT.json' con el json
    """
    """
    Then Se espera el codigo de respuesta 200



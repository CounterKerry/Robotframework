*** Settings ***

Documentation        Essa suite testa um API do insomia

Library              RequestsLibrary

*** Variables ***

${MEUPAUNATUAMAO}        http://localhost:3333/partners

*** Test Cases ***

Esse teste deve criar um novo parrceiro
    ${payload}    Create Dictionary
    ...           name=Pizzas Papito3
    ...           email=contato3@papito.com.br
    ...           whatsapp=11999999999
    ...           business=Restaurante

    ${headers}    Create Dictionary
    ...           Content-Type=application/json
    ...           auth_user=qa
    ...           auth_password=ninja

    ${response}    POST    url=${MEUPAUNATUAMAO}
    ...                    json=${payload}
    ...                    headers=${headers}

    Status Should Be    201
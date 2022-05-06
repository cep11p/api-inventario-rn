<?php

/**** Para mostrar listado ****/
/**
* @url http://api.gestor-inventario.local/egresos
* @url con parametros http://api.gestor-inventario.local/egresos?global_param=destino1&fecha_desde=2015-03-03
* @method GET
* @parametros estos parametros sirven como criterio de busqueda
* global_param = (acta o destino)
* fecha_desde = (fecha de emision)
* fecha_hasta = (fecha de emision)
* sort=-fecha (ordenamiento desc)
* sort=-destino_nombre (ordenamiento desc)
* sort=-nro_acta (ordenamiento desc)
* @arrayReturn
    {
    "pagesize": 20,
    "pages": 1,
    "total_filtrado": 3,
        "resultado": [
            {
                "fecha": "2019-03-03",
                "origen": "origen1",
                "destino_nombre": "destino1",
                "destino_localidadid": 2626,
                "destino_localidad": Localidad1,
                "descripcion": "Esto es un egreso1 creado con fixture1",
                "nro_acta": "0001",
                "tipo_egresoid": 1,
                "fecha_inicial": "2019-02-10",
                "id": 1,
                "suscrito": "algun suscrito",
                "tipo_egreso": "Modulo",
                "producto_cant_total": 3
            },
            {
                "fecha": "2019-04-04",
                "origen": "origen2",
                "destino_nombre": "destino2",
                "destino_localidadid": 2626,
                "destino_localidad": Localidad1,
                "descripcion": "Esto es un egreso2 creado con fixture2",
                "nro_acta": "0002",
                "tipo_egresoid": 1,
                "fecha_inicial": "2019-03-11",
                "id": 2,
                "suscrito": "algun suscrito",
                "tipo_egreso": "Modulo",
                "producto_cant_total": 2
            },
            {
                "fecha": "2019-05-05",
                "origen": "origen3",
                "destino_nombre": "destino3",
                "destino_localidadid": 2626,
                "destino_localidad": Localidad1,
                "descripcion": "Esto es un egreso3 creado con fixture3",
                "nro_acta": "0003",
                "tipo_egresoid": 2,
                "fecha_inicial": "2020-04-12",
                "id": 3,
                "suscrito": "algun suscrito",
                "tipo_egreso": "Bulto",
                "producto_cant_total": 1
            }
        ]
    }
*/

/*****Para crear****
 * Creamos un egreso con su lista de productos a egresar
 * @url http://api.gestor-inventario.local/egresos 
 * @method POST
 * @param arrayJson
{
    "fecha":"2020-03-03",
    "origen":"Origen 1",
    "destino_nombre":"Destino 1",
    "destino_localidadid":2626,
    "nro_acta":"456-123",
    "tipo_egresoid":1,
    "descripcion":"Esto es una descripcion de egreso",
    "suscrito": "algun suscrito",
    "lista_producto":[
            {
                    "productoid":8,
                    "fecha_vencimiento":"",
                    "cantidad":3
            },
            {
                    "productoid":3,
                    "fecha_vencimiento":"2019-03-20",
                    "cantidad":3
            }
    ]
}
**/

/**** Para modificar*****
* @url http://api.gestor-inventario.local/egresos/{$id} 
* @method PUT
* @param arrayJson
**/

/****** Para visualizar*****
* @url http://api.gestor-inventario.local/egresos/{$id} 
* @method GET
* @return arrayJson
{
    "fecha": "2020-03-03",
    "origen": "Origen 1",
    "destino_nombre": "Destino 1",
    "destino_localidadid": 2626,
    "descripcion": "Esto es una descripcion de egreso",
    "nro_acta": "456-123",
    "tipo_egresoid": 1,
    "fecha_inicial": "2020-08-03",
    "id": 4,
    "suscrito": "algun suscrito",
    "tipo_egreso": "Modulo",
    "producto_cant_total": 2,
    "destino_localidad": "Rio Colorado",
    "lista_producto": [
        {
            "id": 1,
            "egresoid": 2,
            "productoid": 2,
            "cantidad": 100,
            "descripcion": "Probando la descripcion",
            "producto": "Aceite de girasol, 900ml (Arcor)"
        },
        {
            "id": 1,
            "egresoid": 2,
            "productoid": 2,
            "cantidad": 100,
            "descripcion": "Probando la descripcion",
            "producto": "Aceite de girasol, 900ml (Arcor)"
        }
    ]
}
*/

/****** Para borrar una localidad *****
* @url http://api.gestor-inventario.local/egresos/{$id} 
* @method Delete
* @return arrayJson
*/

<?php

$params = require __DIR__ . '/params.php';
$db = require __DIR__ . '/db.php';

$config = [
    'id' => 'basic',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
    ],
    'components' => [
        'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => 'pChpKOuaF2ZdmRuNknBP095OPh96XbdE',
            'parsers' => [
                'application/json' => 'yii\web\JsonParser',
//                'multipart/form-data' => 'yii\web\MultipartFormDataParser'
            ]
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'user' => [
            'identityClass' => 'app\models\User',
            'enableAutoLogin' => true,
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],

        'i18n' => [
            'translations' => [
                '*' => [
                    'class' => 'yii\i18n\PhpMessageSource',
                    'basePath' => '@app/messages', // if advanced application, set @frontend/messages
                    'sourceLanguage' => 'es_ES',
                    'fileMap' => [
                        //'main' => 'main.php',
                    ],
                ],
            ],
            
        ],
        /************** Componente interoperable *************/
        'lugar'=> [
            'class' => $params['servicioLugar'],//'app\components\ServicioLugar'
        ],
        /************* Fin Componente interoperable *************/
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'db' => $db,
        
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'enableStrictParsing' => false,
            'rules' => [
                [   #Permiso
                    'class' => 'yii\rest\UrlRule',
                    'controller' => 'api/permiso', 
                ],
                [   
                    'class' => 'yii\rest\UrlRule',
                    'controller' => 'api/categoria'
                ],
                [   
                    'class' => 'yii\rest\UrlRule',
                    'controller' => 'api/comprobante',
                    'extraPatterns' => [
                        'PUT registrar-producto-faltante/{id}' => 'registrar-producto-faltante',
                        'OPTIONS registrar-producto-faltante/{id}' => 'registrar-producto-faltante',
                        'PUT registrar-producto-pendiente/{id}' => 'registrar-producto-pendiente',
                        'OPTIONS registrar-producto-pendiente/{id}' => 'registrar-producto-pendiente',
                    ], 
                ],
                [   
                    'class' => 'yii\rest\UrlRule',
                    'controller' => 'api/deposito'
                ],
                [   
                    'class' => 'yii\rest\UrlRule',
                    'controller' => 'api/egreso'
                ],
                [   
                    'class' => 'yii\rest\UrlRule',
                    'controller' => 'api/tipo-egreso'
                ],
                [   
                    'class' => 'yii\rest\UrlRule',
                    'controller' => 'api/inventario',
                    'extraPatterns' => [
                        'POST set-defectuoso' => 'set-defectuoso',
                        'OPTIONS set-defectuoso' => 'set-defectuoso'
                    ], 
                ],
                [   
                    'class' => 'yii\rest\UrlRule',
                    'controller' => 'api/marca'
                ],
                [   
                    'class' => 'yii\rest\UrlRule',
                    'controller' => 'api/producto',
                    'extraPatterns' => [
                        'PUT set-activo/{id}' => 'set-activo',
                        'OPTIONS set-activo/{id}' => 'set-activo',
                    ],
                ],
                [   
                    'class' => 'yii\rest\UrlRule',
                    'controller' => 'api/proveedor'
                ],
                [   
                    'class' => 'yii\rest\UrlRule',
                    'controller' => 'api/unidad-medida'
                ],
                /****** USUARIOS *******/
                [   
                    'class' => 'yii\rest\UrlRule',
                    'controller' => 'api/usuario',   
                    'extraPatterns' => [
                        'POST login' => 'login',
                        'OPTIONS login' => 'options'
                        //'GET mostrar/{id}' => 'mostrar',
                    ],          
                ],
                ##### Interoperabilidad con Lugar#####
                [   #Localidad
                    'class' => 'yii\rest\UrlRule',
                    'controller' => 'api/localidad', 
                ],
            ]
        ],
        
    ],
    'params' => $params,

    #Modules
    'modules'=>[
        'api' => [
            'class' => 'app\modules\api\Api',
        ],
        "audit"=>[
            "class"=>"bedezign\yii2\audit\Audit",
            "ignoreActions" =>['audit/*', 'debug/*'],
            'userIdentifierCallback' => ['app\components\ServicioUsuarios', 'userIdentifierCallback'],
            'userFilterCallback' => ['app\components\ServicioUsuarios', 'userFilterCallback'],
            'accessIps'=>null,
            'accessUsers'=>null,
            'accessRoles'=>['admin']
        ],
        'user' => [
            'class' => 'dektrium\user\Module',
            'enableConfirmation'=> false,
            'enableRegistration'=> false,
            'enablePasswordRecovery'=> false,
            'admins'=>['admin']
        ],
        'rbac' => 'dektrium\rbac\RbacWebModule',
    ],
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
        'allowedIPs' => ['*'],
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];
}

return $config;

<?php

return [
    'adminEmail' => 'admin@example.com',
    'senderEmail' => 'noreply@example.com',
    'senderName' => 'Example.com mailer',
    'JWT_SECRET' => 'ZqCeBt}246',
    'servicioLugar'=> getenv('SERVICIO_LUGAR')?getenv('SERVICIO_LUGAR'):'app\components\DummyServicioLugar',
];

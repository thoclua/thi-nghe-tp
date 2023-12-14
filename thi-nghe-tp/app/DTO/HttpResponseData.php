<?php
namespace App\DTO;

class HttpResponseData{
    public $statusCode;
    public $message;
    public $data;

    public function __construct($statusCode, $message, $data) {
        $this->statusCode = $statusCode;
        $this->message = $message;
        $this->data = $data;
    }


}

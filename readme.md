
# Ralali PHP Microservice Boilerplate

### Announcement
Untuk project baru, disarankan menggunakan golang https://github.com/ralali/rl-ms-boilerplate-go

### Pendahuluan
Dengan adanya kebutuhan untuk memecah Arsitektur Ralali yang Monolitik menjadi microservice, maka hadirlan boilerplate ini yang dapat digunakan oleh internal tim ralali untuk menunjang pembangunan microservice menggunakan bahasa pemrograman PHP, arsitektur pada mikroservice ini diadoptasi berdasarkan teori yang ada pada link-link berikut ini:

- https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html
- http://www0.cs.ucl.ac.uk/staff/A.Finkelstein/crsenotes/1B1499REQTS.pdf

### Architecture Structure
![architecture diagram](golang%20architecture%20diagram.png)
```
- rl-ms-boilerplate-php
 |- app
   |- Constants
   |- Http
     |- Controllers
     |- Middleware
   |- Helpers
   |- Models
   |- Services
   |- Repositories
 |- storage
```
#### middleware

Digunakan untuk menyimpan middleware-middleware yang akan digunakan, contoh `CORSMiddleware` atau `OAuthMiddleware`.

#### controllers

Controller bertugas untuk menghandle HTTP Request, routing dimasukkan per-controller dan digroup berdasarkan controller, controller terhubung dengan service.

#### service

Service bertugas untuk menghandle business logic, service memungkinkan untuk memanggil banyak repository dan atau service lain.

#### repositories

Repository bertugas untuk menghandle query-query ke database atau storage lainnya, jangan menambahkan logic-logic programming berat pada layer ini.

#### models

Models bertugas untuk menampung model-model representasi database schema yang dapat digunakan untuk kepentingan migration atau enkapsulasi data.

#### helpers

Bertugas untuk menyimpan helpers atau libraries yang sering digunakan contohnya `ErrorHelper`, `CacheHelper` atau `RedisHelper`.

#### constants

Digunakan untuk menyimpan constant-constant seperti `HTTPStatus` atau `ResponseCode`.

#### storage

Storage bertugas untuk menyimpan file-file seperti log error atau temporary file storage.

## TODO
- Endpoint documentation
- Authorization middleware

## How to Setup

 
#### Setup Local


#### Setup Using Dockerfile


### Unit Testing

untuk menjalankan unit testing, developer dapat menjalankan command dibawah ini:
```
./vendor/bin/phpunit
``` 

### Code Versioning

##### Sample Case
 
### Database Migration

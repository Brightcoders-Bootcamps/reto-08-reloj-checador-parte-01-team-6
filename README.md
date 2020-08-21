![BrightCoders Logo](readme_img/logo-bc.png)

# Reloj Checador App

![cover](readme_img/cover.jpg)

## Pre-requisitos

Antes de iniciar debes instalar las siguientes herramientas, evaluar tu código e identificar posibles mejoras.

- [ ] [Instalar y utilizar Rubocop](https://github.com/bright-coders/commons/tree/master/topics/rubocop)
- [ ] [Instalar y utilizar Rubycritic](https://github.com/bright-coders/commons/tree/master/topics/rubycritic)
- [ ] [Instalar y utilizar SandiMeter](https://github.com/makaroni4/sandi_meter)

## Requerimientos funcionales

Foo Corp needs a system to control their employees attendance to their offices, they need full visibility of who went to work at what time and when they left. They need a webpage that will be opened in a tablet at the lobby of each branch, where the employee can go in and specify their private number and the system will record internally the time they checked in and the time they checked out.

The attendance web app must meet the following reuqirements:

- Admin
  - Admin portal protected with basic auth
  - Manage employees (CRUD operations)
    - Deactivate employees instead of deleting them
    - Store: email, name and position, employee #, private number
  - Manage Company branches (CRUD operations)
    - Store: name, address
  - Reports
    - Attendance by day
    - Average time employees checked in/out by month
    - Absence report by month

- Frontend
  - Employee registration page
    - Private number input screen
    - Feedback to employee on successful/failed registration

## Requerimientos no-funcionales
- Rendimiento y escalabilidad
  - [Capáz de escalar de manera horizontal](https://rubygarage.org/blog/ruby-on-rails-is-scalable)
  - [Aplicar la metodología de los 12 Factores](https://12factor.net/)
  - Respuesta del servidor menor a los 200ms. 
- Seguridad
  - Cubrir las Top 10 vulnerabilidades OWASP (Opcional)
     - [OWASP Top ten](https://owasp.org/www-project-top-ten/)
     - [OWSAP Ruby on Rails Cheatsheet](https://cheatsheetseries.owasp.org/cheatsheets/Ruby_on_Rails_Cheat_Sheet.html)
- Calidad
  - Utilizar estilo de código definido por la comunidad (apoyarse en Rubocop)
  - Pruebas unitarias
  - Presentación correcta en las versiones más recientes de los principales navegadores: Edge, Chrome, Safari y Firefox
  - [Configuración de un servidor de integración continua como Travis CI o Circle CI](https://circleci.com/features/ruby/)

## Tecnologías
- Ruby on Rails en el backend
- PostgreSQL como base de datos principal
- CSS: libertad para utilizar cuaquier framework o librería, preferentemente SASS
- Javascript: libertad para utilizar cualquier framework o librería, preferentemente si jQuery
- Framework para pruebas [Rspec](https://rspec.info/) ó [Minitest](https://github.com/seattlerb/minitest)

## Entregable
- Código fuente en Github 
  - Debe incluir README con información sobre como configurar el proyecto
  - Los commits de Git deben ser significativos
- Demo de la App correndo en heroku
- Libertad para utilizar cualquier diseño, imágenes, etc, que considere necesarios y apropiados

## Evaluación / Revisión
- Cumplimiento de requerimientos funcionales
- Cumplimiento de requerimientos no funcionales 
- Participación diaria de todos los integrantes del equipo
- Entrega dentro del tiempo establecido

## Setup
En [este elnace](setup/README.md) se describen los pasos necesarios para ejecutar/probar este proyecto, así como los integrantes de este equipo

## Enlaces
[Encuentra aquí una lista completa de recursos de ayuda](https://github.com/bright-coders/commons/tree/master/topics/resources)


## datos para ingresar a la app

https://ancient-crag-11045.herokuapp.com/users/sign_in

User.create(email: 'admin@admin.com', password: 'admin123')

## url 
https://ancient-crag-11045.herokuapp.com/users/sign_in

https://ancient-crag-11045.herokuapp.com/

https://ancient-crag-11045.herokuapp.com/admin/company_branches/new
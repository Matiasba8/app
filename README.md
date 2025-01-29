Para partir se debe de crear un proyecto solo con su nombre, cada tarea tiene un *user_owner* que es un clave foranea de *users* y ademas tiene un *project_owner* que es una clave foranea de project.

Para crear una tarea se requiere de los siguientes pasos:
1.  Crear un proyecto
2. Crear un usuario 
3. Crear una tarea, asignar del selector el proyecto dueño de esa tarea como el creador del usuario.
4. Ver informe del proyecto de las tareas completadas como incompletas (1 para completa y 0 para incompleta). 

Para la ejecucción de los test basta correr usando rails tests (mini test de rails)
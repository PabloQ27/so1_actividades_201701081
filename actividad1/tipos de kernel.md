**<h1 align="center"> Tipos de Kernel</h1>**

----

- **Monolitico.**
    <p align="justify">El kernel monolítico es el tipo más antiguo y simple de kernel.

    Todas las funciones del sistema operativo se ejecutan en un solo espacio de memoria</p>
  

- **Microkernel.**
  <p align="justify">En el kernel microkernel, se implementa solo un conjunto esencial de funciones en el espacio del kernel, como la gestión de memoria y la planificación básica
  
  El núcleo es responsable de tareas esenciales como la seguridad y el control de recursos, mientras que las casas contienen servicios más especializados. Si algo sale mal en una casa, no afecta directamente al núcleo ni a otras casas.</p>
  

- **Híbrido.**
  <p align="justify">Los kernels híbridos son una combinación de elementos  de los kernels monolíticos y los microkernels.

    Incorporan algunas características del kernel monolítico para obtener un mejor rendimiento, al tiempo que aíslan algunos servicios en el espacio de usuario para mejorar la estabilidad y la seguridad</p>
  

- **Exokernel.**
  <p align="justify">Los programas pueden acceder al hardware de manera más eficiente, pero también asumen más responsabilidades en cuanto a la gestión de recursos y la seguridad.

   Cada usuario debe operar sus propias atracciones, lo que puede llevar más tiempo y esfuerzo, pero también permite una personalización extrema y un acceso más rápido a las experiencias deseadas</p>

   **<h4 align="center"> Diferencias </h4>**

   **Monolitico.**
   <p aling="justify">Todas las funciones y servicios del sistema operativo se ejecutan en el espacio del kernel.

    Mayor velocidad y eficiencia en el acceso a recursos del sistema, ya que no hay cambios de contexto complejos.

    Si una parte del kernel falla, puede afectar a todo el sistema, lo que puede hacerlo menos robusto y propenso a fallos.</p>

   **Microkernel.**
   <p aling="justify">Solo las funciones esenciales y básicas se ejecutan en el espacio del kernel, mientras que los servicios no esenciales se ejecutan en el espacio de usuario.

    Mayor modularidad y seguridad, ya que los servicios se mantienen aislados y los fallos en servicios del espacio de usuario no afectan directamente al núcleo.

    Debido a la necesidad de comunicación entre componentes en el espacio de usuario, puede haber un ligero impacto en el rendimiento.</p>

   **Híbrido.**
   <p aling="justify">Combina características de los kernels monolíticos y los microkernels.

    Algunas funciones esenciales se ejecutan en el espacio del kernel para lograr un acceso rápido a los recursos del sistema.

    Otros servicios menos críticos se ejecutan en el espacio de usuario para mejorar la estabilidad y la seguridad.

    Ofrece un equilibrio entre la eficiencia del kernel monolítico y la modularidad del microkernel.</p>

   **Exokernel.**
   <p aling="justify">Expone directamente los recursos del hardware a las aplicaciones en el espacio de usuario.

    Permite un alto grado de personalización y optimización para las aplicaciones, ya que estas tienen un control preciso sobre los recursos.

    Requiere que las aplicaciones asuman responsabilidades adicionales para la gestión de recursos y la seguridad, lo que puede aumentar la complejidad del desarrollo de aplicaciones.</p>



**<h1 align="center"> User mode vs Kernel mode</h1>**

----
    
| Modo de Funcionamiento | User Mode (Modo de Usuario) | Kernel Mode (Modo Kernel) |
|------------------------|----------------------------|---------------------------|
| Nivel de Privilegio    | Menor nivel de privilegio. | Mayor nivel de privilegio.|
| Acceso a Recursos      | Acceso limitado a recursos y servicios del sistema. | Acceso completo a todos los recursos y servicios del sistema.|
| Ejecución de Instrucciones Privilegiadas | No se permiten instrucciones privilegiadas directamente. | Puede ejecutar instrucciones privilegiadas directamente. |
| Control de Hardware    | Limitado en el acceso y control directo del hardware. | Tiene control total y acceso directo al hardware. |
| Protección y Seguridad | Ofrece mayor protección y aislamiento entre aplicaciones y el sistema operativo. | Responsable de garantizar la seguridad y protección del sistema y los recursos. |
| Comunicación           | Las aplicaciones deben comunicarse con el kernel a través de llamadas al sistema (system calls). | Las llamadas al sistema permiten a las aplicaciones solicitar servicios al kernel. |
| Estabilidad y Fallas   | Los errores en el espacio de usuario generalmente no afectan a todo el sistema. | Un error en el kernel puede llevar a un fallo en todo el sistema. |
| Uso del Procesador     | Menos exigente para el procesador. | Más exigente para el procesador debido a la gestión de recursos y servicios del sistema. |

  
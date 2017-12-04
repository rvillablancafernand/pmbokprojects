# PMBOK 5° Edición
pmbok = Pmbok.create name: '5° Edición'

## Process Group Types
process_group_type_1 = ProcessGroupType.create name: 'Inicio'
process_group_type_2 = ProcessGroupType.create name: 'Planificación'
process_group_type_3 = ProcessGroupType.create name: 'Ejecución'
process_group_type_4 = ProcessGroupType.create name: 'Cierre'
process_group_type_5 = ProcessGroupType.create name: 'Monitoreo y Control'

## Knowledge Areas Types
knowledge_area_type_1  = KnowledgeAreaType.create name: 'Integración',      color: '#282525'
knowledge_area_type_2  = KnowledgeAreaType.create name: 'Interesados',      color: '#9C3F87'
knowledge_area_type_3  = KnowledgeAreaType.create name: 'Alcance',          color: '#24408A'
knowledge_area_type_4  = KnowledgeAreaType.create name: 'Tiempo',           color: '#00ABEA'
knowledge_area_type_5  = KnowledgeAreaType.create name: 'Costos',           color: '#008149'
knowledge_area_type_6  = KnowledgeAreaType.create name: 'Calidad',          color: '#FEBBA6'
knowledge_area_type_7  = KnowledgeAreaType.create name: 'Adquisiciones',    color: '#FD9437'
knowledge_area_type_8  = KnowledgeAreaType.create name: 'Recursos Humanos', color: '#7FC452'
knowledge_area_type_9  = KnowledgeAreaType.create name: 'Comunicaciones',   color: '#D92830'
knowledge_area_type_10 = KnowledgeAreaType.create name: 'Riesgos',          color: '#F7D03D'

## Input And Output Types
input_and_output_type_1  = InputAndOutputType.create name: 'Enunciado del trabajo del proyecto'
input_and_output_type_2  = InputAndOutputType.create name: 'Caso de negocio'
input_and_output_type_3  = InputAndOutputType.create name: 'Acuerdos'
input_and_output_type_4  = InputAndOutputType.create name: 'Factores ambientales de la empresa'
input_and_output_type_5  = InputAndOutputType.create name: 'Activos de los procesos de la organización'
input_and_output_type_6  = InputAndOutputType.create name: 'Acta de constitución del proyecto'
input_and_output_type_7  = InputAndOutputType.create name: 'Documentos de las adquisiciones'
input_and_output_type_8  = InputAndOutputType.create name: 'Registro de interesados'
input_and_output_type_9  = InputAndOutputType.create name: 'Plan para la dirección del proyecto'
input_and_output_type_10 = InputAndOutputType.create name: 'Plan de gestión del alcance'
input_and_output_type_11 = InputAndOutputType.create name: 'Plan de gestión de los requisitos'
input_and_output_type_12 = InputAndOutputType.create name: 'Plan de gestión de los interesados'
input_and_output_type_13 = InputAndOutputType.create name: 'Documentación de requisitos'
input_and_output_type_14 = InputAndOutputType.create name: 'Matriz de trazabilidad de requisitos'
input_and_output_type_15 = InputAndOutputType.create name: 'Enunciado del alcance del proyecto'
input_and_output_type_16 = InputAndOutputType.create name: 'Actualizaciones a los documentos del proyecto'
input_and_output_type_17 = InputAndOutputType.create name: 'Línea base del alcance'
input_and_output_type_18 = InputAndOutputType.create name: 'Plan de gestión del cronograma'
input_and_output_type_19 = InputAndOutputType.create name: 'Lista de actividades'
input_and_output_type_20 = InputAndOutputType.create name: 'Atributos de las actividades'
input_and_output_type_21 = InputAndOutputType.create name: 'Lista de hitos'
input_and_output_type_22 = InputAndOutputType.create name: 'Diagramas de red del cronograma del proyecto'
input_and_output_type_23 = InputAndOutputType.create name: 'Calendarios de recursos'
input_and_output_type_24 = InputAndOutputType.create name: 'Registro de riesgos'
input_and_output_type_25 = InputAndOutputType.create name: 'Estimación de costos de las actividades'
input_and_output_type_26 = InputAndOutputType.create name: 'Recursos requeridos para las actividades'
input_and_output_type_27 = InputAndOutputType.create name: 'Estructura de desglose de recursos'
input_and_output_type_28 = InputAndOutputType.create name: 'Estimación de la duración de las actividades'
input_and_output_type_29 = InputAndOutputType.create name: 'Asignaciones de personal al proyecto'
input_and_output_type_30 = InputAndOutputType.create name: 'Línea base del cronograma'
input_and_output_type_31 = InputAndOutputType.create name: 'Cronograma del proyecto'
input_and_output_type_32 = InputAndOutputType.create name: 'Datos del cronograma'
input_and_output_type_33 = InputAndOutputType.create name: 'Calendarios del proyecto'
input_and_output_type_34 = InputAndOutputType.create name: 'Actualizaciones al plan para la dirección del proyecto'
input_and_output_type_35 = InputAndOutputType.create name: 'Plan de gestión de los costos'
input_and_output_type_36 = InputAndOutputType.create name: 'Plan de gestión de los recursos humanos'
input_and_output_type_37 = InputAndOutputType.create name: 'Base de las estimaciones'
input_and_output_type_38 = InputAndOutputType.create name: 'Línea base de costos'
input_and_output_type_39 = InputAndOutputType.create name: 'Requisitos de financiamiento del proyecto'
input_and_output_type_40 = InputAndOutputType.create name: 'Outputs de otros procesos'
input_and_output_type_41 = InputAndOutputType.create name: 'Plan de gestión de la calidad'
input_and_output_type_42 = InputAndOutputType.create name: 'Plan de mejoras del proceso'
input_and_output_type_43 = InputAndOutputType.create name: 'Métricas de Calidad'
input_and_output_type_44 = InputAndOutputType.create name: 'Listas de verificación de calidad'
input_and_output_type_45 = InputAndOutputType.create name: 'Plan de gestión de las comunicaciones'
input_and_output_type_46 = InputAndOutputType.create name: 'Plan de gestión de las adquisiciones'
input_and_output_type_47 = InputAndOutputType.create name: 'Enunciados del trabajo relativo a adquisiciones'
input_and_output_type_48 = InputAndOutputType.create name: 'Criterios de selección de proveedores'
input_and_output_type_49 = InputAndOutputType.create name: 'Decisiones de hacer o comprar'
input_and_output_type_50 = InputAndOutputType.create name: 'Solicitudes de cambio'
input_and_output_type_51 = InputAndOutputType.create name: 'Plan de gestión de los riesgos'
input_and_output_type_52 = InputAndOutputType.create name: 'Documentos del proyecto'
input_and_output_type_53 = InputAndOutputType.create name: 'Evaluaciones del desempeño del equipo'
input_and_output_type_54 = InputAndOutputType.create name: 'Actualizaciones a los factores ambientales de la empresa'
input_and_output_type_55 = InputAndOutputType.create name: 'Registro de incidentes'
input_and_output_type_56 = InputAndOutputType.create name: 'Informes de desempeño del trabajo'
input_and_output_type_57 = InputAndOutputType.create name: 'Actualizaciones a los activos de los procesos de la organización'
input_and_output_type_58 = InputAndOutputType.create name: 'Solicitudes de cambio probadas'
input_and_output_type_59 = InputAndOutputType.create name: 'Entregables'
input_and_output_type_60 = InputAndOutputType.create name: 'Datos de desempeño del trabajo'
input_and_output_type_61 = InputAndOutputType.create name: 'Medidas de control de calidad'
input_and_output_type_62 = InputAndOutputType.create name: 'Comunicaciones del proyecto'
input_and_output_type_63 = InputAndOutputType.create name: 'Propuestas de los vendedores'
input_and_output_type_64 = InputAndOutputType.create name: 'Vendedores seleccionados'
input_and_output_type_65 = InputAndOutputType.create name: 'Registro de cambios'
input_and_output_type_66 = InputAndOutputType.create name: 'Entregables aceptados'
input_and_output_type_67 = InputAndOutputType.create name: 'Transferencia del producto, servicio o resultado final'
input_and_output_type_68 = InputAndOutputType.create name: 'Adquisiciones cerradas'
input_and_output_type_69 = InputAndOutputType.create name: 'Entregables verificados'
input_and_output_type_70 = InputAndOutputType.create name: 'Información de desempeño del trabajo'
input_and_output_type_71 = InputAndOutputType.create name: 'Pronóstico del cronograma'
input_and_output_type_72 = InputAndOutputType.create name: 'Pronósticos de costos'
input_and_output_type_73 = InputAndOutputType.create name: 'Cambios validados'
input_and_output_type_74 = InputAndOutputType.create name: 'Métricas de calidad'
input_and_output_type_75 = InputAndOutputType.create name: 'Solicitudes de cambio aprobadas'

## Tool And Technique Types
tool_and_technique_type_1   = ToolAndTechniqueType.create name: 'Juicio de expertos'
tool_and_technique_type_2   = ToolAndTechniqueType.create name: 'Técnicas de facilitación'
tool_and_technique_type_3   = ToolAndTechniqueType.create name: 'Análisis de interesados'
tool_and_technique_type_4   = ToolAndTechniqueType.create name: 'Reuniones'
tool_and_technique_type_5   = ToolAndTechniqueType.create name: 'Entrevistas'
tool_and_technique_type_6   = ToolAndTechniqueType.create name: 'Grupos focales'
tool_and_technique_type_7   = ToolAndTechniqueType.create name: 'Talleres facilitados'
tool_and_technique_type_8   = ToolAndTechniqueType.create name: 'Técnicas grupales de creatividad'
tool_and_technique_type_9   = ToolAndTechniqueType.create name: 'Técnicas grupales de toma de decisiones'
tool_and_technique_type_10  = ToolAndTechniqueType.create name: 'Cuestionarios y encuestas'
tool_and_technique_type_11  = ToolAndTechniqueType.create name: 'Observaciones'
tool_and_technique_type_12  = ToolAndTechniqueType.create name: 'Prototipos'
tool_and_technique_type_13  = ToolAndTechniqueType.create name: 'Estudios comparativos'
tool_and_technique_type_14  = ToolAndTechniqueType.create name: 'Diagramas de contexto'
tool_and_technique_type_15  = ToolAndTechniqueType.create name: 'Análisis de documentos'
tool_and_technique_type_16  = ToolAndTechniqueType.create name: 'Análisis del producto'
tool_and_technique_type_17  = ToolAndTechniqueType.create name: 'Generación de alternativas'
tool_and_technique_type_18  = ToolAndTechniqueType.create name: 'Descomposición'
tool_and_technique_type_19  = ToolAndTechniqueType.create name: 'Técnicas analíticas'
tool_and_technique_type_20  = ToolAndTechniqueType.create name: 'Planificación gradual'
tool_and_technique_type_21  = ToolAndTechniqueType.create name: 'Método de diagramación o precedencia (PDM)'
tool_and_technique_type_22  = ToolAndTechniqueType.create name: 'Determinación de las dependencias'
tool_and_technique_type_23  = ToolAndTechniqueType.create name: 'Adelantos y Retrasos'
tool_and_technique_type_24  = ToolAndTechniqueType.create name: 'Análisis de alternativas'
tool_and_technique_type_25  = ToolAndTechniqueType.create name: 'Datos publicados de estimaciones'
tool_and_technique_type_26  = ToolAndTechniqueType.create name: 'Estimación ascendente'
tool_and_technique_type_27  = ToolAndTechniqueType.create name: 'Software de gestión de proyectos'
tool_and_technique_type_28  = ToolAndTechniqueType.create name: 'Estimación análoga'
tool_and_technique_type_29  = ToolAndTechniqueType.create name: 'Estimación paramétrica'
tool_and_technique_type_30  = ToolAndTechniqueType.create name: 'Estimación por tres valores'
tool_and_technique_type_31  = ToolAndTechniqueType.create name: 'Análisis de reservas'
tool_and_technique_type_32  = ToolAndTechniqueType.create name: 'Análisis de la red del cronograma'
tool_and_technique_type_33  = ToolAndTechniqueType.create name: 'Método de la ruta crítica'
tool_and_technique_type_34  = ToolAndTechniqueType.create name: 'Método de la cadena crítica'
tool_and_technique_type_35  = ToolAndTechniqueType.create name: 'Técnicas de optimización de recursos'
tool_and_technique_type_36  = ToolAndTechniqueType.create name: 'Técnicas de modelado'
tool_and_technique_type_37  = ToolAndTechniqueType.create name: 'Adelantos y retrasos'
tool_and_technique_type_38  = ToolAndTechniqueType.create name: 'Compresión del cronograma'
tool_and_technique_type_39  = ToolAndTechniqueType.create name: 'Herramienta de programación'
tool_and_technique_type_40  = ToolAndTechniqueType.create name: 'Costo de la Calidad'
tool_and_technique_type_41  = ToolAndTechniqueType.create name: 'Análisis de ofertas de proveedores'
tool_and_technique_type_42  = ToolAndTechniqueType.create name: 'Agregación de Costos'
tool_and_technique_type_43  = ToolAndTechniqueType.create name: 'Relaciones históricas'
tool_and_technique_type_44  = ToolAndTechniqueType.create name: 'Conciliación del límite de financiamiento'
tool_and_technique_type_45  = ToolAndTechniqueType.create name: 'Análisis costo-beneficio'
tool_and_technique_type_46  = ToolAndTechniqueType.create name: 'Costo de la calidad'
tool_and_technique_type_47  = ToolAndTechniqueType.create name: 'Siete herramientas básicas de calidad'
tool_and_technique_type_48  = ToolAndTechniqueType.create name: 'Diseño de experimentos'
tool_and_technique_type_49  = ToolAndTechniqueType.create name: 'Muestreo estadístico'
tool_and_technique_type_50  = ToolAndTechniqueType.create name: 'Otras herramientas de planificación de calidad'
tool_and_technique_type_51  = ToolAndTechniqueType.create name: 'Organigramas y descripciones de cargos'
tool_and_technique_type_52  = ToolAndTechniqueType.create name: 'Creación de relaciones de trabajo'
tool_and_technique_type_53  = ToolAndTechniqueType.create name: 'Teoría organizacional'
tool_and_technique_type_54  = ToolAndTechniqueType.create name: 'Análisis de requisitos de comunicación'
tool_and_technique_type_55  = ToolAndTechniqueType.create name: 'Tecnología de la comunicación'
tool_and_technique_type_56  = ToolAndTechniqueType.create name: 'Modelos de comunicación'
tool_and_technique_type_57  = ToolAndTechniqueType.create name: 'Métodos de comunicación'
tool_and_technique_type_58  = ToolAndTechniqueType.create name: 'Análisis de hacer o comprar'
tool_and_technique_type_59  = ToolAndTechniqueType.create name: 'Investigación de mercado'
tool_and_technique_type_60  = ToolAndTechniqueType.create name: 'Revisiones a la documentación'
tool_and_technique_type_61  = ToolAndTechniqueType.create name: 'Técnicas de recopilación de información'
tool_and_technique_type_62  = ToolAndTechniqueType.create name: 'Análisis con lista de verificación'
tool_and_technique_type_63  = ToolAndTechniqueType.create name: 'Análisis de supuestos'
tool_and_technique_type_64  = ToolAndTechniqueType.create name: 'Técnicas de diagramación'
tool_and_technique_type_65  = ToolAndTechniqueType.create name: 'Análisis FODA'
tool_and_technique_type_66  = ToolAndTechniqueType.create name: 'Evaluación de probabilidad e impacto de los riesgos'
tool_and_technique_type_67  = ToolAndTechniqueType.create name: 'Matriz de probabilidad de impacto'
tool_and_technique_type_68  = ToolAndTechniqueType.create name: 'Evaluación de la calidad de los datos sobre riesgos'
tool_and_technique_type_69  = ToolAndTechniqueType.create name: 'Categorización de riesgos'
tool_and_technique_type_70  = ToolAndTechniqueType.create name: 'Evaluación de la urgencia de los riesgos'
tool_and_technique_type_71  = ToolAndTechniqueType.create name: 'Técnicas de recopilación representación de datos'
tool_and_technique_type_72  = ToolAndTechniqueType.create name: 'Técnicas de análisis cuantitativo de riesgos y de modelado'
tool_and_technique_type_73  = ToolAndTechniqueType.create name: 'Estrategias para riesgos negativos o amenazas'
tool_and_technique_type_74  = ToolAndTechniqueType.create name: 'Estrategias para riesgos positivos u oportunidades'
tool_and_technique_type_75  = ToolAndTechniqueType.create name: 'Estrategias de respuesta a contingencias'
tool_and_technique_type_76  = ToolAndTechniqueType.create name: 'Asignación Previa'
tool_and_technique_type_77  = ToolAndTechniqueType.create name: 'Negociación'
tool_and_technique_type_78  = ToolAndTechniqueType.create name: 'Adquisición'
tool_and_technique_type_79  = ToolAndTechniqueType.create name: 'Equipos Virtuales'
tool_and_technique_type_80  = ToolAndTechniqueType.create name: 'Análisis de decisiones multicriterio'
tool_and_technique_type_81  = ToolAndTechniqueType.create name: 'Habilidades interpersonales'
tool_and_technique_type_82  = ToolAndTechniqueType.create name: 'Capacitación'
tool_and_technique_type_83  = ToolAndTechniqueType.create name: 'Actividades de desarrollo del espíritu de equipo'
tool_and_technique_type_84  = ToolAndTechniqueType.create name: 'Reglas básicas'
tool_and_technique_type_85  = ToolAndTechniqueType.create name: 'Coubicación'
tool_and_technique_type_86  = ToolAndTechniqueType.create name: 'Reconocimiento y recompensas'
tool_and_technique_type_87  = ToolAndTechniqueType.create name: 'Herramientas para la evaluación del personal'
tool_and_technique_type_88  = ToolAndTechniqueType.create name: 'Observación y conversación'
tool_and_technique_type_89  = ToolAndTechniqueType.create name: 'Evaluaciones del desempeño del proyecto'
tool_and_technique_type_90  = ToolAndTechniqueType.create name: 'Gestión de conflictos'
tool_and_technique_type_91  = ToolAndTechniqueType.create name: 'Sistema de información para la dirección de proyectos'
tool_and_technique_type_92  = ToolAndTechniqueType.create name: 'Herramientas de gestión y control de la calidad'
tool_and_technique_type_93  = ToolAndTechniqueType.create name: 'Auditorías de calidad'
tool_and_technique_type_94  = ToolAndTechniqueType.create name: 'Análisis de procesos'
tool_and_technique_type_95  = ToolAndTechniqueType.create name: 'Sistemas de gestión de la información'
tool_and_technique_type_96  = ToolAndTechniqueType.create name: 'Informes de desempeño'
tool_and_technique_type_97  = ToolAndTechniqueType.create name: 'Conferencia de oferentes'
tool_and_technique_type_98  = ToolAndTechniqueType.create name: 'Técnicas de evaluación de propuestas'
tool_and_technique_type_99  = ToolAndTechniqueType.create name: 'Estimaciones independientes'
tool_and_technique_type_100 = ToolAndTechniqueType.create name: 'Publicidad'
tool_and_technique_type_101 = ToolAndTechniqueType.create name: 'Negociación de adquisiciones'
tool_and_technique_type_102 = ToolAndTechniqueType.create name: 'Habilidades de gestión'
tool_and_technique_type_103 = ToolAndTechniqueType.create name: 'Auditorías de la adquisición'
tool_and_technique_type_104 = ToolAndTechniqueType.create name: 'Sistema de gestión de registros'
tool_and_technique_type_105 = ToolAndTechniqueType.create name: 'Inspección'
tool_and_technique_type_106 = ToolAndTechniqueType.create name: 'Análisis de variación'
tool_and_technique_type_107 = ToolAndTechniqueType.create name: 'Herramientas de control de cambios'
tool_and_technique_type_108 = ToolAndTechniqueType.create name: 'Revisiones del desempeño'
tool_and_technique_type_109 = ToolAndTechniqueType.create name: 'Gestión del valor ganado'
tool_and_technique_type_110 = ToolAndTechniqueType.create name: 'Pronósticos'
tool_and_technique_type_111 = ToolAndTechniqueType.create name: 'Índice de desempeño del trabajo por completar (TCPI)'
tool_and_technique_type_112 = ToolAndTechniqueType.create name: 'Revisión de solicitudes de cambio aprobadas'
tool_and_technique_type_113 = ToolAndTechniqueType.create name: 'Reevaluación de los riesgos'
tool_and_technique_type_114 = ToolAndTechniqueType.create name: 'Auditorías de los riesgos'
tool_and_technique_type_115 = ToolAndTechniqueType.create name: 'Análisis de variación de tendencias'
tool_and_technique_type_116 = ToolAndTechniqueType.create name: 'Medición del desempeño técnico'
tool_and_technique_type_117 = ToolAndTechniqueType.create name: 'Sistema de control de cambios del contrato'
tool_and_technique_type_118 = ToolAndTechniqueType.create name: 'Revisiones del desempeño de las adquisiciones'
tool_and_technique_type_119 = ToolAndTechniqueType.create name: 'Inspecciones y auditorías'
tool_and_technique_type_120 = ToolAndTechniqueType.create name: 'Informar el desempeño'
tool_and_technique_type_121 = ToolAndTechniqueType.create name: 'Sistemas de pago'
tool_and_technique_type_122 = ToolAndTechniqueType.create name: 'Administración de reclamaciones'

## Process Groups
## Inicio
process_group_1 = ProcessGroup.create pmbok: pmbok, process_group_type: process_group_type_1
### Process Objects
process_object_1  = ProcessObject.create version: '4.1',  name: 'Desarrollar el Acta de Constitución del Proyecto',   process_group: process_group_1, knowledge_area_type: knowledge_area_type_1
#### Inputs
input_1   = Input.create process_object: process_object_1, input_and_output_type: input_and_output_type_1
input_2   = Input.create process_object: process_object_1, input_and_output_type: input_and_output_type_2
input_3   = Input.create process_object: process_object_1, input_and_output_type: input_and_output_type_3
input_4   = Input.create process_object: process_object_1, input_and_output_type: input_and_output_type_4
input_5   = Input.create process_object: process_object_1, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_1   = ToolAndTechnique.create process_object: process_object_1, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_2   = ToolAndTechnique.create process_object: process_object_1, tool_and_technique_type: tool_and_technique_type_2
#### Outputs
output_1   = Output.create process_object: process_object_1, input_and_output_type: input_and_output_type_6

process_object_2  = ProcessObject.create version: '13.1', name: 'Identificar a los Interesados',                      process_group: process_group_1, knowledge_area_type: knowledge_area_type_2
#### Inputs
input_6   = Input.create process_object: process_object_2, input_and_output_type: input_and_output_type_6
input_7   = Input.create process_object: process_object_2, input_and_output_type: input_and_output_type_7
input_8   = Input.create process_object: process_object_2, input_and_output_type: input_and_output_type_4
input_9   = Input.create process_object: process_object_2, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_3   = ToolAndTechnique.create process_object: process_object_2, tool_and_technique_type: tool_and_technique_type_3
tool_and_technique_4   = ToolAndTechnique.create process_object: process_object_2, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_5   = ToolAndTechnique.create process_object: process_object_2, tool_and_technique_type: tool_and_technique_type_4
#### Outputs
output_2   = Output.create process_object: process_object_2, input_and_output_type: input_and_output_type_8

## Planificación
process_group_2 = ProcessGroup.create pmbok: pmbok, process_group_type: process_group_type_2
### Process Objects
process_object_3  = ProcessObject.create version: '5.1',  name: 'Planificar la Gestión del Alcance',                  process_group: process_group_2, knowledge_area_type: knowledge_area_type_3
#### Inputs
input_10  = Input.create process_object: process_object_3, input_and_output_type: input_and_output_type_9
input_11  = Input.create process_object: process_object_3, input_and_output_type: input_and_output_type_6
input_12  = Input.create process_object: process_object_3, input_and_output_type: input_and_output_type_4
input_13  = Input.create process_object: process_object_3, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_6   = ToolAndTechnique.create process_object: process_object_3, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_7   = ToolAndTechnique.create process_object: process_object_3, tool_and_technique_type: tool_and_technique_type_4
#### Outputs
output_3   = Output.create process_object: process_object_3, input_and_output_type: input_and_output_type_10
output_4   = Output.create process_object: process_object_3, input_and_output_type: input_and_output_type_11

process_object_4  = ProcessObject.create version: '5.2',  name: 'Recopilar Requisitos',                               process_group: process_group_2, knowledge_area_type: knowledge_area_type_3
#### Inputs
input_14  = Input.create process_object: process_object_4, input_and_output_type: input_and_output_type_10
input_15  = Input.create process_object: process_object_4, input_and_output_type: input_and_output_type_11
input_16  = Input.create process_object: process_object_4, input_and_output_type: input_and_output_type_12
input_17  = Input.create process_object: process_object_4, input_and_output_type: input_and_output_type_6
input_18  = Input.create process_object: process_object_4, input_and_output_type: input_and_output_type_8
#### Tools And Techiniques
tool_and_technique_8   = ToolAndTechnique.create process_object: process_object_4, tool_and_technique_type: tool_and_technique_type_5
tool_and_technique_9   = ToolAndTechnique.create process_object: process_object_4, tool_and_technique_type: tool_and_technique_type_6
tool_and_technique_10  = ToolAndTechnique.create process_object: process_object_4, tool_and_technique_type: tool_and_technique_type_7
tool_and_technique_11  = ToolAndTechnique.create process_object: process_object_4, tool_and_technique_type: tool_and_technique_type_8
tool_and_technique_12  = ToolAndTechnique.create process_object: process_object_4, tool_and_technique_type: tool_and_technique_type_9
tool_and_technique_13  = ToolAndTechnique.create process_object: process_object_4, tool_and_technique_type: tool_and_technique_type_10
tool_and_technique_14  = ToolAndTechnique.create process_object: process_object_4, tool_and_technique_type: tool_and_technique_type_11
tool_and_technique_15  = ToolAndTechnique.create process_object: process_object_4, tool_and_technique_type: tool_and_technique_type_12
tool_and_technique_16  = ToolAndTechnique.create process_object: process_object_4, tool_and_technique_type: tool_and_technique_type_13
tool_and_technique_17  = ToolAndTechnique.create process_object: process_object_4, tool_and_technique_type: tool_and_technique_type_14
tool_and_technique_18  = ToolAndTechnique.create process_object: process_object_4, tool_and_technique_type: tool_and_technique_type_15
#### Outputs
output_5   = Output.create process_object: process_object_4, input_and_output_type: input_and_output_type_13
output_6   = Output.create process_object: process_object_4, input_and_output_type: input_and_output_type_14

process_object_5  = ProcessObject.create version: '5.3',  name: 'Definir el Alcance',                                 process_group: process_group_2, knowledge_area_type: knowledge_area_type_3
#### Inputs
input_19  = Input.create process_object: process_object_5, input_and_output_type: input_and_output_type_10
input_20  = Input.create process_object: process_object_5, input_and_output_type: input_and_output_type_6
input_21  = Input.create process_object: process_object_5, input_and_output_type: input_and_output_type_13
input_22  = Input.create process_object: process_object_5, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_19  = ToolAndTechnique.create process_object: process_object_5, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_20  = ToolAndTechnique.create process_object: process_object_5, tool_and_technique_type: tool_and_technique_type_16
tool_and_technique_21  = ToolAndTechnique.create process_object: process_object_5, tool_and_technique_type: tool_and_technique_type_17
tool_and_technique_22  = ToolAndTechnique.create process_object: process_object_5, tool_and_technique_type: tool_and_technique_type_7
#### Outputs
output_7   = Output.create process_object: process_object_5, input_and_output_type: input_and_output_type_15
output_8   = Output.create process_object: process_object_5, input_and_output_type: input_and_output_type_16

process_object_6  = ProcessObject.create version: '5.4',  name: 'Crear la EDT/WBS',                                   process_group: process_group_2, knowledge_area_type: knowledge_area_type_3
#### Inputs
input_23  = Input.create process_object: process_object_6, input_and_output_type: input_and_output_type_10
input_24  = Input.create process_object: process_object_6, input_and_output_type: input_and_output_type_15
input_25  = Input.create process_object: process_object_6, input_and_output_type: input_and_output_type_13
input_26  = Input.create process_object: process_object_6, input_and_output_type: input_and_output_type_4
input_27  = Input.create process_object: process_object_6, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_23  = ToolAndTechnique.create process_object: process_object_6, tool_and_technique_type: tool_and_technique_type_18
tool_and_technique_24  = ToolAndTechnique.create process_object: process_object_6, tool_and_technique_type: tool_and_technique_type_1
#### Outputs
output_9   = Output.create process_object: process_object_6, input_and_output_type: input_and_output_type_17
output_10  = Output.create process_object: process_object_6, input_and_output_type: input_and_output_type_16

process_object_7  = ProcessObject.create version: '6.1',  name: 'Planificar la Gestión del Cronograma',               process_group: process_group_2, knowledge_area_type: knowledge_area_type_4
#### Inputs
input_28  = Input.create process_object: process_object_7, input_and_output_type: input_and_output_type_9
input_29  = Input.create process_object: process_object_7, input_and_output_type: input_and_output_type_6
input_30  = Input.create process_object: process_object_7, input_and_output_type: input_and_output_type_4
input_31  = Input.create process_object: process_object_7, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_25  = ToolAndTechnique.create process_object: process_object_7, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_26  = ToolAndTechnique.create process_object: process_object_7, tool_and_technique_type: tool_and_technique_type_19
tool_and_technique_27  = ToolAndTechnique.create process_object: process_object_7, tool_and_technique_type: tool_and_technique_type_4
#### Outputs
output_11  = Output.create process_object: process_object_7, input_and_output_type: input_and_output_type_18

process_object_8  = ProcessObject.create version: '6.2',  name: 'Definir las Actividades',                            process_group: process_group_2, knowledge_area_type: knowledge_area_type_4
#### Inputs
input_32  = Input.create process_object: process_object_8, input_and_output_type: input_and_output_type_18
input_33  = Input.create process_object: process_object_8, input_and_output_type: input_and_output_type_17
input_34  = Input.create process_object: process_object_8, input_and_output_type: input_and_output_type_4
input_35  = Input.create process_object: process_object_8, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_28  = ToolAndTechnique.create process_object: process_object_8, tool_and_technique_type: tool_and_technique_type_18
tool_and_technique_29  = ToolAndTechnique.create process_object: process_object_8, tool_and_technique_type: tool_and_technique_type_20
tool_and_technique_30  = ToolAndTechnique.create process_object: process_object_8, tool_and_technique_type: tool_and_technique_type_1
#### Outputs
output_12  = Output.create process_object: process_object_8, input_and_output_type: input_and_output_type_19
output_13  = Output.create process_object: process_object_8, input_and_output_type: input_and_output_type_20
output_14  = Output.create process_object: process_object_8, input_and_output_type: input_and_output_type_21

process_object_9  = ProcessObject.create version: '6.3',  name: 'Secuenciar las Actividades',                         process_group: process_group_2, knowledge_area_type: knowledge_area_type_4
#### Inputs
input_36  = Input.create process_object: process_object_9, input_and_output_type: input_and_output_type_18
input_37  = Input.create process_object: process_object_9, input_and_output_type: input_and_output_type_19
input_38  = Input.create process_object: process_object_9, input_and_output_type: input_and_output_type_20
input_39  = Input.create process_object: process_object_9, input_and_output_type: input_and_output_type_21
input_40  = Input.create process_object: process_object_9, input_and_output_type: input_and_output_type_15
input_41  = Input.create process_object: process_object_9, input_and_output_type: input_and_output_type_4
input_42  = Input.create process_object: process_object_9, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_31  = ToolAndTechnique.create process_object: process_object_9, tool_and_technique_type: tool_and_technique_type_21
tool_and_technique_32  = ToolAndTechnique.create process_object: process_object_9, tool_and_technique_type: tool_and_technique_type_22
tool_and_technique_33  = ToolAndTechnique.create process_object: process_object_9, tool_and_technique_type: tool_and_technique_type_23
#### Outputs
output_15  = Output.create process_object: process_object_9, input_and_output_type: input_and_output_type_22
output_16  = Output.create process_object: process_object_9, input_and_output_type: input_and_output_type_16

process_object_10 = ProcessObject.create version: '6.4',  name: 'Estimar los Recursos de las Actividades',            process_group: process_group_2, knowledge_area_type: knowledge_area_type_4
#### Inputs
input_43  = Input.create process_object: process_object_10, input_and_output_type: input_and_output_type_18
input_44  = Input.create process_object: process_object_10, input_and_output_type: input_and_output_type_19
input_45  = Input.create process_object: process_object_10, input_and_output_type: input_and_output_type_20
input_46  = Input.create process_object: process_object_10, input_and_output_type: input_and_output_type_23
input_47  = Input.create process_object: process_object_10, input_and_output_type: input_and_output_type_24
input_48  = Input.create process_object: process_object_10, input_and_output_type: input_and_output_type_25
input_49  = Input.create process_object: process_object_10, input_and_output_type: input_and_output_type_4
input_50  = Input.create process_object: process_object_10, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_34  = ToolAndTechnique.create process_object: process_object_10, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_35  = ToolAndTechnique.create process_object: process_object_10, tool_and_technique_type: tool_and_technique_type_24
tool_and_technique_36  = ToolAndTechnique.create process_object: process_object_10, tool_and_technique_type: tool_and_technique_type_25
tool_and_technique_37  = ToolAndTechnique.create process_object: process_object_10, tool_and_technique_type: tool_and_technique_type_26
tool_and_technique_38  = ToolAndTechnique.create process_object: process_object_10, tool_and_technique_type: tool_and_technique_type_27
#### Outputs
output_17  = Output.create process_object: process_object_10, input_and_output_type: input_and_output_type_26
output_18  = Output.create process_object: process_object_10, input_and_output_type: input_and_output_type_27
output_19  = Output.create process_object: process_object_10, input_and_output_type: input_and_output_type_16

process_object_11 = ProcessObject.create version: '6.5',  name: 'Estimar la Duración de las Actividades',             process_group: process_group_2, knowledge_area_type: knowledge_area_type_4
#### Inputs
input_51  = Input.create process_object: process_object_11, input_and_output_type: input_and_output_type_18
input_52  = Input.create process_object: process_object_11, input_and_output_type: input_and_output_type_19
input_53  = Input.create process_object: process_object_11, input_and_output_type: input_and_output_type_20
input_54  = Input.create process_object: process_object_11, input_and_output_type: input_and_output_type_26
input_55  = Input.create process_object: process_object_11, input_and_output_type: input_and_output_type_23
input_56  = Input.create process_object: process_object_11, input_and_output_type: input_and_output_type_15
input_57  = Input.create process_object: process_object_11, input_and_output_type: input_and_output_type_24
input_58  = Input.create process_object: process_object_11, input_and_output_type: input_and_output_type_27
input_59  = Input.create process_object: process_object_11, input_and_output_type: input_and_output_type_4
input_60  = Input.create process_object: process_object_11, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_39  = ToolAndTechnique.create process_object: process_object_11, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_40  = ToolAndTechnique.create process_object: process_object_11, tool_and_technique_type: tool_and_technique_type_28
tool_and_technique_41  = ToolAndTechnique.create process_object: process_object_11, tool_and_technique_type: tool_and_technique_type_29
tool_and_technique_42  = ToolAndTechnique.create process_object: process_object_11, tool_and_technique_type: tool_and_technique_type_30
tool_and_technique_43  = ToolAndTechnique.create process_object: process_object_11, tool_and_technique_type: tool_and_technique_type_9
tool_and_technique_44  = ToolAndTechnique.create process_object: process_object_11, tool_and_technique_type: tool_and_technique_type_31
#### Outputs
output_20  = Output.create process_object: process_object_11, input_and_output_type: input_and_output_type_28
output_21  = Output.create process_object: process_object_11, input_and_output_type: input_and_output_type_16

process_object_12 = ProcessObject.create version: '6.6',  name: 'Desarrollar el Cronograma',                          process_group: process_group_2, knowledge_area_type: knowledge_area_type_4
#### Inputs
input_61  = Input.create process_object: process_object_12, input_and_output_type: input_and_output_type_18
input_62  = Input.create process_object: process_object_12, input_and_output_type: input_and_output_type_19
input_63  = Input.create process_object: process_object_12, input_and_output_type: input_and_output_type_20
input_64  = Input.create process_object: process_object_12, input_and_output_type: input_and_output_type_22
input_65  = Input.create process_object: process_object_12, input_and_output_type: input_and_output_type_26
input_66  = Input.create process_object: process_object_12, input_and_output_type: input_and_output_type_23
input_67  = Input.create process_object: process_object_12, input_and_output_type: input_and_output_type_28
input_68  = Input.create process_object: process_object_12, input_and_output_type: input_and_output_type_15
input_69  = Input.create process_object: process_object_12, input_and_output_type: input_and_output_type_24
input_70  = Input.create process_object: process_object_12, input_and_output_type: input_and_output_type_29
input_71  = Input.create process_object: process_object_12, input_and_output_type: input_and_output_type_27
input_72  = Input.create process_object: process_object_12, input_and_output_type: input_and_output_type_4
input_73  = Input.create process_object: process_object_12, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_45  = ToolAndTechnique.create process_object: process_object_12, tool_and_technique_type: tool_and_technique_type_32
tool_and_technique_46  = ToolAndTechnique.create process_object: process_object_12, tool_and_technique_type: tool_and_technique_type_33
tool_and_technique_47  = ToolAndTechnique.create process_object: process_object_12, tool_and_technique_type: tool_and_technique_type_34
tool_and_technique_48  = ToolAndTechnique.create process_object: process_object_12, tool_and_technique_type: tool_and_technique_type_35
tool_and_technique_49  = ToolAndTechnique.create process_object: process_object_12, tool_and_technique_type: tool_and_technique_type_36
tool_and_technique_50  = ToolAndTechnique.create process_object: process_object_12, tool_and_technique_type: tool_and_technique_type_37
tool_and_technique_51  = ToolAndTechnique.create process_object: process_object_12, tool_and_technique_type: tool_and_technique_type_38
tool_and_technique_52  = ToolAndTechnique.create process_object: process_object_12, tool_and_technique_type: tool_and_technique_type_39
#### Outputs
output_22  = Output.create process_object: process_object_12, input_and_output_type: input_and_output_type_30
output_23  = Output.create process_object: process_object_12, input_and_output_type: input_and_output_type_31
output_24  = Output.create process_object: process_object_12, input_and_output_type: input_and_output_type_32
output_25  = Output.create process_object: process_object_12, input_and_output_type: input_and_output_type_33
output_26  = Output.create process_object: process_object_12, input_and_output_type: input_and_output_type_34
output_27  = Output.create process_object: process_object_12, input_and_output_type: input_and_output_type_16

process_object_13 = ProcessObject.create version: '7.1',  name: 'Planificar la Gestión de los Costos',                process_group: process_group_2, knowledge_area_type: knowledge_area_type_5
#### Inputs
input_74  = Input.create process_object: process_object_13, input_and_output_type: input_and_output_type_9
input_75  = Input.create process_object: process_object_13, input_and_output_type: input_and_output_type_6
input_76  = Input.create process_object: process_object_13, input_and_output_type: input_and_output_type_4
input_77  = Input.create process_object: process_object_13, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_53  = ToolAndTechnique.create process_object: process_object_13, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_54  = ToolAndTechnique.create process_object: process_object_13, tool_and_technique_type: tool_and_technique_type_19
tool_and_technique_55  = ToolAndTechnique.create process_object: process_object_13, tool_and_technique_type: tool_and_technique_type_4
#### Outputs
output_28  = Output.create process_object: process_object_13, input_and_output_type: input_and_output_type_35

process_object_14 = ProcessObject.create version: '7.2',  name: 'Estimar los Costos',                                 process_group: process_group_2, knowledge_area_type: knowledge_area_type_5
#### Inputs
input_78  = Input.create process_object: process_object_14, input_and_output_type: input_and_output_type_35
input_79  = Input.create process_object: process_object_14, input_and_output_type: input_and_output_type_36
input_80  = Input.create process_object: process_object_14, input_and_output_type: input_and_output_type_17
input_81  = Input.create process_object: process_object_14, input_and_output_type: input_and_output_type_31
input_82  = Input.create process_object: process_object_14, input_and_output_type: input_and_output_type_24
input_83  = Input.create process_object: process_object_14, input_and_output_type: input_and_output_type_4
input_84  = Input.create process_object: process_object_14, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_56  = ToolAndTechnique.create process_object: process_object_14, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_57  = ToolAndTechnique.create process_object: process_object_14, tool_and_technique_type: tool_and_technique_type_28
tool_and_technique_58  = ToolAndTechnique.create process_object: process_object_14, tool_and_technique_type: tool_and_technique_type_29
tool_and_technique_59  = ToolAndTechnique.create process_object: process_object_14, tool_and_technique_type: tool_and_technique_type_26
tool_and_technique_60  = ToolAndTechnique.create process_object: process_object_14, tool_and_technique_type: tool_and_technique_type_30
tool_and_technique_61  = ToolAndTechnique.create process_object: process_object_14, tool_and_technique_type: tool_and_technique_type_31
tool_and_technique_62  = ToolAndTechnique.create process_object: process_object_14, tool_and_technique_type: tool_and_technique_type_40
tool_and_technique_63  = ToolAndTechnique.create process_object: process_object_14, tool_and_technique_type: tool_and_technique_type_27
tool_and_technique_64  = ToolAndTechnique.create process_object: process_object_14, tool_and_technique_type: tool_and_technique_type_41
tool_and_technique_65  = ToolAndTechnique.create process_object: process_object_14, tool_and_technique_type: tool_and_technique_type_9
#### Outputs
output_29  = Output.create process_object: process_object_14, input_and_output_type: input_and_output_type_25
output_30  = Output.create process_object: process_object_14, input_and_output_type: input_and_output_type_37
output_31  = Output.create process_object: process_object_14, input_and_output_type: input_and_output_type_16

process_object_15 = ProcessObject.create version: '7.3',  name: 'Determinar el Presupuesto',                          process_group: process_group_2, knowledge_area_type: knowledge_area_type_5
#### Inputs
input_85  = Input.create process_object: process_object_15, input_and_output_type: input_and_output_type_35
input_86  = Input.create process_object: process_object_15, input_and_output_type: input_and_output_type_17
input_87  = Input.create process_object: process_object_15, input_and_output_type: input_and_output_type_25
input_88  = Input.create process_object: process_object_15, input_and_output_type: input_and_output_type_37
input_89  = Input.create process_object: process_object_15, input_and_output_type: input_and_output_type_31
input_90  = Input.create process_object: process_object_15, input_and_output_type: input_and_output_type_23
input_91  = Input.create process_object: process_object_15, input_and_output_type: input_and_output_type_24
input_92  = Input.create process_object: process_object_15, input_and_output_type: input_and_output_type_3
input_93  = Input.create process_object: process_object_15, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_66  = ToolAndTechnique.create process_object: process_object_15, tool_and_technique_type: tool_and_technique_type_42
tool_and_technique_67  = ToolAndTechnique.create process_object: process_object_15, tool_and_technique_type: tool_and_technique_type_31
tool_and_technique_68  = ToolAndTechnique.create process_object: process_object_15, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_69  = ToolAndTechnique.create process_object: process_object_15, tool_and_technique_type: tool_and_technique_type_43
tool_and_technique_70  = ToolAndTechnique.create process_object: process_object_15, tool_and_technique_type: tool_and_technique_type_44
#### Outputs
output_32  = Output.create process_object: process_object_15, input_and_output_type: input_and_output_type_38
output_33  = Output.create process_object: process_object_15, input_and_output_type: input_and_output_type_39
output_34  = Output.create process_object: process_object_15, input_and_output_type: input_and_output_type_16

process_object_16 = ProcessObject.create version: '4.2',  name: 'Desarrollar el Plan para la Dirección del Proyecto', process_group: process_group_2, knowledge_area_type: knowledge_area_type_1
#### Inputs
input_94  = Input.create process_object: process_object_16, input_and_output_type: input_and_output_type_6
input_95  = Input.create process_object: process_object_16, input_and_output_type: input_and_output_type_40
input_96  = Input.create process_object: process_object_16, input_and_output_type: input_and_output_type_4
input_97  = Input.create process_object: process_object_16, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_71  = ToolAndTechnique.create process_object: process_object_16, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_72  = ToolAndTechnique.create process_object: process_object_16, tool_and_technique_type: tool_and_technique_type_2
#### Outputs
output_35  = Output.create process_object: process_object_16, input_and_output_type: input_and_output_type_9

process_object_17 = ProcessObject.create version: '8.1',  name: 'Planificar la Gestión de la Calidad',                process_group: process_group_2, knowledge_area_type: knowledge_area_type_6
#### Inputs
input_98  = Input.create process_object: process_object_17, input_and_output_type: input_and_output_type_9
input_99  = Input.create process_object: process_object_17, input_and_output_type: input_and_output_type_8
input_100 = Input.create process_object: process_object_17, input_and_output_type: input_and_output_type_24
input_101 = Input.create process_object: process_object_17, input_and_output_type: input_and_output_type_13
input_102 = Input.create process_object: process_object_17, input_and_output_type: input_and_output_type_4
input_103 = Input.create process_object: process_object_17, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_73  = ToolAndTechnique.create process_object: process_object_17, tool_and_technique_type: tool_and_technique_type_45
tool_and_technique_74  = ToolAndTechnique.create process_object: process_object_17, tool_and_technique_type: tool_and_technique_type_46
tool_and_technique_75  = ToolAndTechnique.create process_object: process_object_17, tool_and_technique_type: tool_and_technique_type_47
tool_and_technique_76  = ToolAndTechnique.create process_object: process_object_17, tool_and_technique_type: tool_and_technique_type_13
tool_and_technique_77  = ToolAndTechnique.create process_object: process_object_17, tool_and_technique_type: tool_and_technique_type_48
tool_and_technique_78  = ToolAndTechnique.create process_object: process_object_17, tool_and_technique_type: tool_and_technique_type_49
tool_and_technique_79  = ToolAndTechnique.create process_object: process_object_17, tool_and_technique_type: tool_and_technique_type_50
tool_and_technique_80  = ToolAndTechnique.create process_object: process_object_17, tool_and_technique_type: tool_and_technique_type_4
#### Outputs
output_36  = Output.create process_object: process_object_17, input_and_output_type: input_and_output_type_41
output_37  = Output.create process_object: process_object_17, input_and_output_type: input_and_output_type_42
output_38  = Output.create process_object: process_object_17, input_and_output_type: input_and_output_type_43
output_39  = Output.create process_object: process_object_17, input_and_output_type: input_and_output_type_44
output_40  = Output.create process_object: process_object_17, input_and_output_type: input_and_output_type_16

process_object_18 = ProcessObject.create version: '9.1',  name: 'Planificar la Gestión de los Recursos Humanos',      process_group: process_group_2, knowledge_area_type: knowledge_area_type_8
#### Inputs
input_104 = Input.create process_object: process_object_18, input_and_output_type: input_and_output_type_9
input_105 = Input.create process_object: process_object_18, input_and_output_type: input_and_output_type_26
input_106 = Input.create process_object: process_object_18, input_and_output_type: input_and_output_type_4
input_107 = Input.create process_object: process_object_18, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_81  = ToolAndTechnique.create process_object: process_object_18, tool_and_technique_type: tool_and_technique_type_51
tool_and_technique_82  = ToolAndTechnique.create process_object: process_object_18, tool_and_technique_type: tool_and_technique_type_52
tool_and_technique_83  = ToolAndTechnique.create process_object: process_object_18, tool_and_technique_type: tool_and_technique_type_53
tool_and_technique_84  = ToolAndTechnique.create process_object: process_object_18, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_85  = ToolAndTechnique.create process_object: process_object_18, tool_and_technique_type: tool_and_technique_type_4
#### Outputs
output_41  = Output.create process_object: process_object_18, input_and_output_type: input_and_output_type_36

process_object_19 = ProcessObject.create version: '10.1', name: 'Planificar la Gestión de las Comunicaciones',        process_group: process_group_2, knowledge_area_type: knowledge_area_type_9
#### Inputs
input_108 = Input.create process_object: process_object_19, input_and_output_type: input_and_output_type_9
input_109 = Input.create process_object: process_object_19, input_and_output_type: input_and_output_type_8
input_110 = Input.create process_object: process_object_19, input_and_output_type: input_and_output_type_4
input_111 = Input.create process_object: process_object_19, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_86  = ToolAndTechnique.create process_object: process_object_19, tool_and_technique_type: tool_and_technique_type_54
tool_and_technique_87  = ToolAndTechnique.create process_object: process_object_19, tool_and_technique_type: tool_and_technique_type_55
tool_and_technique_88  = ToolAndTechnique.create process_object: process_object_19, tool_and_technique_type: tool_and_technique_type_56
tool_and_technique_89  = ToolAndTechnique.create process_object: process_object_19, tool_and_technique_type: tool_and_technique_type_57
tool_and_technique_90  = ToolAndTechnique.create process_object: process_object_19, tool_and_technique_type: tool_and_technique_type_4
#### Outputs
output_42  = Output.create process_object: process_object_19, input_and_output_type: input_and_output_type_45
output_43  = Output.create process_object: process_object_19, input_and_output_type: input_and_output_type_16

process_object_20 = ProcessObject.create version: '12.1', name: 'Planificar la Gestión de las Adquisiciones',         process_group: process_group_2, knowledge_area_type: knowledge_area_type_7
#### Inputs
input_112 = Input.create process_object: process_object_20, input_and_output_type: input_and_output_type_9
input_113 = Input.create process_object: process_object_20, input_and_output_type: input_and_output_type_13
input_114 = Input.create process_object: process_object_20, input_and_output_type: input_and_output_type_24
input_115 = Input.create process_object: process_object_20, input_and_output_type: input_and_output_type_26
input_116 = Input.create process_object: process_object_20, input_and_output_type: input_and_output_type_31
input_117 = Input.create process_object: process_object_20, input_and_output_type: input_and_output_type_25
input_118 = Input.create process_object: process_object_20, input_and_output_type: input_and_output_type_8
input_119 = Input.create process_object: process_object_20, input_and_output_type: input_and_output_type_4
input_120 = Input.create process_object: process_object_20, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_91  = ToolAndTechnique.create process_object: process_object_20, tool_and_technique_type: tool_and_technique_type_58
tool_and_technique_92  = ToolAndTechnique.create process_object: process_object_20, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_93  = ToolAndTechnique.create process_object: process_object_20, tool_and_technique_type: tool_and_technique_type_59
tool_and_technique_94  = ToolAndTechnique.create process_object: process_object_20, tool_and_technique_type: tool_and_technique_type_4
#### Outputs
output_44  = Output.create process_object: process_object_20, input_and_output_type: input_and_output_type_46
output_45  = Output.create process_object: process_object_20, input_and_output_type: input_and_output_type_47
output_46  = Output.create process_object: process_object_20, input_and_output_type: input_and_output_type_7
output_47  = Output.create process_object: process_object_20, input_and_output_type: input_and_output_type_48
output_48  = Output.create process_object: process_object_20, input_and_output_type: input_and_output_type_49
output_49  = Output.create process_object: process_object_20, input_and_output_type: input_and_output_type_50
output_50  = Output.create process_object: process_object_20, input_and_output_type: input_and_output_type_16

process_object_21 = ProcessObject.create version: '13.2', name: 'Planificar la Gestión de los Interesados',           process_group: process_group_2, knowledge_area_type: knowledge_area_type_2
#### Inputs
input_121 = Input.create process_object: process_object_21, input_and_output_type: input_and_output_type_9
input_122 = Input.create process_object: process_object_21, input_and_output_type: input_and_output_type_8
input_123 = Input.create process_object: process_object_21, input_and_output_type: input_and_output_type_4
input_124 = Input.create process_object: process_object_21, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_95  = ToolAndTechnique.create process_object: process_object_21, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_96  = ToolAndTechnique.create process_object: process_object_21, tool_and_technique_type: tool_and_technique_type_4
tool_and_technique_97  = ToolAndTechnique.create process_object: process_object_21, tool_and_technique_type: tool_and_technique_type_19
#### Outputs
output_51  = Output.create process_object: process_object_21, input_and_output_type: input_and_output_type_12
output_52  = Output.create process_object: process_object_21, input_and_output_type: input_and_output_type_16

process_object_22 = ProcessObject.create version: '11.1', name: 'Planificar la Gestión de los Riesgos',               process_group: process_group_2, knowledge_area_type: knowledge_area_type_10
#### Inputs
input_125 = Input.create process_object: process_object_22, input_and_output_type: input_and_output_type_9
input_126 = Input.create process_object: process_object_22, input_and_output_type: input_and_output_type_6
input_127 = Input.create process_object: process_object_22, input_and_output_type: input_and_output_type_8
input_128 = Input.create process_object: process_object_22, input_and_output_type: input_and_output_type_4
input_129 = Input.create process_object: process_object_22, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_98  = ToolAndTechnique.create process_object: process_object_22, tool_and_technique_type: tool_and_technique_type_19
tool_and_technique_99  = ToolAndTechnique.create process_object: process_object_22, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_100 = ToolAndTechnique.create process_object: process_object_22, tool_and_technique_type: tool_and_technique_type_4
#### Outputs
output_53  = Output.create process_object: process_object_22, input_and_output_type: input_and_output_type_51

process_object_23 = ProcessObject.create version: '11.2', name: 'Identificar los Riesgos',                            process_group: process_group_2, knowledge_area_type: knowledge_area_type_10
#### Inputs
input_130 = Input.create process_object: process_object_23, input_and_output_type: input_and_output_type_51
input_131 = Input.create process_object: process_object_23, input_and_output_type: input_and_output_type_35
input_132 = Input.create process_object: process_object_23, input_and_output_type: input_and_output_type_18
input_133 = Input.create process_object: process_object_23, input_and_output_type: input_and_output_type_41
input_134 = Input.create process_object: process_object_23, input_and_output_type: input_and_output_type_36
input_135 = Input.create process_object: process_object_23, input_and_output_type: input_and_output_type_17
input_136 = Input.create process_object: process_object_23, input_and_output_type: input_and_output_type_25
input_137 = Input.create process_object: process_object_23, input_and_output_type: input_and_output_type_28
input_138 = Input.create process_object: process_object_23, input_and_output_type: input_and_output_type_8
input_139 = Input.create process_object: process_object_23, input_and_output_type: input_and_output_type_52
input_140 = Input.create process_object: process_object_23, input_and_output_type: input_and_output_type_7
input_141 = Input.create process_object: process_object_23, input_and_output_type: input_and_output_type_4
input_142 = Input.create process_object: process_object_23, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_101 = ToolAndTechnique.create process_object: process_object_23, tool_and_technique_type: tool_and_technique_type_60
tool_and_technique_102 = ToolAndTechnique.create process_object: process_object_23, tool_and_technique_type: tool_and_technique_type_61
tool_and_technique_103 = ToolAndTechnique.create process_object: process_object_23, tool_and_technique_type: tool_and_technique_type_62
tool_and_technique_104 = ToolAndTechnique.create process_object: process_object_23, tool_and_technique_type: tool_and_technique_type_63
tool_and_technique_105 = ToolAndTechnique.create process_object: process_object_23, tool_and_technique_type: tool_and_technique_type_64
tool_and_technique_106 = ToolAndTechnique.create process_object: process_object_23, tool_and_technique_type: tool_and_technique_type_65
tool_and_technique_107 = ToolAndTechnique.create process_object: process_object_23, tool_and_technique_type: tool_and_technique_type_1
#### Outputs
output_54  = Output.create process_object: process_object_23, input_and_output_type: input_and_output_type_24

process_object_24 = ProcessObject.create version: '11.3', name: 'Realizar el Análisis Cualitativo de Riesgos',        process_group: process_group_2, knowledge_area_type: knowledge_area_type_10
#### Inputs
input_143 = Input.create process_object: process_object_24, input_and_output_type: input_and_output_type_51
input_144 = Input.create process_object: process_object_24, input_and_output_type: input_and_output_type_17
input_145 = Input.create process_object: process_object_24, input_and_output_type: input_and_output_type_24
input_146 = Input.create process_object: process_object_24, input_and_output_type: input_and_output_type_4
input_147 = Input.create process_object: process_object_24, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_108 = ToolAndTechnique.create process_object: process_object_24, tool_and_technique_type: tool_and_technique_type_66
tool_and_technique_109 = ToolAndTechnique.create process_object: process_object_24, tool_and_technique_type: tool_and_technique_type_67
tool_and_technique_110 = ToolAndTechnique.create process_object: process_object_24, tool_and_technique_type: tool_and_technique_type_68
tool_and_technique_111 = ToolAndTechnique.create process_object: process_object_24, tool_and_technique_type: tool_and_technique_type_69
tool_and_technique_112 = ToolAndTechnique.create process_object: process_object_24, tool_and_technique_type: tool_and_technique_type_70
tool_and_technique_113 = ToolAndTechnique.create process_object: process_object_24, tool_and_technique_type: tool_and_technique_type_1
#### Outputs
output_55  = Output.create process_object: process_object_24, input_and_output_type: input_and_output_type_16

process_object_25 = ProcessObject.create version: '11.4', name: 'Realizar el Análisis Cuantitativo de Riesgos',       process_group: process_group_2, knowledge_area_type: knowledge_area_type_10
#### Inputs
input_148 = Input.create process_object: process_object_25, input_and_output_type: input_and_output_type_51
input_149 = Input.create process_object: process_object_25, input_and_output_type: input_and_output_type_35
input_150 = Input.create process_object: process_object_25, input_and_output_type: input_and_output_type_18
input_151 = Input.create process_object: process_object_25, input_and_output_type: input_and_output_type_24
input_152 = Input.create process_object: process_object_25, input_and_output_type: input_and_output_type_4
input_153 = Input.create process_object: process_object_25, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_114 = ToolAndTechnique.create process_object: process_object_25, tool_and_technique_type: tool_and_technique_type_71
tool_and_technique_115 = ToolAndTechnique.create process_object: process_object_25, tool_and_technique_type: tool_and_technique_type_72
tool_and_technique_116 = ToolAndTechnique.create process_object: process_object_25, tool_and_technique_type: tool_and_technique_type_1
#### Outputs
output_56  = Output.create process_object: process_object_25, input_and_output_type: input_and_output_type_16

process_object_26 = ProcessObject.create version: '11.5', name: 'Planificar la Respuesta a los Riesgos',              process_group: process_group_2, knowledge_area_type: knowledge_area_type_10
#### Inputs
input_154 = Input.create process_object: process_object_26, input_and_output_type: input_and_output_type_51
input_155 = Input.create process_object: process_object_26, input_and_output_type: input_and_output_type_24
#### Tools And Techiniques
tool_and_technique_117 = ToolAndTechnique.create process_object: process_object_26, tool_and_technique_type: tool_and_technique_type_73
tool_and_technique_118 = ToolAndTechnique.create process_object: process_object_26, tool_and_technique_type: tool_and_technique_type_74
tool_and_technique_119 = ToolAndTechnique.create process_object: process_object_26, tool_and_technique_type: tool_and_technique_type_75
tool_and_technique_120 = ToolAndTechnique.create process_object: process_object_26, tool_and_technique_type: tool_and_technique_type_1
#### Outputs
output_57  = Output.create process_object: process_object_26, input_and_output_type: input_and_output_type_34
output_58  = Output.create process_object: process_object_26, input_and_output_type: input_and_output_type_16

## Ejecución
process_group_3 = ProcessGroup.create pmbok: pmbok, process_group_type: process_group_type_3
### Process Objects
process_object_27 = ProcessObject.create version: '9.2',  name: 'Adquirir el Equipo del Proyecto',                    process_group: process_group_3, knowledge_area_type: knowledge_area_type_8
#### Inputs
input_156 = Input.create process_object: process_object_27, input_and_output_type: input_and_output_type_36
input_157 = Input.create process_object: process_object_27, input_and_output_type: input_and_output_type_4
input_158 = Input.create process_object: process_object_27, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_121 = ToolAndTechnique.create process_object: process_object_27, tool_and_technique_type: tool_and_technique_type_76
tool_and_technique_122 = ToolAndTechnique.create process_object: process_object_27, tool_and_technique_type: tool_and_technique_type_77
tool_and_technique_123 = ToolAndTechnique.create process_object: process_object_27, tool_and_technique_type: tool_and_technique_type_78
tool_and_technique_124 = ToolAndTechnique.create process_object: process_object_27, tool_and_technique_type: tool_and_technique_type_79
tool_and_technique_125 = ToolAndTechnique.create process_object: process_object_27, tool_and_technique_type: tool_and_technique_type_80
#### Outputs
output_59  = Output.create process_object: process_object_27, input_and_output_type: input_and_output_type_29
output_60  = Output.create process_object: process_object_27, input_and_output_type: input_and_output_type_23
output_61  = Output.create process_object: process_object_27, input_and_output_type: input_and_output_type_34

process_object_28 = ProcessObject.create version: '9.3',  name: 'Desarrollar el Equipo del Proyecto',                 process_group: process_group_3, knowledge_area_type: knowledge_area_type_8
#### Inputs
input_159 = Input.create process_object: process_object_28, input_and_output_type: input_and_output_type_36
input_160 = Input.create process_object: process_object_28, input_and_output_type: input_and_output_type_29
input_161 = Input.create process_object: process_object_28, input_and_output_type: input_and_output_type_23
#### Tools And Techiniques
tool_and_technique_126 = ToolAndTechnique.create process_object: process_object_28, tool_and_technique_type: tool_and_technique_type_81
tool_and_technique_127 = ToolAndTechnique.create process_object: process_object_28, tool_and_technique_type: tool_and_technique_type_82
tool_and_technique_128 = ToolAndTechnique.create process_object: process_object_28, tool_and_technique_type: tool_and_technique_type_83
tool_and_technique_129 = ToolAndTechnique.create process_object: process_object_28, tool_and_technique_type: tool_and_technique_type_84
tool_and_technique_130 = ToolAndTechnique.create process_object: process_object_28, tool_and_technique_type: tool_and_technique_type_85
tool_and_technique_131 = ToolAndTechnique.create process_object: process_object_28, tool_and_technique_type: tool_and_technique_type_86
tool_and_technique_132 = ToolAndTechnique.create process_object: process_object_28, tool_and_technique_type: tool_and_technique_type_87
#### Outputs
output_62  = Output.create process_object: process_object_28, input_and_output_type: input_and_output_type_53
output_63  = Output.create process_object: process_object_28, input_and_output_type: input_and_output_type_54

process_object_29 = ProcessObject.create version: '9.4',  name: 'Dirigir el Equipo del Proyecto',                     process_group: process_group_3, knowledge_area_type: knowledge_area_type_8
#### Inputs
input_162 = Input.create process_object: process_object_29, input_and_output_type: input_and_output_type_36
input_163 = Input.create process_object: process_object_29, input_and_output_type: input_and_output_type_29
input_164 = Input.create process_object: process_object_29, input_and_output_type: input_and_output_type_53
input_165 = Input.create process_object: process_object_29, input_and_output_type: input_and_output_type_55
input_166 = Input.create process_object: process_object_29, input_and_output_type: input_and_output_type_56
input_167 = Input.create process_object: process_object_29, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_133 = ToolAndTechnique.create process_object: process_object_29, tool_and_technique_type: tool_and_technique_type_88
tool_and_technique_134 = ToolAndTechnique.create process_object: process_object_29, tool_and_technique_type: tool_and_technique_type_89
tool_and_technique_135 = ToolAndTechnique.create process_object: process_object_29, tool_and_technique_type: tool_and_technique_type_90
tool_and_technique_136 = ToolAndTechnique.create process_object: process_object_29, tool_and_technique_type: tool_and_technique_type_81
#### Outputs
output_64  = Output.create process_object: process_object_29, input_and_output_type: input_and_output_type_50
output_65  = Output.create process_object: process_object_29, input_and_output_type: input_and_output_type_34
output_66  = Output.create process_object: process_object_29, input_and_output_type: input_and_output_type_16
output_67  = Output.create process_object: process_object_29, input_and_output_type: input_and_output_type_54
output_68  = Output.create process_object: process_object_29, input_and_output_type: input_and_output_type_57

process_object_30 = ProcessObject.create version: '4.3',  name: 'Dirigir y Gestionar el Trabajo del Proyecto',        process_group: process_group_3, knowledge_area_type: knowledge_area_type_1
#### Inputs
input_168 = Input.create process_object: process_object_30, input_and_output_type: input_and_output_type_9
input_169 = Input.create process_object: process_object_30, input_and_output_type: input_and_output_type_58
input_170 = Input.create process_object: process_object_30, input_and_output_type: input_and_output_type_4
input_171 = Input.create process_object: process_object_30, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_137 = ToolAndTechnique.create process_object: process_object_30, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_138 = ToolAndTechnique.create process_object: process_object_30, tool_and_technique_type: tool_and_technique_type_91
tool_and_technique_139 = ToolAndTechnique.create process_object: process_object_30, tool_and_technique_type: tool_and_technique_type_4
#### Outputs
output_69  = Output.create process_object: process_object_30, input_and_output_type: input_and_output_type_59
output_70  = Output.create process_object: process_object_30, input_and_output_type: input_and_output_type_60
output_71  = Output.create process_object: process_object_30, input_and_output_type: input_and_output_type_50
output_72  = Output.create process_object: process_object_30, input_and_output_type: input_and_output_type_34
output_73  = Output.create process_object: process_object_30, input_and_output_type: input_and_output_type_16

process_object_31 = ProcessObject.create version: '8.2',  name: 'Realizar el Aseguramiento de Calidad',               process_group: process_group_3, knowledge_area_type: knowledge_area_type_6
#### Inputs
input_172 = Input.create process_object: process_object_31, input_and_output_type: input_and_output_type_41
input_173 = Input.create process_object: process_object_31, input_and_output_type: input_and_output_type_42
input_174 = Input.create process_object: process_object_31, input_and_output_type: input_and_output_type_43
input_175 = Input.create process_object: process_object_31, input_and_output_type: input_and_output_type_61
input_176 = Input.create process_object: process_object_31, input_and_output_type: input_and_output_type_52
#### Tools And Techiniques
tool_and_technique_140 = ToolAndTechnique.create process_object: process_object_31, tool_and_technique_type: tool_and_technique_type_92
tool_and_technique_141 = ToolAndTechnique.create process_object: process_object_31, tool_and_technique_type: tool_and_technique_type_93
tool_and_technique_142 = ToolAndTechnique.create process_object: process_object_31, tool_and_technique_type: tool_and_technique_type_94
#### Outputs
output_74  = Output.create process_object: process_object_31, input_and_output_type: input_and_output_type_50
output_75  = Output.create process_object: process_object_31, input_and_output_type: input_and_output_type_34
output_76  = Output.create process_object: process_object_31, input_and_output_type: input_and_output_type_16
output_77  = Output.create process_object: process_object_31, input_and_output_type: input_and_output_type_57

process_object_32 = ProcessObject.create version: '10.2', name: 'Gestionar las Comunicaciones',                       process_group: process_group_3, knowledge_area_type: knowledge_area_type_9
#### Inputs
input_177 = Input.create process_object: process_object_32, input_and_output_type: input_and_output_type_45
input_178 = Input.create process_object: process_object_32, input_and_output_type: input_and_output_type_56
input_179 = Input.create process_object: process_object_32, input_and_output_type: input_and_output_type_4
input_180 = Input.create process_object: process_object_32, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_143 = ToolAndTechnique.create process_object: process_object_32, tool_and_technique_type: tool_and_technique_type_55
tool_and_technique_144 = ToolAndTechnique.create process_object: process_object_32, tool_and_technique_type: tool_and_technique_type_56
tool_and_technique_145 = ToolAndTechnique.create process_object: process_object_32, tool_and_technique_type: tool_and_technique_type_57
tool_and_technique_146 = ToolAndTechnique.create process_object: process_object_32, tool_and_technique_type: tool_and_technique_type_95
tool_and_technique_147 = ToolAndTechnique.create process_object: process_object_32, tool_and_technique_type: tool_and_technique_type_96
#### Outputs
output_78  = Output.create process_object: process_object_32, input_and_output_type: input_and_output_type_62
output_79  = Output.create process_object: process_object_32, input_and_output_type: input_and_output_type_34
output_80  = Output.create process_object: process_object_32, input_and_output_type: input_and_output_type_16
output_81  = Output.create process_object: process_object_32, input_and_output_type: input_and_output_type_57

process_object_33 = ProcessObject.create version: '12.2', name: 'Efectuar las Adquisiciones',                         process_group: process_group_3, knowledge_area_type: knowledge_area_type_7
#### Inputs
input_181 = Input.create process_object: process_object_33, input_and_output_type: input_and_output_type_46
input_182 = Input.create process_object: process_object_33, input_and_output_type: input_and_output_type_7
input_183 = Input.create process_object: process_object_33, input_and_output_type: input_and_output_type_48
input_184 = Input.create process_object: process_object_33, input_and_output_type: input_and_output_type_63
input_185 = Input.create process_object: process_object_33, input_and_output_type: input_and_output_type_52
input_186 = Input.create process_object: process_object_33, input_and_output_type: input_and_output_type_49
input_187 = Input.create process_object: process_object_33, input_and_output_type: input_and_output_type_47
input_188 = Input.create process_object: process_object_33, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_148 = ToolAndTechnique.create process_object: process_object_33, tool_and_technique_type: tool_and_technique_type_97
tool_and_technique_149 = ToolAndTechnique.create process_object: process_object_33, tool_and_technique_type: tool_and_technique_type_98
tool_and_technique_150 = ToolAndTechnique.create process_object: process_object_33, tool_and_technique_type: tool_and_technique_type_99
tool_and_technique_151 = ToolAndTechnique.create process_object: process_object_33, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_152 = ToolAndTechnique.create process_object: process_object_33, tool_and_technique_type: tool_and_technique_type_100
tool_and_technique_153 = ToolAndTechnique.create process_object: process_object_33, tool_and_technique_type: tool_and_technique_type_19
tool_and_technique_154 = ToolAndTechnique.create process_object: process_object_33, tool_and_technique_type: tool_and_technique_type_101
#### Outputs
output_82  = Output.create process_object: process_object_33, input_and_output_type: input_and_output_type_64
output_83  = Output.create process_object: process_object_33, input_and_output_type: input_and_output_type_3
output_84  = Output.create process_object: process_object_33, input_and_output_type: input_and_output_type_23
output_85  = Output.create process_object: process_object_33, input_and_output_type: input_and_output_type_50
output_86  = Output.create process_object: process_object_33, input_and_output_type: input_and_output_type_34
output_87  = Output.create process_object: process_object_33, input_and_output_type: input_and_output_type_16

process_object_34 = ProcessObject.create version: '13.3', name: 'Gestionar la Participación de los Interesados',      process_group: process_group_3, knowledge_area_type: knowledge_area_type_2
#### Inputs
input_189 = Input.create process_object: process_object_34, input_and_output_type: input_and_output_type_12
input_190 = Input.create process_object: process_object_34, input_and_output_type: input_and_output_type_45
input_191 = Input.create process_object: process_object_34, input_and_output_type: input_and_output_type_65
input_192 = Input.create process_object: process_object_34, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_155 = ToolAndTechnique.create process_object: process_object_34, tool_and_technique_type: tool_and_technique_type_57
tool_and_technique_156 = ToolAndTechnique.create process_object: process_object_34, tool_and_technique_type: tool_and_technique_type_81
tool_and_technique_157 = ToolAndTechnique.create process_object: process_object_34, tool_and_technique_type: tool_and_technique_type_102
#### Outputs
output_88  = Output.create process_object: process_object_34, input_and_output_type: input_and_output_type_55
output_89  = Output.create process_object: process_object_34, input_and_output_type: input_and_output_type_50
output_90  = Output.create process_object: process_object_34, input_and_output_type: input_and_output_type_34
output_91  = Output.create process_object: process_object_34, input_and_output_type: input_and_output_type_16
output_92  = Output.create process_object: process_object_34, input_and_output_type: input_and_output_type_57

## Cierre
process_group_4 = ProcessGroup.create pmbok: pmbok, process_group_type: process_group_type_4
### Process Objects
process_object_35 = ProcessObject.create version: '4.6',  name: 'Cerrar el Proyecto o Fase',                          process_group: process_group_4, knowledge_area_type: knowledge_area_type_1
#### Inputs
input_193 = Input.create process_object: process_object_35, input_and_output_type: input_and_output_type_9
input_194 = Input.create process_object: process_object_35, input_and_output_type: input_and_output_type_66
input_195 = Input.create process_object: process_object_35, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_158 = ToolAndTechnique.create process_object: process_object_35, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_159 = ToolAndTechnique.create process_object: process_object_35, tool_and_technique_type: tool_and_technique_type_19
tool_and_technique_160 = ToolAndTechnique.create process_object: process_object_35, tool_and_technique_type: tool_and_technique_type_4
#### Outputs
output_93  = Output.create process_object: process_object_35, input_and_output_type: input_and_output_type_67
output_94  = Output.create process_object: process_object_35, input_and_output_type: input_and_output_type_57

process_object_36 = ProcessObject.create version: '12.4', name: 'Cerrar las Adquisiciones',                           process_group: process_group_4, knowledge_area_type: knowledge_area_type_7
#### Inputs
input_196 = Input.create process_object: process_object_36, input_and_output_type: input_and_output_type_9
input_197 = Input.create process_object: process_object_36, input_and_output_type: input_and_output_type_7
#### Tools And Techiniques
tool_and_technique_161 = ToolAndTechnique.create process_object: process_object_36, tool_and_technique_type: tool_and_technique_type_103
tool_and_technique_162 = ToolAndTechnique.create process_object: process_object_36, tool_and_technique_type: tool_and_technique_type_101
tool_and_technique_163 = ToolAndTechnique.create process_object: process_object_36, tool_and_technique_type: tool_and_technique_type_104
#### Outputs
output_95  = Output.create process_object: process_object_36, input_and_output_type: input_and_output_type_68
output_96  = Output.create process_object: process_object_36, input_and_output_type: input_and_output_type_57

## Monitoreo y Control
process_group_5 = ProcessGroup.create pmbok: pmbok, process_group_type: process_group_type_5
### Process Objects
process_object_37 = ProcessObject.create version: '5.5',  name: 'Validar el Alcance',                                 process_group: process_group_5, knowledge_area_type: knowledge_area_type_3
#### Inputs
input_198 = Input.create process_object: process_object_37, input_and_output_type: input_and_output_type_9
input_199 = Input.create process_object: process_object_37, input_and_output_type: input_and_output_type_13
input_200 = Input.create process_object: process_object_37, input_and_output_type: input_and_output_type_14
input_201 = Input.create process_object: process_object_37, input_and_output_type: input_and_output_type_69
input_202 = Input.create process_object: process_object_37, input_and_output_type: input_and_output_type_60
#### Tools And Techiniques
tool_and_technique_164 = ToolAndTechnique.create process_object: process_object_37, tool_and_technique_type: tool_and_technique_type_105
tool_and_technique_165 = ToolAndTechnique.create process_object: process_object_37, tool_and_technique_type: tool_and_technique_type_9
#### Outputs
output_97  = Output.create process_object: process_object_37, input_and_output_type: input_and_output_type_66
output_98  = Output.create process_object: process_object_37, input_and_output_type: input_and_output_type_50
output_99  = Output.create process_object: process_object_37, input_and_output_type: input_and_output_type_70
output_100 = Output.create process_object: process_object_37, input_and_output_type: input_and_output_type_16

process_object_38 = ProcessObject.create version: '5.6',  name: 'Controlar el Alcance',                               process_group: process_group_5, knowledge_area_type: knowledge_area_type_3
#### Inputs
input_203 = Input.create process_object: process_object_38, input_and_output_type: input_and_output_type_9
input_204 = Input.create process_object: process_object_38, input_and_output_type: input_and_output_type_13
input_205 = Input.create process_object: process_object_38, input_and_output_type: input_and_output_type_14
input_206 = Input.create process_object: process_object_38, input_and_output_type: input_and_output_type_60
input_207 = Input.create process_object: process_object_38, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_166 = ToolAndTechnique.create process_object: process_object_38, tool_and_technique_type: tool_and_technique_type_106
#### Outputs
output_101 = Output.create process_object: process_object_38, input_and_output_type: input_and_output_type_70
output_102 = Output.create process_object: process_object_38, input_and_output_type: input_and_output_type_50
output_103 = Output.create process_object: process_object_38, input_and_output_type: input_and_output_type_34
output_104 = Output.create process_object: process_object_38, input_and_output_type: input_and_output_type_16
output_105 = Output.create process_object: process_object_38, input_and_output_type: input_and_output_type_57

process_object_39 = ProcessObject.create version: '4.4',  name: 'Monitorear y Controlar el Trabajo del Proyecto',     process_group: process_group_5, knowledge_area_type: knowledge_area_type_1
#### Inputs
input_208 = Input.create process_object: process_object_39, input_and_output_type: input_and_output_type_9
input_209 = Input.create process_object: process_object_39, input_and_output_type: input_and_output_type_71
input_210 = Input.create process_object: process_object_39, input_and_output_type: input_and_output_type_72
input_211 = Input.create process_object: process_object_39, input_and_output_type: input_and_output_type_73
input_212 = Input.create process_object: process_object_39, input_and_output_type: input_and_output_type_70
input_213 = Input.create process_object: process_object_39, input_and_output_type: input_and_output_type_4
input_214 = Input.create process_object: process_object_39, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_167 = ToolAndTechnique.create process_object: process_object_39, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_168 = ToolAndTechnique.create process_object: process_object_39, tool_and_technique_type: tool_and_technique_type_19
tool_and_technique_169 = ToolAndTechnique.create process_object: process_object_39, tool_and_technique_type: tool_and_technique_type_91
tool_and_technique_170 = ToolAndTechnique.create process_object: process_object_39, tool_and_technique_type: tool_and_technique_type_4
#### Outputs
output_106 = Output.create process_object: process_object_39, input_and_output_type: input_and_output_type_50
output_107 = Output.create process_object: process_object_39, input_and_output_type: input_and_output_type_56
output_108 = Output.create process_object: process_object_39, input_and_output_type: input_and_output_type_34
output_109 = Output.create process_object: process_object_39, input_and_output_type: input_and_output_type_16

process_object_40 = ProcessObject.create version: '4.5',  name: 'Realizar el Control Integrado de Cambios',           process_group: process_group_5, knowledge_area_type: knowledge_area_type_1
#### Inputs
input_215 = Input.create process_object: process_object_40, input_and_output_type: input_and_output_type_9
input_216 = Input.create process_object: process_object_40, input_and_output_type: input_and_output_type_56
input_217 = Input.create process_object: process_object_40, input_and_output_type: input_and_output_type_50
input_218 = Input.create process_object: process_object_40, input_and_output_type: input_and_output_type_4
input_219 = Input.create process_object: process_object_40, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_171 = ToolAndTechnique.create process_object: process_object_40, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_172 = ToolAndTechnique.create process_object: process_object_40, tool_and_technique_type: tool_and_technique_type_4
tool_and_technique_173 = ToolAndTechnique.create process_object: process_object_40, tool_and_technique_type: tool_and_technique_type_107
#### Outputs
output_110 = Output.create process_object: process_object_40, input_and_output_type: input_and_output_type_58
output_111 = Output.create process_object: process_object_40, input_and_output_type: input_and_output_type_65
output_112 = Output.create process_object: process_object_40, input_and_output_type: input_and_output_type_34
output_113 = Output.create process_object: process_object_40, input_and_output_type: input_and_output_type_16

process_object_41 = ProcessObject.create version: '6.7',  name: 'Controlar el Cronograma',                            process_group: process_group_5, knowledge_area_type: knowledge_area_type_4
#### Inputs
input_220 = Input.create process_object: process_object_41, input_and_output_type: input_and_output_type_9
input_221 = Input.create process_object: process_object_41, input_and_output_type: input_and_output_type_31
input_222 = Input.create process_object: process_object_41, input_and_output_type: input_and_output_type_60
input_223 = Input.create process_object: process_object_41, input_and_output_type: input_and_output_type_33
input_224 = Input.create process_object: process_object_41, input_and_output_type: input_and_output_type_32
input_225 = Input.create process_object: process_object_41, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_174 = ToolAndTechnique.create process_object: process_object_41, tool_and_technique_type: tool_and_technique_type_108
tool_and_technique_175 = ToolAndTechnique.create process_object: process_object_41, tool_and_technique_type: tool_and_technique_type_27
tool_and_technique_176 = ToolAndTechnique.create process_object: process_object_41, tool_and_technique_type: tool_and_technique_type_35
tool_and_technique_177 = ToolAndTechnique.create process_object: process_object_41, tool_and_technique_type: tool_and_technique_type_36
tool_and_technique_178 = ToolAndTechnique.create process_object: process_object_41, tool_and_technique_type: tool_and_technique_type_37
tool_and_technique_179 = ToolAndTechnique.create process_object: process_object_41, tool_and_technique_type: tool_and_technique_type_38
tool_and_technique_180 = ToolAndTechnique.create process_object: process_object_41, tool_and_technique_type: tool_and_technique_type_39
#### Outputs
output_114 = Output.create process_object: process_object_41, input_and_output_type: input_and_output_type_70
output_115 = Output.create process_object: process_object_41, input_and_output_type: input_and_output_type_71
output_116 = Output.create process_object: process_object_41, input_and_output_type: input_and_output_type_50
output_117 = Output.create process_object: process_object_41, input_and_output_type: input_and_output_type_34
output_118 = Output.create process_object: process_object_41, input_and_output_type: input_and_output_type_16
output_119 = Output.create process_object: process_object_41, input_and_output_type: input_and_output_type_57

process_object_42 = ProcessObject.create version: '7.4',  name: 'Controlar los Costos',                               process_group: process_group_5, knowledge_area_type: knowledge_area_type_5
#### Inputs
input_226 = Input.create process_object: process_object_42, input_and_output_type: input_and_output_type_9
input_227 = Input.create process_object: process_object_42, input_and_output_type: input_and_output_type_39
input_228 = Input.create process_object: process_object_42, input_and_output_type: input_and_output_type_60
input_229 = Input.create process_object: process_object_42, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_181 = ToolAndTechnique.create process_object: process_object_42, tool_and_technique_type: tool_and_technique_type_109
tool_and_technique_182 = ToolAndTechnique.create process_object: process_object_42, tool_and_technique_type: tool_and_technique_type_110
tool_and_technique_183 = ToolAndTechnique.create process_object: process_object_42, tool_and_technique_type: tool_and_technique_type_111
tool_and_technique_184 = ToolAndTechnique.create process_object: process_object_42, tool_and_technique_type: tool_and_technique_type_108
tool_and_technique_185 = ToolAndTechnique.create process_object: process_object_42, tool_and_technique_type: tool_and_technique_type_27
tool_and_technique_186 = ToolAndTechnique.create process_object: process_object_42, tool_and_technique_type: tool_and_technique_type_31
#### Outputs
output_120 = Output.create process_object: process_object_42, input_and_output_type: input_and_output_type_70
output_121 = Output.create process_object: process_object_42, input_and_output_type: input_and_output_type_72
output_122 = Output.create process_object: process_object_42, input_and_output_type: input_and_output_type_50
output_123 = Output.create process_object: process_object_42, input_and_output_type: input_and_output_type_34
output_124 = Output.create process_object: process_object_42, input_and_output_type: input_and_output_type_16
output_125 = Output.create process_object: process_object_42, input_and_output_type: input_and_output_type_57

process_object_43 = ProcessObject.create version: '8.3',  name: 'Controlar la Calidad',                               process_group: process_group_5, knowledge_area_type: knowledge_area_type_6
#### Inputs
input_230 = Input.create process_object: process_object_43, input_and_output_type: input_and_output_type_9
input_231 = Input.create process_object: process_object_43, input_and_output_type: input_and_output_type_74
input_232 = Input.create process_object: process_object_43, input_and_output_type: input_and_output_type_44
input_233 = Input.create process_object: process_object_43, input_and_output_type: input_and_output_type_60
input_234 = Input.create process_object: process_object_43, input_and_output_type: input_and_output_type_58
input_235 = Input.create process_object: process_object_43, input_and_output_type: input_and_output_type_59
input_236 = Input.create process_object: process_object_43, input_and_output_type: input_and_output_type_52
input_237 = Input.create process_object: process_object_43, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_187 = ToolAndTechnique.create process_object: process_object_43, tool_and_technique_type: tool_and_technique_type_47
tool_and_technique_188 = ToolAndTechnique.create process_object: process_object_43, tool_and_technique_type: tool_and_technique_type_49
tool_and_technique_189 = ToolAndTechnique.create process_object: process_object_43, tool_and_technique_type: tool_and_technique_type_105
tool_and_technique_190 = ToolAndTechnique.create process_object: process_object_43, tool_and_technique_type: tool_and_technique_type_112
#### Outputs
output_126 = Output.create process_object: process_object_43, input_and_output_type: input_and_output_type_61
output_127 = Output.create process_object: process_object_43, input_and_output_type: input_and_output_type_73
output_128 = Output.create process_object: process_object_43, input_and_output_type: input_and_output_type_69
output_129 = Output.create process_object: process_object_43, input_and_output_type: input_and_output_type_70
output_130 = Output.create process_object: process_object_43, input_and_output_type: input_and_output_type_50
output_131 = Output.create process_object: process_object_43, input_and_output_type: input_and_output_type_34
output_132 = Output.create process_object: process_object_43, input_and_output_type: input_and_output_type_16
output_133 = Output.create process_object: process_object_43, input_and_output_type: input_and_output_type_57

process_object_44 = ProcessObject.create version: '10.3', name: 'Controlar las Comunicaciones',                       process_group: process_group_5, knowledge_area_type: knowledge_area_type_9
#### Inputs
input_238 = Input.create process_object: process_object_44, input_and_output_type: input_and_output_type_9
input_239 = Input.create process_object: process_object_44, input_and_output_type: input_and_output_type_62
input_240 = Input.create process_object: process_object_44, input_and_output_type: input_and_output_type_55
input_241 = Input.create process_object: process_object_44, input_and_output_type: input_and_output_type_60
input_242 = Input.create process_object: process_object_44, input_and_output_type: input_and_output_type_5
#### Tools And Techiniques
tool_and_technique_191 = ToolAndTechnique.create process_object: process_object_44, tool_and_technique_type: tool_and_technique_type_95
tool_and_technique_192 = ToolAndTechnique.create process_object: process_object_44, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_193 = ToolAndTechnique.create process_object: process_object_44, tool_and_technique_type: tool_and_technique_type_4
#### Outputs
output_134 = Output.create process_object: process_object_44, input_and_output_type: input_and_output_type_70
output_135 = Output.create process_object: process_object_44, input_and_output_type: input_and_output_type_50
output_136 = Output.create process_object: process_object_44, input_and_output_type: input_and_output_type_34
output_137 = Output.create process_object: process_object_44, input_and_output_type: input_and_output_type_16
output_138 = Output.create process_object: process_object_44, input_and_output_type: input_and_output_type_57

process_object_45 = ProcessObject.create version: '11.6', name: 'Controlar los Riesgos',                              process_group: process_group_5, knowledge_area_type: knowledge_area_type_10
#### Inputs
input_243 = Input.create process_object: process_object_45, input_and_output_type: input_and_output_type_9
input_244 = Input.create process_object: process_object_45, input_and_output_type: input_and_output_type_24
input_245 = Input.create process_object: process_object_45, input_and_output_type: input_and_output_type_60
input_246 = Input.create process_object: process_object_45, input_and_output_type: input_and_output_type_56
#### Tools And Techiniques
tool_and_technique_194 = ToolAndTechnique.create process_object: process_object_45, tool_and_technique_type: tool_and_technique_type_113
tool_and_technique_195 = ToolAndTechnique.create process_object: process_object_45, tool_and_technique_type: tool_and_technique_type_114
tool_and_technique_196 = ToolAndTechnique.create process_object: process_object_45, tool_and_technique_type: tool_and_technique_type_115
tool_and_technique_197 = ToolAndTechnique.create process_object: process_object_45, tool_and_technique_type: tool_and_technique_type_116
tool_and_technique_198 = ToolAndTechnique.create process_object: process_object_45, tool_and_technique_type: tool_and_technique_type_31
tool_and_technique_199 = ToolAndTechnique.create process_object: process_object_45, tool_and_technique_type: tool_and_technique_type_4
#### Outputs
output_139 = Output.create process_object: process_object_45, input_and_output_type: input_and_output_type_70
output_140 = Output.create process_object: process_object_45, input_and_output_type: input_and_output_type_50
output_141 = Output.create process_object: process_object_45, input_and_output_type: input_and_output_type_34
output_142 = Output.create process_object: process_object_45, input_and_output_type: input_and_output_type_16
output_143 = Output.create process_object: process_object_45, input_and_output_type: input_and_output_type_57

process_object_46 = ProcessObject.create version: '12.3', name: 'Controlar las Adquisiciones',                        process_group: process_group_5, knowledge_area_type: knowledge_area_type_7
#### Inputs
input_247 = Input.create process_object: process_object_46, input_and_output_type: input_and_output_type_9
input_248 = Input.create process_object: process_object_46, input_and_output_type: input_and_output_type_7
input_249 = Input.create process_object: process_object_46, input_and_output_type: input_and_output_type_3
input_250 = Input.create process_object: process_object_46, input_and_output_type: input_and_output_type_75
input_251 = Input.create process_object: process_object_46, input_and_output_type: input_and_output_type_56
input_252 = Input.create process_object: process_object_46, input_and_output_type: input_and_output_type_60
#### Tools And Techiniques
tool_and_technique_200 = ToolAndTechnique.create process_object: process_object_46, tool_and_technique_type: tool_and_technique_type_117
tool_and_technique_201 = ToolAndTechnique.create process_object: process_object_46, tool_and_technique_type: tool_and_technique_type_118
tool_and_technique_202 = ToolAndTechnique.create process_object: process_object_46, tool_and_technique_type: tool_and_technique_type_119
tool_and_technique_203 = ToolAndTechnique.create process_object: process_object_46, tool_and_technique_type: tool_and_technique_type_120
tool_and_technique_204 = ToolAndTechnique.create process_object: process_object_46, tool_and_technique_type: tool_and_technique_type_121
tool_and_technique_205 = ToolAndTechnique.create process_object: process_object_46, tool_and_technique_type: tool_and_technique_type_122
tool_and_technique_206 = ToolAndTechnique.create process_object: process_object_46, tool_and_technique_type: tool_and_technique_type_104
#### Outputs
output_144 = Output.create process_object: process_object_46, input_and_output_type: input_and_output_type_70
output_145 = Output.create process_object: process_object_46, input_and_output_type: input_and_output_type_50
output_146 = Output.create process_object: process_object_46, input_and_output_type: input_and_output_type_34
output_147 = Output.create process_object: process_object_46, input_and_output_type: input_and_output_type_16
output_148 = Output.create process_object: process_object_46, input_and_output_type: input_and_output_type_57

process_object_47 = ProcessObject.create version: '13.4', name: 'Controlar la Participación de los Interesados',      process_group: process_group_5, knowledge_area_type: knowledge_area_type_2
#### Inputs
input_253 = Input.create process_object: process_object_47, input_and_output_type: input_and_output_type_9
input_254 = Input.create process_object: process_object_47, input_and_output_type: input_and_output_type_55
input_255 = Input.create process_object: process_object_47, input_and_output_type: input_and_output_type_60
input_256 = Input.create process_object: process_object_47, input_and_output_type: input_and_output_type_52
#### Tools And Techiniques
tool_and_technique_207 = ToolAndTechnique.create process_object: process_object_47, tool_and_technique_type: tool_and_technique_type_95
tool_and_technique_208 = ToolAndTechnique.create process_object: process_object_47, tool_and_technique_type: tool_and_technique_type_1
tool_and_technique_209 = ToolAndTechnique.create process_object: process_object_47, tool_and_technique_type: tool_and_technique_type_4
#### Outputs
output_149 = Output.create process_object: process_object_47, input_and_output_type: input_and_output_type_70
output_150 = Output.create process_object: process_object_47, input_and_output_type: input_and_output_type_50
output_151 = Output.create process_object: process_object_47, input_and_output_type: input_and_output_type_34
output_152 = Output.create process_object: process_object_47, input_and_output_type: input_and_output_type_16
output_153 = Output.create process_object: process_object_47, input_and_output_type: input_and_output_type_57



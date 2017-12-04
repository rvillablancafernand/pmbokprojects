# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Professor.create email: 'zerocool4u2@gmail.com', password: '210646', administrator: true
Professor.create email: 'ricardovillaf@gmail.com', password: 'password', administrator: true

ProcessGroupType.create name: 'Inicio'
ProcessGroupType.create name: 'Planificación'
ProcessGroupType.create name: 'Ejecución'
ProcessGroupType.create name: 'Cierre'
ProcessGroupType.create name: 'Monitoreo y Control'

KnowledgeAreaType.create name: 'Integración', color: '#282525'
KnowledgeAreaType.create name: 'Interesados', color: '#9C3F87'
KnowledgeAreaType.create name: 'Alcance', color: '#24408A'
KnowledgeAreaType.create name: 'Tiempo', color: '#00ABEA'
KnowledgeAreaType.create name: 'Costos', color: '#008149'
KnowledgeAreaType.create name: 'Calidad', color: '#FEBBA6'
KnowledgeAreaType.create name: 'Adquisiciones', color: '#FD9437'
KnowledgeAreaType.create name: 'Recursos Humanos', color: '#7FC452'
KnowledgeAreaType.create name: 'Comunicaciones', color: '#D92830'
KnowledgeAreaType.create name: 'Riesgos', color: '#F7D03D'

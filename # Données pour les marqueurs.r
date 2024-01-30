# Données pour les marqueurs 
data <- data.frame(
  lng = c(-0.09, -0.11, -0.12),
  lat = c(51.50, 51.52, 51.48),
  label = c("Point 1", "Point 2", "Point 3")
)

# Ajouter des marqueurs supplémentaires
map_londres <-  leaflet(data) %>% 
  addTiles() %>% 
  addMarkers( ~lng, ~lat, popup = ~label) %>% 
  addProviderTiles(providers$Stamen.TonerLite)
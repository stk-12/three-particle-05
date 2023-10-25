
void main() {
  // vec4 mvPosition = modelViewMatrix * vec4( position, 1.0 );
  // gl_Position = projectionMatrix * mvPosition;
  // gl_PointSize = 1000.0 / -mvPosition.z;
  // vec4 modelPosition = modelMatrix * vec4(position, 1.0);

  vec3 pos = position;
  vec4 modelPosition = modelViewMatrix * vec4(pos, 1.0);
  gl_Position = projectionMatrix * modelPosition;
  gl_PointSize = 1000.0 / -modelPosition.z;
}
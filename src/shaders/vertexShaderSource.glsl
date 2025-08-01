#version 330 core
layout(location = 0) in vec3 aPos;
layout(location = 1) in vec3 aNormal;
layout(location = 2) in vec2 vertexUV;

out vec3 FragPos;  
out vec3 Normal;
out vec2 UV;

uniform mat4 model;
uniform mat4 uMVP;

void main() 
{
    FragPos = vec3(model * vec4(aPos, 1.0));
    Normal  = mat3(transpose(inverse(model))) * aNormal;
    gl_Position = uMVP * vec4(aPos, 1.0);
    UV = vertexUV;
}
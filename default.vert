#version 330 core
layout (location = 0) in vec3 aPos;			// coordinates from our vertices variable
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec3 aNormal;

out vec3 color;

out vec3 Normal;
// used to calculate the direction of light
out vec3 crntPos;

uniform mat4 camMatrix;
uniform mat4 model;

void main()
{
	crntPos = vec3(model * vec4(aPos, 1.0f));

   gl_Position = camMatrix * vec4(crntPos, 1.0f);
   color = aColor;
   Normal = aNormal;
}
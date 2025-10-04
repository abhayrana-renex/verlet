#version 330 core

in vec3 fragmentPos;
in vec3 fragmentVertexNormal;
in float fragmentVelocity;

out vec4 color;

uniform sampler2D imageTexture;

void main()
{
    vec3 lightColor = vec3(1.0, 1.0, 1.0);
    vec3 lightPos = vec3(10.0, 10.0, 10.0);

    // Colorful particles with rainbow effect based on velocity
    float velocityFactor = fragmentVelocity * 0.5 + 0.5; // Normalize velocity to 0-1
    vec3 objectColor = vec3(
        sin(velocityFactor * 3.14159) * 0.8 + 0.2,  // Red component
        sin(velocityFactor * 3.14159 + 2.0) * 0.8 + 0.2,  // Green component  
        sin(velocityFactor * 3.14159 + 4.0) * 0.8 + 0.2   // Blue component
    );
    // objectColor = vec3(1.0, 0.713, 0.757);

    // ambient
    float ambientStrength = 0.3;
    vec3 ambient = ambientStrength * lightColor;

    // diffuse
    vec3 norm = normalize(fragmentVertexNormal);
    vec3 lightDir = normalize(lightPos - fragmentPos);
    float diff = max(dot(norm, lightDir), 0.0);
    vec3 diffuse = diff * lightColor;


    vec3 result = (ambient + diffuse) * objectColor;

    color = vec4(result, 1.0);
}
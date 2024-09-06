varying mediump vec2 var_texcoord0;

uniform lowp sampler2D texture_sampler;
uniform lowp vec4 tint;
uniform lowp vec4 pos;
uniform lowp vec4 size;
uniform lowp vec4 angle;

void main()
{
    vec4 color1 = vec4(1, 1, 1, 1.);
    vec4 color2 = vec4(2.0, 2.0, 2.0, 1.);
    vec4 color3 = vec4(1, 0.5, 0.5, 1.);

    float x = var_texcoord0.x;
    float y = var_texcoord0.y;

    // Adjust the step functions to include a slope
    vec4 tint = mix(color1, color2, step(pos.x + angle.x * y, x));
    tint = mix(tint, color1, step(pos.x+size.x + angle.x * y, x));

    // Pre-multiply alpha since all runtime textures already are
    lowp vec4 tint_pm = vec4(tint.xyz * tint.w, tint.w);
    gl_FragColor = texture2D(texture_sampler, var_texcoord0.xy) * tint_pm;
}

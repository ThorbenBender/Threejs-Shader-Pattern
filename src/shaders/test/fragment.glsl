varying vec2 vUv;

float random(vec2 st)
{
  return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

void main()
{
    // pattern 3
    // float strengthX = vUv.x;
    
    // pattern 4
    // float strengthY = vUv.y;
    
    // pattern 5
    // float strengthYRev = 1.0 - vUv.y;

    // pattern 6
    // float strengthYFast = vUv.y * 10.0;

    // pattern 7
    // float strength7 = mod(vUv.y * 10.0, 1.0);

    // pattern 8  
    // float strength8Step1 = mod(vUv.y * 10.0, 1.0);
    // float strength8 = step(0.5, strength8Step1);

    // pattern 9
    // float strength9 = step(0.8, mod(vUv.x * 10.0, 1.0));

    // pattern 10
    // float strength10 = step(0.8, mod(vUv.x * 10.0, 1.0));
    // strength10 += step(0.8, mod(vUv.y * 10.0, 1.0));

    //pattern 11
    // float strength11 = step(0.8, mod(vUv.x * 10.0, 1.0));
    // strength11 *= step(0.8, mod(vUv.y * 10.0, 1.0));
    
    // pattern 12
    // float strength12 = step(0.4, mod(vUv.x * 10.0, 1.0));
    // strength12 *= step(0.8, mod(vUv.y * 10.0, 1.0));

    // pattern 13``
    // float barx = step(0.4, mod(vUv.x * 12.0, 1.0));
    // barx *= step(0.8, mod(vUv.y * 12.0, 1.0));

    // float bary = step(0.8, mod(vUv.x * 12.0, 1.0));
    // bary *= step(0.4, mod(vUv.y * 12.0, 1.0));

    // float strength13 = barx + bary;

    // pattern 14
    // float bar14x = step(0.4, mod(vUv.x * 10.0, 1.0));
    // bar14x *= step(0.8, mod(vUv.y * 10.0 + 0.2, 1.0));

    // float bar14y = step(0.8, mod(vUv.x * 10.0 + 0.2, 1.0));
    // bar14y *= step(0.4, mod(vUv.y * 10.0, 1.0));

    // float strength14 = bar14x + bar14y;

    // pattern 15
    // float strength15 = abs(vUv.x - 0.5);

    // pattern 16
    // float strength16 = min(abs(vUv.x - 0.5), abs(vUv.y - 0.5));
    //pattern 17 
    // float strength = max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)); 

    // pattern 18
    // float strength = step(0.2, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    
    // pattern 19 
    // float strength = step(0.2, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    // strength *= 1.0 - step(0.25, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    
    // pattern 20
    // float strength = floor(vUv.x * 10.0) / 10.0;     
    
    // pattern 21
    // float strength = floor(vUv.x * 10.0) / 10.0;
    // strength *= floor(vUv.y * 10.0) / 10.0;
    
    // pattern 22
    // float strength = random(vUv);
    
    // pattern 23 
    // vec2 gridUv = vec2(
      // floor(vUv.x * 10.0) / 10.0,
      // floor(vUv.y * 10.0) / 10.0
    // );
    // float strength = random(gridUv);
    
    // pattern 24
    // vec2 gridUv = vec2(
      // floor(vUv.x * 10.0) / 10.0,
      // floor(vUv.y * 10.0 + vUv.x * 5.0) / 10.0
    // );
    // float strength = random(gridUv);

    // pattern 25  
    // float strength = length(vUv);
    
    // pattern 26
    float strength = distance(vUv, vec2(0.5));

    gl_FragColor = vec4(strength, strength, strength, 1.0);
  
  }

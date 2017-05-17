var fireworks = function(){
    this.size = 20;
    this.rise();
    }
    fireworks.prototype = {
    color:function(){
    var c = ['0','3','6','9','c','f'];
    var t = [c[Math.floor(Math.random()*100)%6],'0','f'];
    t.sort(function(){return Math.random()>0.5?-1:1;});
    return '#'+t.join('');
    },
    aheight:function(){
    var h = document.documentElement.clientHeight-250;
    return Math.abs(Math.floor(Math.random()*h-200))+201;
    },
    firecracker:function(){
    var b = document.createElement('div');
    var w = document.documentElement.clientWidth;
    b.style.position = 'absolute';
    b.style.color = this.color();
    b.style.bottom = 0;
    b.style.left = Math.floor(Math.random()*w)+1+'px';
    document.body.appendChild(b);
    return b;
    },
    rise:function(){
    var o = this.firecracker();
    var n = this.aheight();
    var c = this.color;
    var e = this.expl;
    var s = this.size;
    var k = n;
    var m = function(){
    o.style.bottom = parseFloat(o.style.bottom)+k*0.1+'px';
    k-=k*0.1;
    if(k<2){
    clearInterval(clear);
    e(o,n,s,c);
    }
    }
    o.innerHTML = '.';
    if(parseInt(o.style.bottom)<n){
    var clear = setInterval(m,20);
    }
    },
    expl:function(o,n,s,c){
    var R=n/3,Ri=n/6,Rii=n/9;
    var r=0,ri=0,rii=0;
    for(var i=0;i<s;i++){
    var span = document.createElement('span');
    var p = document.createElement('i');
    var a = document.createElement('a');
    span.style.position = 'absolute';
    span.style.fontSize = n/10+'px';
    span.style.left = 0;
    span.style.top = 0;
    span.innerHTML = '*';
    p.style.position = 'absolute';
    p.style.left = 0;
    p.style.top = 0;
    p.innerHTML = '*';
    a.style.position = 'absolute';
    a.style.left = 0;
    a.style.top = 0;
    a.innerHTML = '*';
    o.appendChild(span);
    o.appendChild(p);
    o.appendChild(a);
    }
    function spr(){
    r += R*0.1;
    ri+= Ri*0.06;
    rii+= Rii*0.06;
    sp = o.getElementsByTagName('span');
    p = o.getElementsByTagName('i');
    a = o.getElementsByTagName('a');
    for(var i=0; i<sp.length;i++){
    sp[i].style.color = c();
    p[i].style.color = c();
    a[i].style.color = c();
    sp[i].style.left=r*Math.cos(360/s*i)+'px';
    sp[i].style.top=r*Math.sin(360/s*i)+'px';
    sp[i].style.fontSize=parseFloat(sp[i].style.fontSize)*0.96+'px';
    p[i].style.left=ri*Math.cos(360/s*i)+'px';
    p[i].style.top=ri*Math.sin(360/s*i)+'px';
    p[i].style.fontSize=parseFloat(sp[i].style.fontSize)*0.96+'px';
    a[i].style.left=rii*Math.cos(360/s*i)+'px';
    a[i].style.top=rii*Math.sin(360/s*i)+'px';
    a[i].style.fontSize=parseFloat(sp[i].style.fontSize)*0.96+'px';
    }
    R-=R*0.1;
    if(R<2){
    o.innerHTML = '';
    o.parentNode.removeChild(o);
    clearInterval(clearI);
    }
    }
    var clearI = setInterval(spr,20);
    }
    }
    window.onload = function(){
    function happyNewYear(){
    new fireworks();
    }
    setInterval(happyNewYear,1000);
    }
N = -1;

var player, callback, _x, _y, dx, dy, _k, _p, _q, BLACK,

UNIT = 16,
WIDTH = UNIT * UNIT,

board = [],

DIR = [[1,0],[0,1],[N,0],[0,N],[1,1],[1,N],[N,N],[N,1]],

canvas = document.body['children'][0],
context = canvas.getContext("2d");

board['X'] = 3;

canvas.width = canvas.height = WIDTH;

context.font = "64px serif";

for (_ = 8; _ < WIDTH; _ += UNIT) {
    context.fillRect(_, 0, 1, WIDTH);
    context.fillRect(0, _, WIDTH, 1)
}

set(7, 7, 2);

function set(e, f, c) {
    if (board[_ = 0 <= f && f < UNIT && 0 <= e && e < UNIT ? f * UNIT + e : "X"])
        return 1;
    board[_] = c;
    context.beginPath();
    context.arc(_ % UNIT * UNIT + 8, (_ & -UNIT) + 8, 7, 0, 360, 0);
    context.fillStyle = c == 2 ? "#fff" : BLACK = "#000";
    context.fill();
    context.stroke()
}

function repeat(f) {
    DIR.push(DIR.splice(4 + +new Date % 4, 1)[0]);
    [1, 2].map(function(p) {
        player = p;
        DIR.map(function(a) {
            dx = a[0];
            dy = a[1];
            for (x = 0; x < UNIT; ++x)
                for (y = 0; y < UNIT; ++y)
                    f()
        })
    })
}

function test(a) {
    return a.every(function(b, i) {
        _y = y + dy * i;
        _x = x + dx * i;
        return (b ? player : 0) == (board[0 <= _y && _y < UNIT && 0 <= _x && _x < UNIT ? _y * UNIT + _x : "X"] | 0)
    })
}

function check() {
    repeat(function() {
        if (test([1, 1, 1, 1, 1])) {
            context.fillStyle = BLACK;
            context.fillText(player == 1 ? "WIN" : "LOSE", 0, WIDTH);
            set = isNaN
        }
    })
}

canvas.onclick = function(e) {
    if (!set(e.clientX - canvas.offsetLeft >> 4, e.clientY - canvas.offsetTop >> 4, 1)) {
        check();
        [[1,1,0],[2,1,1,0,0,0],[0,0,1,1,1,0],[3,0,1,1,0,1,0],[1,1,0,1,1,1],[2,1,1,0,1,1],[0,0,1,1,1,1],[3,1,0,1,0,1,0,1]].map(function(pattern) {
            _k = pattern.shift();
            repeat(function() {
                if (test(pattern))
                    _p = x + dx * _k,
                    _q = y + dy * _k
            })
        });
        set(_p, _q, 2);
        check()
    }
}

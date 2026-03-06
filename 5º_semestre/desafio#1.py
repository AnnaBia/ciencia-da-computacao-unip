import time
import sys
from collections import deque
from typing import Dict, List, Tuple, Set, Iterable

# ==========================================================
# INTEGRANTES:
# ANA BEATRIZ YUJRA ESPEJO - RA F358CI4
# CAIO HENRIQUE VICENTE SOBRINHO - RA R110370
# CAIO PEREIRA SANTOS DA SILVA - RA G73IEA8
# ==========================================================

# modificando o labirinto com mais obstáculos
maze = [
    list("S..#..."),
    list(".##.#.#"),
    list("..#...#"),
    list("##.##.#"),
    list("...#..G"),
]

def find_char(grid, ch: str) -> Tuple[int, int]:
    for r in range(len(grid)):
        for c in range(len(grid[0])):
            if grid[r][c] == ch:
                return (r, c)
    raise ValueError(f"Caractere {ch} não encontrado.")

# função sucessora com movimentos diagonais
def neighbors(pos: Tuple[int,int], grid) -> Iterable[Tuple[int,int]]:
    r, c = pos
    # movimentos diagonais: (1,1), (1,-1), (-1,1), (-1,-1)
    for dr, dc in [(-1,0), (1,0), (0,-1), (0,1), (-1,-1), (-1,1), (1,-1), (1,1)]:
        nr, nc = r + dr, c + dc
        if 0 <= nr < len(grid) and 0 <= nc < len(grid[0]):
            if grid[nr][nc] != '#':
                yield (nr, nc)

def reconstruct_path(parent: Dict, start, goal) -> List:
    if goal not in parent and goal != start: return []
    path = [goal]
    cur = goal
    while cur != start:
        cur = parent[cur]
        path.append(cur)
    path.reverse()
    return path

# funções de busca com medição
def bfs_grid(grid, start, goal):
    start_time = time.perf_counter() # tempo inicial
    q = deque([start])
    visited = {start}
    parent = {}
    
    while q:
        u = q.popleft()
        if u == goal:
            end_time = time.perf_counter()
            # retorna caminho, tempo e uso de memória da fila
            return reconstruct_path(parent, start, goal), (end_time - start_time), sys.getsizeof(q)
        
        for v in neighbors(u, grid):
            if v not in visited:
                visited.add(v)
                parent[v] = u
                q.append(v)
    return [], 0, 0

def dfs_grid(grid, start, goal):
    start_time = time.perf_counter()
    stack = [start]
    visited = {start}
    parent = {}
    
    while stack:
        u = stack.pop()
        if u == goal:
            end_time = time.perf_counter()
            # retorna caminho, tempo e uso de memória da pilha
            return reconstruct_path(parent, start, goal), (end_time - start_time), sys.getsizeof(stack)
        
        for v in reversed(list(neighbors(u, grid))):
            if v not in visited:
                visited.add(v)
                parent[v] = u
                stack.append(v)
    return [], 0, 0

def print_grid(grid, path):
    g = [row[:] for row in grid]
    for (r,c) in path:
        if g[r][c] not in ("S", "G"): g[r][c] = "*"
    for row in g: print(" ".join(row))

# execução final
start = find_char(maze, "S")
goal = find_char(maze, "G")

path_bfs, tempo_bfs, mem_bfs = bfs_grid(maze, start, goal)
path_dfs, tempo_dfs, mem_dfs = dfs_grid(maze, start, goal)

print("=== COMPARAÇÃO BFS vs DFS (Com Diagonais) ===")
print(f"\nBFS - Passos: {len(path_bfs)} | Tempo: {tempo_bfs:.6f}s | Memória: {mem_bfs} bytes")
print_grid(maze, path_bfs)

print(f"\nDFS - Passos: {len(path_dfs)} | Tempo: {tempo_dfs:.6f}s | Memória: {mem_dfs} bytes")
print_grid(maze, path_dfs)

---
output:
  pdf_document: 
    number_sections: yes
    fig_caption: yes
  html_document: 
    number_sections: yes
---
# Python

## Vergleiche

```python
# Instead of
if A == True:
	print("Die Aussage A ist wahr.")

if B == False:
	print("Die Aussage A ist falsch.")

# use
if A:
	print("Die Aussage A ist wahr.")

if not B:
	print("Die Aussage B ist falsch.")
```

## Lists
```python
pokemons = {1: "Bisasam", 2: "Bisaknosp", 3: "Bisaflor"}
```

```python
# Instead of
if len(pokemons) != 0:
	print(pokemons)

# use
if pokemons:
	print(pokemons)
```

```python
# Instead of
for nr in pokemons:
	pokemon = pokemons[nr]
	print(f"{nr}:{pokemon}")

# use
for nr, pokemon in pokemons.items():
	print(f"{nr}:{pokemon}")
```

```python
# Instead of
for i in range(len(pokemons)):
	print(pokemons[i])

# use
for pokemon in pokemons:
	print(pokemons)
```

```python
# Instead of
nr = 1
for pokemon in pokemons:
	print(f"{nr}:{pokemon}")
	nr += 1

# use
nr = 1
for nr, pokemon in enumerate(pokemons):
	print(f"{nr+1}:{pokemon}")
```

## Matrices
```python
# Instead of
v = (1, 0, -1)
x = v[0]
y = v[1]
z = v[2]

print(f"x={x}, y={y}, z={z}")

# use
v = (1, 0, -1)
x, y, z = v

print(f"x={x}, y={y}, z={z}")
```

## Context-Manager
```python
# Instead of
f = open("file.txt", "w")
f.write("Hallo Welt")
f.close() #Schliessen ist hier unbedingt notwendig

# use
with open("file.txt", "w") as f:
	f.write("Hallo Welt")
```

```python
# Instead of
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
try:
	s.connect((host, port))
finally:
	s.close()

# use
socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
	s.connect((host, port))
```

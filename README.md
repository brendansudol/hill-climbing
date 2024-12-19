**`(Literal) Hill Climbing`**

This project helps identify steep cycling routes around a given area. It uses the [OSMnx](https://github.com/gboeing/osmnx) library to pull OpenStreetMap data, add elevation data, and analyze the local terrain for challenging climbs.

**`Notebooks`**

- **01-map-the-terrain.ipynb**: Loads and enhances street data with elevation info and saves graph for subsequent analyses.
- **02-identify-steep-climbs.ipynb**: Finds routes that meet steepness and length criteria via graph search algo and visualizes routes on a map.
- **03-parameter-variations-and-results.ipynb**: Explores various parameters (like gradient or distance) and saves resulting routes to JSON.

**`Set-up`**

First, clone this repo and provide a `.env` file with your Google Elevation API key.

Then, use the included `Makefile` to build and run a Docker container:

```bash
make build
make run
```

Finally, navigate to `http://localhost:8888` and explore & extend the notebooks.

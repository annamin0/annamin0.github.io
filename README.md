# Anna Min — Academic Website

Static source for [anna-min.com](https://anna-min.com/), hosted with GitHub Pages.

## Structure

- `index.html` and `stylesheet.css`: academic homepage
- `images/`: assets used by the homepage
- `paper/`: papers and the `slinthewild` project page
- `mipnerf/`, `mipnerf360/`, and `zipnerf/`: standalone project pages retained at their existing paths
- `update_commit_time.sh`: updates the homepage footer from the latest Git commit

There is no build step. To preview the site locally:

```sh
python3 -m http.server 8000
```

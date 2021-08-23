# Spotify Types

**Module Documentation Reference:** https://spotify-api.js.org/apiTypes/<br/>
**Spotify Object Index Reference:** https://developer.spotify.com/documentation/web-api/reference/#objects-index

All the typings for the various Spotify API Object typings written in typescript. You can view the Spotify web api reference for all the objects [here](https://developer.spotify.com/documentation/web-api/reference/#objects-index).

This is a typings modules made for [Spotify-api.js](https://github.com/spotify-api/spotify-api.js) v9. This can also be used separately just for typescript debugging when working with Spotify API. This package can be even used in deno using the cdn urls.

```ts
import { SearchContent } from "spotify-types";
import axios, { AxiosResponse } from "axios";

const response: AxiosResponse<SearchContent> = await axios.get('https://api.spotify.com/v1/search', {
    headers: { "Authorization": "Bearer " + process.env.SPOTIFY_TOKEN },
    params: {
        q: "search query",
        type: "track",
        market: "US"
    }
});
```
/**
 * All the spotify element types
 */
export type SpotifyType = 'user' | 'episode' | 'playlist' | 'show' | 'track' | 'album' | 'artist';

/**
 * The spotify object containing the details of an image.
 * 
 * @see https://developer.spotify.com/documentation/web-api/reference/#object-imageobject
 */
export interface Image {
    /** The image height in pixels. If unknown: null or not returned. */
    height: number;
    /** The source URL of the image. */
    url: string;
    /** The image width in pixels. If unknown: null or not returned. */
    width: number;
}

/**
 * The external urls object which contains the spotify url within it.
 * 
 * @see https://developer.spotify.com/documentation/web-api/reference/#object-externalurlobject
 */
export interface ExternalUrl {
    /** The Spotify URL for the object. */
    spotify: string;
}

/**
 * The paging object is a form of collection of items from the spotify api.
 * 
 * @see https://developer.spotify.com/documentation/web-api/reference/#object-pagingobject
 */
export interface Paging<T> {
    /** A link to the Web API endpoint returning the full result of the request. */
    href: string;
    /** The requested data. */
    items: T[];
    /** The maximum number of items in the response (as set in the query or by default). */
    limit: number;
    /** URL to the next page of items. (null if none) */
    next: string;
    /** The offset of the items returned (as set in the query or by default) */
    offset: number;
    /** URL to the previous page of items. (null if none) */
    previous: string;
    /** The total number of items available to return. */
    total: number;
}
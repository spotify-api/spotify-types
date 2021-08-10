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
import { SpotifyType } from "./global";

/**
 * The structure of the spotify linked track object.
 */
export interface LinkedTrack {
    /** A map of url name and the url. */
    externalUrls: Record<string, string>;
    /** The api url where you can get the full details of the linked track. */
    href: string;
    /** The id of the linked track. */
    id: string;
    /** The type of spotify object. */
    type: SpotifyType;
    /** The uri of this object. */
    uri: string;
    /** A function which generates a code image for this linked track. */
    makeCodeImage(color?: string): string;
}
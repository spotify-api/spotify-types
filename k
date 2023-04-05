import { Artist, SimplifiedArtist } from "./artist";
import { SimplifiedAlbum } from "./album";
import { ExternalUrl, SpotifyType, Restriction, ExternalID, Saved } from "./global";

/**
 * The saved track object.
 */
export type SavedTrack = Saved<'track', Track>;

/**
 * The structure containing the simplified details of the Spotify Track.
 * 
 * @see https://developer.spotify.com/documentation/web-api/reference/#object-simplifiedtrackobject
 */
export interface SimplifiedTrack {
    /** The artists who performed the track. Each artist object includes a link in href to more detailed information about the artist. */
    artists: SimplifiedArtist[];
    /** A list of the countries in which the track can be played. */
    available_markets?: string[];
    /** The disc number (usually 1 unless the album consists of more than one disc). */
    disc_number: number;
    /** The track length in milliseconds. */
    duration_ms: number;
    /** Whether or not the track has explicit lyrics ( true = yes it does; false = no it does not OR unknown). */
    explicit: boolean;
    /** External URLs for this track. */
    external_urls: ExternalUrl;
    /** A link to the Web API endpoint providing full details of the track. */
    href: string;
    /** The Spotify ID for the track. */
    id: string;
    /** Whether or not the track is from a local file. */
    is_local: boolean;
    /** Part of the response when Track Relinking is applied. If true , the track is playable in the given market. Otherwise false. */
    is_playable?: boolean;
    /** Part of the response when Track Relinking is applied and is only part of the response if the track linking, in fact, exists. */
    linked_from?: LinkedTrack;
    /** The name of the track. */
    name: string;
    /** A URL to a 30 second preview (MP3 format) of the track. */
    preview_url: string;
    /** Included in the response when a content restriction is applied. */
    restrictions: Restriction[];
    /** The number of the track. If an album has several discs, the track number is the number on the specified disc. */
    track_number: number;
    /** The object type: “track”. */
    type: SpotifyType;
    /** The Spotify URI for the track. */
    uri: string;
}

/**
 * The structure containing the brief details of the Spotify Track.
 * 
 * @see https://developer.spotify.com/documentation/web-api/reference/#object-trackobject
 */
export interface Track extends SimplifiedTrack {
    /** The album on which the track appears.  */
    album: SimplifiedAlbum;
    /** The artists who performed the track. Each artist object includes a link in href to more detailed information about the artist. */
    artists: Artist[];
    /** Known external IDs for the track. */
    external_ids: ExternalID;
    /** The popularity of the track. The value will be between 0 and 100, with 100 being the most popular. */
    popularity: number;
}

/**
 * The structure of the spotify linked track object.
 * 
 * @see https://developer.spotify.com/documentation/web-api/reference/#object-linkedtrackobject
 */
export interface LinkedTrack {
    /** A map of url name and the url. */
    external_urls: ExternalUrl;
    /** The api url where you can get the full details of the linked track. */
    href: string;
    /** The id of the linked track. */
    id: string;
    /** The type of spotify object. */
    type: SpotifyType;
    /** The uri of this object. */
    uri: string;
}

/**
 * An object containing all the features of the audio.
 * 
 * @see https://developer.spotify.com/documentation/web-api/reference/#object-audiofeaturesobject
 */
export interface AudioFeatures extends Omit<TuneableTrack, 'popularity'> {
    /** An HTTP URL to access the full audio analysis of this track. An access token is required to access this data. */
    analysis_url: string;
    /** The Spotify ID of the track. */
    id: string;
    /** A link to the Web API endpoint providing full details of the track. */
    track_href: string;
    /** The object type: “audio_features” */
    type: string;
    /** The Spotify URI for the track. */
    uri: string;
}

/**
 * The tuneable track object.
 * 
 * @see https://developer.spotify.com/documentation/web-api/reference/#object-tuneabletrackobject
 */
export interface TuneableTrack {
    /** A confidence measure from 0.0 to 1.0 of whether the track is acoustic. 1.0 represents high confidence the track is acoustic. */
    acousticness: number;
    /** Danceability describes how suitable a track is for dancing based on a combination of musical elements including tempo, rhythm stability, beat strength, and overall regularity. A value of 0.0 is least danceable and 1.0 is most danceable. */
    danceability: number;
    /** The duration of the track in milliseconds. */
    duration_ms: number;
    /** Energy is a measure from 0.0 to 1.0 and represents a perceptual measure of intensity and activity. */
    energy: number;
    /** Predicts whether a track contains no vocals. “Ooh” and “aah” sounds are treated as instrumental in this context. Rap or spoken word tracks are clearly “vocal”. */
    instrumentalness: number;
    /** The key the track is in. Integers map to pitches using standard Pitch Class notation. */
    key: number;
    /** Detects the presence of an audience in the recording. Higher liveness values represent an increased probability that the track was performed live. */
    liveness: number;
    /** The overall loudness of a track in decibels (dB). */
    loudness: number;
    /** Mode indicates the modality (major or minor) of a track, the type of scale from which its melodic content is derived. Major is represented by 1 and minor is 0. */
    mode: number;
    /** The popularity of the track. The value will be between 0 and 100, with 100 being the most popular. */
    popularity: number;
    /** Speechiness detects the presence of spoken words in a track. */
    speechiness: number;
    /** The overall estimated tempo of a track in beats per minute (BPM). */
    tempo: number;
    /** An estimated overall time signature of a track. */
    time_signature: number;
    /** A measure from 0.0 to 1.0 describing the musical positiveness conveyed by a track. */
    valence: number;
}

/**
 * Time interval object of [TrackAudioAnalysis].
 * No documentation found for the object.
 */
export interface TimeInterval {
    start: number;
    duration: number;
    confidence: number;
}

/**
 * The element structure of the array of [AudioAnalysis.sections] property.
 * No documentation found for the object.
 */
export interface AudioSection {
    start: number;
    duration: number;
    confidence: number;
    loudness: number;
    tempo: number;
    tempo_confidence: number;
    key: number;
    key_confidence: number;
    mode: number;
    mode_confidence: number;
    time_signature: number;
    time_signature_confidence: number;
}

/**
 * The element structure of the array of [AudioAnalysis.segments] property.
 * No documentation found for the object.
 */
export interface AudioSegment {
    start: number;
    duration: number;
    confidence: number;
    loudness_start: number;
    loudness_max: number;
    loudness_max_time: number;
    loudness_end: number;
    pitches: number[];
    timbre: number[];
}

/**
 * The object structure of [AudioAnalysis.track] property.
 * No documentation found for the object.
 */
export interface AudioTrack {
    duration: number;
    sample_md5: string;
    offset_seconds: number;
    window_seconds: number;
    analysis_sample_rate: number;
    analysis_channels: number;
    end_of_fade_in: number;
    start_of_fade_out: number;
    loudness: number;
    tempo: number;
    tempo_confidence: number;
    time_signature: number;
    time_signature_confidence: number;
    key: number;
    key_confidence: number;
    mode: number;
    mode_confidence: number;
    codestring: string;
    code_version: number;
    echoprintstring: string;
    echoprint_version: number;
    synchstring: string;
    synch_version: number;
    rhythmstring: string;
    rhythm_version: number;
}

/**
 * The object structure returned by [/audio-analysis/{id}] endpoint.
 * No documentation found for the object.
 */
export interface AudioAnalysis {
    bars: TimeInterval[];
    beats: TimeInterval[];
    tatums: TimeInterval[];
    sections: AudioSection[];
    segments: AudioSegment[];
    track: AudioTrack;
}
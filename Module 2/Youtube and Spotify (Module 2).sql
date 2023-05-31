



/*
1.Which is the most viewed song track on youtube?
*/

SELECT
    Track,
    max(Views) as views
FROM cleaned_dataset
where most_playedon='Youtube'
Group By Track
Order by views desc
limit 1


/*
2. Which Song track is streamed most on Spotify?

*/


SELECT
    Track,
    max(Stream) as stream
FROM cleaned_dataset
WHERE most_playedon = 'Spotify'
GROUP BY Track
Order BY stream desc
limit 1


/*

3. EnergyLiveness ratio is one of the popular ways to measure the quality of a song, which are the top 5 songs that have the highest energyliveness ratio.

*/


SELECT
    Track,
    max(EnergyLiveness) AS EnergyLiveness
FROM cleaned_dataset
GROUP BY Track
ORDER BY EnergyLiveness DESC
LIMIT 5


/*

4. Let us assume a situation where an artist named Black Eyed Peas wants to analyze his songs. 
The artist wants to know which platform is capable of keeping his song track more engaged. 
To check this he assigns you this task and wants you to report to him where his song tracks are more played on. 
compare the platforms.

*/

SELECT
most_playedon,
count(Track)

FROM cleaned_dataset
WHERE Artist ='Black Eyed Peas'
GROUP BY most_playedon


/*

5. Gorillaz wants to know their most liked song on youtube. Report to them with their most liked song along with the Energy and Tempo of the song.

*/

SELECT
    Track,
    max(Likes),
    Energy,
    Tempo
FROM cleaned_dataset
WHERE Artist = 'Gorillaz'


/*

6. Which Album types are more prominent on Spotify?
*/

SELECT
    Album_type,
    COUNT(Album_type)
FROM cleaned_dataset
GROUP BY Album_type


/*
7. Spotify's most loved song tracks are to be declared soon. Help Spotify choose the top 5 most streamed+youtube viewed song track.
*/

SELECT
    Track,
    Views+Stream as total
FROM cleaned_dataset
GROUP BY Track
ORDER BY total desc
LIMIT 5






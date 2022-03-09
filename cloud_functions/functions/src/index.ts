import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';
import algoliasearch from 'algoliasearch';

admin.initializeApp();
const env = functions.config();

const client = algoliasearch(env.algolia.appid, env.algolia.apikey);
const eventIndex = client.initIndex('events');
const clubIndex = client.initIndex('clubs');
const eventPath = 'events/{eventId}'
const clubsPath = 'clubs/{clubId}'


exports.addEvent = functions.firestore
    .document(eventPath)
    .onCreate((snap, _) => {
        const data = snap.data();
        data.objectID = snap.id;
        return eventIndex.saveObject(data);
    });

exports.deleteEvent = functions.firestore
    .document(eventPath)
    .onDelete((snap, _) =>
        eventIndex.deleteObject(snap.id),
    );


exports.updateEvent = functions.firestore
    .document(eventPath)
    .onUpdate((change, _) => {
        const afterUpdate = change.after.data();
        afterUpdate.objectID = change.after.id;
        return eventIndex.saveObject(afterUpdate);
    })

exports.addClub = functions.firestore
    .document(clubsPath)
    .onCreate((snap, _) => {
        const data = snap.data();
        data.objectID = snap.id;
        return clubIndex.saveObject(data)
    });

exports.deleteClub = functions.firestore
    .document(clubsPath)
    .onDelete((snap, _) => {
        clubIndex.deleteObject(snap.id)
    });

exports.updateClub = functions.firestore
    .document(clubsPath)
    .onUpdate((change, _) => {
        const afterUpdate = change.after.data();
        afterUpdate.objectID = change.after.id;
        return clubIndex.saveObject(afterUpdate)
    });



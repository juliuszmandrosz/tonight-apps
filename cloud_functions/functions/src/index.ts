import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';
import algoliasearch from 'algoliasearch';

admin.initializeApp();
const env = functions.config();

const client = algoliasearch(env.algolia.appid, env.algolia.apikey);
const eventIndex = client.initIndex('events');
const eventPath = 'events/{eventId}'


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




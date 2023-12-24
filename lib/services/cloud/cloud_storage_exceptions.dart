class CloudStorageException implements Exception {
  const CloudStorageException();
}

//ERROR EXCEPTION FOR CREATE NOTES
class CouldNotCreateNoteException implements CloudStorageException {}

//ERROR EXCEPTION FOR READ NOTES
class CouldNotGetAllNotesException implements CloudStorageException {}

//ERROR EXCEPTION FOR UPDATE NOTES
class CouldNotUpdateNoteException implements CloudStorageException {}

//ERROR EXCEPTION FOR DELETE NOTES
class CouldNotDeleteNoteException implements CloudStorageException {}

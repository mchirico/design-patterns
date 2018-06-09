import com.google.api.core.ApiFuture;
import com.google.cloud.firestore.DocumentReference;
import com.google.cloud.firestore.WriteResult;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.firestore.Firestore;
import com.google.firebase.cloud.FirestoreClient;


public class FireBaseExample {

    // Disable java 9 warnings...
    void disableWarning() {
        System.err.close();
        System.setErr(System.out);
    }

    FireBaseExample() {
        disableWarning();
    }

    void init() {
        try {
            // Use a service account
            InputStream serviceAccount = new FileInputStream(System.getProperty("user.home") +
                    "/.google_java_firebase/septa.json");

            GoogleCredentials credentials = GoogleCredentials.fromStream(serviceAccount);
            FirebaseOptions options = new FirebaseOptions.Builder()
                    .setCredentials(credentials)
                    .build();
            FirebaseApp.initializeApp(options);
            Firestore db = FirestoreClient.getFirestore();

            DocumentReference docRef = db.collection("users").document("alovelace");

            Map<String, Object> data = new HashMap<>();
            data.put("first", "This is java test");
            data.put("last", "Lovelace");
            data.put("born", 1815);

            ApiFuture<WriteResult> result = docRef.set(data);
            System.out.println("Update time : " + result.get().getUpdateTime());


        } catch (Exception e) {
            System.out.println(e);
        }

    }


}

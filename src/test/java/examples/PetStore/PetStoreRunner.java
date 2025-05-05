package examples.PetStore;

import com.intuit.karate.junit5.Karate;

class PetStoreRunner {

    @Karate.Test
    Karate testPetStore() {
        return Karate.run("full_flow_pet")
                .relativeTo(getClass());
    }
}
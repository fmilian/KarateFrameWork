package RickAndMorty;

import com.intuit.karate.junit5.Karate;

class RickyMortyTest {

    @Karate.Test
    Karate testAll() {
        return Karate.run()
                .tags("@all")
                .relativeTo(getClass());
    }

    @Karate.Test
    Karate testTags() {
        return Karate.run()
                .tags("@morty-get, @rick-get")
                .relativeTo(getClass());
    }
}
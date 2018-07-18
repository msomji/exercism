import org.junit.Before;
import org.junit.Test;

public class FooTest {
    private Foo underTest;

    @Before
    public void before() {
        underTest = new Foo();
    }

    @Test
    public void shouldDoHappy() {

        assert(underTest.bar()).equals("yay");
    }
}

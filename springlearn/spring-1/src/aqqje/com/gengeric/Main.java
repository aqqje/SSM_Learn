package aqqje.com.gengeric;import org.springframework.context.ApplicationContext;import org.springframework.context.support.ClassPathXmlApplicationContext;/** * Spring 4.x 中可以为子类注入子类对应的泛型类型的成员变量的引用 */public class Main{    public static void main(String[] args) {        ApplicationContext context = new ClassPathXmlApplicationContext("beans-gengeric.xml");        UserService userService = (UserService)context.getBean("userService");        userService.add();    }}
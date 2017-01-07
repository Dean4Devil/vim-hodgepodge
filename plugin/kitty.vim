scriptencoding utf-8
" Variables {{{1
let s:kitty = [
      \ '      o',
      \ '       o',
      \ "        (\"`-'  '—/\") .___..--' ' \"`-._",
      \ '          ` *_ *  )    `-.   (      ) .`-.__. `)',
      \ "          (_Y_.) ' ._   )   `._` ;  `` -. .-'",
      \ "       _.. `--'_..-_/   /--' _ .' ,4",
      \ "    ( i l ),-''  ( l i),'  ( ( ! .-'"
      \ ]

let s:quotes = [
      \ ["If you don't fail at least 90% of the time, you're not aiming high enough.", '', '— Alan Kay'],
      \ ['I think a lot of new programmers like to use advanced data structures and advanced language features as a way of demonstrating their ability. I call it the lion-tamer syndrome. Such demonstrations are impressive, but unless they actually translate into real wins for the project, avoid them.', '', '— Glyn Williams'],
      \ ['If a system is to serve the creative spirit, it must be entirely comprehensible to a single individual.'],
      \ ["The computing scientist's main challenge is not to get confused by the complexities of his own making.", '', '— E. W. Dijkstra'],
      \ ["Progress in a fixed context is almost always a form of optimization. Creative acts generally don't stay in the context that they are in.", '', '— Alan Kay'],
      \ ['The essence of XML is this: the problem it solves is not hard, and it does not solve the problem well.', '', '— Phil Wadler'],
      \ ['A good programmer is someone who always looks both ways before crossing a one-way street.', '', '— Doug Linder'],
      \ ['Patterns mean "I have run out of language."', '', '— Rich Hickey'],
      \ ['Always code as if the person who ends up maintaining your code is a violent psychopath who knows where you live.', '', '— John Woods'],
      \ ['Unix was not designed to stop its users from doing stupid things, as that would also stop them from doing clever things.'],
      \ ['Contrary to popular belief, Unix is user friendly. It just happens to be very selective about who it decides to make friends with.'],
      \ ['Perfection is achieved, not when there is nothing more to add, but when there is nothing left to take away.'],
      \ ['There are two ways of constructing a software design: One way is to make it so simple that there are obviously no deficiencies, and the other way is to make it so complicated that there are no obvious deficiencies.', '', '— C.A.R. Hoare'],
      \ ["If you don't make mistakes, you're not working on hard enough problems.", '', '— Frank Wilczek'],
      \ ["If you don't start with a spec, every piece of code you write is a patch.", '', '— Leslie Lamport'],
      \ ['Caches are bugs waiting to happen.', '', '— Rob Pike'],
      \ ['Abstraction is not about vagueness, it is about being precise at a new semantic level.', '', '— Dijkstra'],
      \ ["dd is horrible on purpose. It's a joke about OS/360 JCL. But today it's an internationally standardized joke. I guess that says it all.", '', '— Rob Pike'],
      \ ['All loops are infinite ones for faulty RAM modules.'],
      \ ['All idioms must be learned. Good idioms only need to be learned once.', '', '— Alan Cooper'],
      \ ['For a successful technology, reality must take precedence over public relations, for Nature cannot be fooled.', '', '— Richard Feynman'],
      \ ['If programmers were electricians, parallel programmers would be bomb disposal experts. Both cut wires.', '', '— Bartosz Milewski'],
      \ ['Computers are harder to maintain at high altitude. Thinner air means less cushion between disk heads and platters. Also more radiation.'],
      \ ['Almost every programming language is overrated by its practitioners.', '', '— Larry Wall'],
      \ ['Fancy algorithms are slow when n is small, and n is usually small.', '', '— Rob Pike'],
      \ ['Methods are just functions with a special first argument.', '', '— Andrew Gerrand'],
      \ ['Care about your craft.', '', 'Why spend your life developing software unless you care about doing it well?'],
      \ ["Provide options, don't make lame excuses.", '', "Instead of excuses, provide options. Don't say it can't be done; explain what can be done."],
      \ ['Be a catalyst for change.', '', "You can't force change on people. Instead, show them how the future might be and help them participate in creating it."],
      \ ['Make quality a requirements issue.', '', "Involve your users in determining the project's real quality requirements."],
      \ ['Critically analyze what you read and hear.', '', "Don't be swayed by vendors, media hype, or dogma. Analyze information in terms of you and your project."],
      \ ["DRY - Don't Repeat Yourself.", '', 'Every piece of knowledge must have a single, unambiguous, authoritative representation within a system.'],
      \ ['Eliminate effects between unrelated things.', '', 'Design components that are self-contained, independent, and have a single, well-defined purpose.'],
      \ ['Program close to the problem domain.', '', "Design and code in your user's language."],
      \ ['Iterate the schedule with the code.', '', 'Use experience you gain as you implement to refine the project time scales.'],
      \ ['Use the power of command shells.', '', "Use the shell when graphical user interfaces don't cut it."],
      \ ['Always use source code control.', '', 'Source code control is a time machine for your work - you can go back.'],
      \ ["Don't panic when debugging", '', 'Take a deep breath and THINK! about what could be causing the bug.'],
      \ ["Don't assume it - prove it.", '', 'Prove your assumptions in the actual environment - with real data and boundary conditions.'],
      \ ['Write code that writes code.', '', 'Code generators increase your productivity and help avoid duplication.'],
      \ ['Design With contracts.', '', 'Use contracts to document and verify that code does no more and no less than it claims to do.'],
      \ ['Use assertions to prevent the impossible.', '', 'Assertions validate your assumptions. Use them to protect your code from an uncertain world.'],
      \ ['Finish what you start.', '', 'Where possible, the routine or object that allocates a resource should be responsible for deallocating it.'],
      \ ["Configure, don't integrate.", '', 'Implement technology choices for an application as configuration options, not through integration or engineering.'],
      \ ['Analyze workflow to improve concurrency.', '', "Exploit concurrency in your user's workflow."],
      \ ['Always design for concurrency.', '', "Allow for concurrency, and you'll design cleaner interfaces with fewer assumptions."],
      \ ['Use blackboards to coordinate workflow.', '', 'Use blackboards to coordinate disparate facts and agents, while maintaining independence and isolation among participants.'],
      \ ['Estimate the order of your algorithms.', '', 'Get a feel for how long things are likely to take before you write code.'],
      \ ['Refactor early, refactor often.', '', 'Just as you might weed and rearrange a garden, rewrite, rework, and re-architect code when it needs it. Fix the root of the problem.'],
      \ ['Test your software, or your users will.', '', "Test ruthlessly. Don't make your users find bugs for you."],
      \ ["Don't gather requirements - dig for them.", '', "Requirements rarely lie on the surface. They're buried deep beneath layers of assumptions, misconceptions, and politics."],
      \ ['Abstractions live longer than details.', '', 'Invest in the abstraction, not the implementation. Abstractions can survive the barrage of changes from different implementations and new technologies.'],
      \ ["Don't think outside the box - find the box.", '', 'When faced with an impossible problem, identify the real constraints. Ask yourself: "Does it have to be done this way? Does it have to be done at all?"'],
      \ ['Some things are better done than described.', '', "Don't fall into the specification spiral - at some point you need to start coding."],
      \ ["Costly tools don't produce better designs.", '', 'Beware of vendor hype, industry dogma, and the aura of the price tag. Judge tools on their merits.'],
      \ ["Don't use manual procedures.", '', 'A shell script or batch file will execute the same instructions, in the same order, time after time.'],
      \ ["Coding ain't done 'til all the Tests run.", '', "'Nuff said."],
      \ ['Test state coverage, not code coverage.', '', "Identify and test significant program states. Just testing lines of code isn't enough."],
      \ ['English is just a programming language.', '', 'Write documents as you would write code: honor the DRY principle, use metadata, MVC, automatic generation, and so on.'],
      \ ["Gently exceed your users' expectations.", '', "Come to understand your users' expectations, then deliver just that little bit more."],
      \ ['Think about your work.', '', 'Turn off the autopilot and take control. Constantly critique and appraise your work.'],
      \ ["Don't live with broken windows.", '', 'Fix bad designs, wrong decisions, and poor code when you see them.'],
      \ ['Remember the big picture.', '', "Don't get so engrossed in the details that you forget to check what's happening around you."],
      \ ['Invest regularly in your knowledge portfolio.', '', 'Make learning a habit.'],
      \ ["It's both what you say and the way you say it.", '', "There's no point in having great ideas if you don't communicate them effectively."],
      \ ['Make it easy to reuse.', '', "If it's easy to reuse, people will. Create an environment that supports reuse."],
      \ ['There are no final decisions.', '', 'No decision is cast in stone. Instead, consider each as being written in the sand at the beach, and plan for change.'],
      \ ['Prototype to learn.', '', 'Prototyping is a learning experience. Its value lies not in the code you produce, but in the lessons you learn.'],
      \ ['Estimate to avoid surprises.', '', "Estimate before you start. You'll spot potential problems up front."],
      \ ['Keep knowledge in plain text.', '', "Plain text won't become obsolete. It helps leverage your work and simplifies debugging and testing."],
      \ ['Use a single editor well.', '', 'The editor should be an extension of your hand; make sure your editor is configurable, extensible, and programmable.'],
      \ ['Fix the problem, not the blame.', '', "It doesn't really matter whether the bug is your fault or someone else's - it is still your problem, and it still needs to be fixed."],
      \ ["\"select\" isn't broken.", '', 'It is rare to find a bug in the OS or the compiler, or even a third-party product or library. The bug is most likely in the application.'],
      \ ['Learn a text manipulation language.', '', 'You spend a large part of each day working with text. Why not have the computer do some of it for you?'],
      \ ["You can't write perfect software.", '', "Software can't be perfect. Protect your code and users from the inevitable errors."],
      \ ['Crash early.', '', 'A dead program normally does a lot less damage than a crippled one.'],
      \ ['Use exceptions for exceptional problems.', '', 'Exceptions can suffer from all the readability and maintainability problems of classic spaghetti code. Reserve exceptions for exceptional things.'],
      \ ['Minimize coupling between modules.', '', 'Avoid coupling by writing "shy" code and applying the Law of Demeter.'],
      \ ['Put abstractions in code, details in metadata.', '', 'Program for the general case, and put the specifics outside the compiled code base.'],
      \ ['Design using services.', '', 'Design in terms of services-independent, concurrent objects behind well-defined, consistent interfaces.'],
      \ ['Separate views from models.', '', 'Gain flexibility at low cost by designing your application in terms of models and views.'],
      \ ["Don't program by coincidence.", '', "Rely only on reliable things. Beware of accidental complexity, and don't confuse a happy coincidence with a purposeful plan."],
      \ ['Test your estimates.', '', "Mathematical analysis of algorithms doesn't tell you everything. Try timing your code in its target environment."],
      \ ['Design to test.', '', 'Start thinking about testing before you write a line of code.'],
      \ ["Don't use wizard code you don't understand.", '', 'Wizards can generate reams of code. Make sure you understand all of it before you incorporate it into your project.'],
      \ ['Work with a user to think like a user.', '', "It's the best way to gain insight into how the system will really be used."],
      \ ['Use a project glossary.', '', 'Create and maintain a single source of all the specific terms and vocabulary for a project.'],
      \ ["Start when you're ready.", '', "You've been building experience all your life. Don't ignore niggling doubts."],
      \ ["Don't be a slave to formal methods.", '', "Don't blindly adopt any technique without putting it into the context of your development practices and capabilities."],
      \ ['Organize teams around functionality.', '', "Don't separate designers from coders, testers from data modelers. Build teams the way you build code."],
      \ ['Test early. Test often. Test automatically.', '', 'Tests that run with every build are much more effective than test plans that sit on a shelf.'],
      \ ['Use saboteurs to test your testing.', '', 'Introduce bugs on purpose in a separate copy of the source to verify that testing will catch them.'],
      \ ['Find bugs once.', '', 'Once a human tester finds a bug, it should be the last time a human tester finds that bug. Automatic tests should check for it from then on.'],
      \ ['Sign your work.', '', 'Craftsmen of an earlier age were proud to sign their work. You should be, too.'],
      \ ['We toast the Lisp programmer who pens his thoughts within nests of parentheses.', '', '— Alan Perlis'],
      \ ["Both knowledge and wisdom extend man's reach. Knowledge led to computers, wisdom to chopsticks.", '', '— Alan Perlis'],
      \ ["There is an appreciated substance to the phrase 'ALGOL-like' which is often used in arguments about programming, languages and computation. ALGOL appears to be a durable model, and even flourishes under surgery — be it explorative, plastic, or amputative.", '', '— Alan Perlis'],
      \ ['The vision we have of conversational programming takes in much more than rapid turn around time and convenient debugging aids: our most interesting programs are never wrong and never final. [...] What is new is the requirement to make variable in our languages what we had previously taken as fixed. I do not refer to new data classes now, but to variables whose values are programs or parts of programs, syntax or parts of syntax, and regimes of control.', '', '— Alan Perlis'],
      \ ['This language [LISP] induces humorous arguments among programmers, often being damned and praised for the same feature.', '', '— Alan Perlis'],
      \ ['Programmers should never be satisfied with languages which permit them to program everything, but to program nothing of interest easily.', '', '— Alan Perlis'],
      \ ['Computer science is a restless infant and its progress depends as much on shifts in point of view as on the orderly development of our current concepts.', '', '— Alan Perlis'],
      \ ["One man's constant is another man's variable.", '', '— Alan Perlis'],
      \ ['Syntactic sugar causes cancer of the semi-colons.', '', '— Alan Perlis'],
      \ ['A programming language is low level when its programs require attention to the irrelevant.', '', '— Alan Perlis'],
      \ ['If you have a procedure with 10 parameters, you probably missed some.', '', '— Alan Perlis'],
      \ ["Every program has (at least) two purposes: the one for which it was written and another for which it wasn't.", '', '— Alan Perlis'],
      \ ["A language that doesn't affect the way you think about programming, is not worth knowing.", '', '— Alan Perlis'],
      \ ['Simplicity does not precede complexity, but follows it.', '', '— Alan Perlis'],
      \ ['A picture is worth 10K words - but only those to describe the picture. Hardly any sets of 10K words can be adequately described with pictures.', '', '— Alan Perlis'],
      \ ['Some programming languages manage to absorb change, but withstand progress.', '', '— Alan Perlis'],
      \ ["You can measure a programmer's perspective by noting his attitude on the continuing vitality of FORTRAN.", '', '— Alan Perlis'],
      \ ['LISP programmers know the value of everything and the cost of nothing.', '', '— Alan Perlis'],
      \ ['It is easier to change the specification to fit the program than vice versa.', '', '— Alan Perlis'],
      \ ['Fools ignore complexity. Pragmatists suffer it. Some can avoid it. Geniuses remove it.', '', '— Alan Perlis'],
      \ ['In English every word can be verbed. Would that it were so in our programming languages.', '', '— Alan Perlis'],
      \ ['Often it is means that justify ends: Goals advance technique and technique survives even when goal structures crumble.', '', '— Alan Perlis'],
      \ ['The computing field is always in need of new cliches: Banality sooths our nerves.', '', '— Alan Perlis'],
      \ ['A year spent in artificial intelligence is enough to make one believe in God.', '', '— Alan Perlis'],
      \ ['Prolonged contact with the computer turns mathematicians into clerks and vice versa.', '', '— Alan Perlis'],
      \ ["Don't have good ideas if you aren't willing to be responsible for them.", '', '— Alan Perlis'],
      \ ["Dealing with failure is easy: Work hard to improve. Success is also easy to handle: You've solved the wrong problem. Work hard to improve.", '', '— Alan Perlis'],
      \ ['You think you know when you learn, are more sure when you can write, even more when you can teach, but certain when you can program.', '', '— Alan Perlis'],
      \ ['It goes against the grain of modern education to teach students to program. What fun is there to making plans, acquiring discipline in organizing thoughts, devoting attention to detail and, learning to be self-critical?', '', '— Alan Perlis'],
      \ ["That's the thing about people who think they hate computers.", 'What they really hate is lousy programmers.', '', '— Larry Niven­'],
      \ ["Everyone knows that debugging is twice as hard as writing a program in the first place. So if you're as clever as you can be when you write it, how will you ever debug it?", '', '— Brian W. Kernighan'],
      \ ["Walking on water and developing software from a specification are easy if both are frozen.", '', '— Edward Berard'],
      \ ["A programming language is for thinking about programs, not for expressing programs you've already thought of. It should be a pencil, not a pen.", '', '— Paul Graham'],
      \ ["Learning the art of programming, like most other disciplines, consists of first learning the rules and then learning when to break them.", '', '— Joshua Bloch']
      \ ]

" Function: s:get_random_offset {{{1
function! s:get_random_offset(max) abort
  return str2nr(matchstr(reltimestr(reltime()), '\.\zs\d\+')[1:]) % a:max
endfunction

" Function: s:draw_box {{{1
function! s:draw_box(lines) abort
  let l:longest_line = max(map(copy(a:lines), 'len(v:val)'))
  let l:topbottom = '*'. repeat('—', l:longest_line + 2) .'*'
  let l:lines = [l:topbottom]
  for l:l in a:lines
    let l:offset = l:longest_line - len(l:l)
    let l:lines += ['| '. l:l . repeat(' ', l:offset) .' |']
  endfor
  let l:lines += [l:topbottom]
  return l:lines
endfunction

" Function: #quote {{{1
function! kitty#quote() abort
  return s:quotes[s:get_random_offset(len(s:quotes))]
endfunction

" Function: #boxed {{{1
function! kitty#boxed() abort
  let l:wrapped_quote = []
  let l:quote = kitty#quote()
  for l:line in l:quote
    let l:wrapped_quote += split(l:line, '\%50c.\{-}\zs\s', 1)
  endfor
  let l:wrapped_quote = s:draw_box(l:wrapped_quote)
  return l:wrapped_quote
endfunction

" Function: #cowsay {{{1
function! kitty#kittysay() abort
  let l:boxed_quote = kitty#boxed()
  let l:boxed_quote += s:kitty
  return map(l:boxed_quote, "'   '. v:val")
endfunction

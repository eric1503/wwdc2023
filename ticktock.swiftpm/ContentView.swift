import SwiftUI

struct ContentView: View {
    let texts = [
        "Go ahead, waste another hour scrolling. Your to-do list can wait, after all.",
        "Who needs productivity when you can have an endless stream of cat videos? Keep scrolling.",
        "You know what's better than accomplishing your goals? Scrolling your life away. Keep it up.",
        "Don't worry about deadlines, social media will always be there to distract you.",
        "Productivity is so overrated, why not just keep scrolling and enjoy the procrastination?",
        "Who needs success when you can become a social media influencer? Keep chasing that fame.",
        "Pick up your phone again and scroll away, your responsibilities will still be waiting for you.",
        "Why work on your goals when you can just become a viral sensation? Keep scrolling!",
        "Go ahead, keep procrastinating. Your to-do list isn't going anywhere.",
        "Why bother with productivity when you can just keep scrolling mindlessly?",
        "Don't let your dreams get in the way of your social media addiction. Keep scrolling!",
        "Why focus on your future when you can focus on your phone instead? Keep scrolling, friend.",
        "Procrastination is truly an art form, and you are a master at it. Keep it up.",
        "You could be working on your goals, but why bother when there's social media to distract you?",
        "You'll get to your to-do list eventually...but only after you've finished scrolling through your feed.",
        "Who needs a successful career when you can be a professional scroller? Keep it up!",
        "Don't let your dreams get in the way of your social media obsession. Keep scrolling!",
        "Time management is definitely overrated. Keep scrolling and let your work pile up.",
        "Go ahead, pick up your phone. Your responsibilities can wait a little longer.",
        "Why focus on being successful when you can focus on becoming a social media superstar? Keep scrolling, champ.",
        "Don't let your ambitions get in the way of your social media addiction. Keep scrolling!",
        "Sure, your phone might be distracting you from work, but think of all the likes and followers you could be getting!",
        "Don't worry about deadlines, social media will always be there to distract you. Keep scrolling.",
        "Why work hard when you can just scroll harder? Keep it up.",
        "Who needs productivity when you can have memes and other meaningless content? Keep scrolling and enjoy the entertainment.",
        "Don't let your goals get in the way of your social media time. Keep scrolling and live in the moment.",
        "Why bother with responsibilities when you can just keep scrolling? Keep it up, friend.",
        "Go ahead, scroll your life away. The clock isn't ticking or anything.",
        "Don't worry about your goals, the algorithm will take care of you. Keep scrolling.",
        "The world needs more TikTok stars, not productive members of society. Keep it up.",
        "Why work on your passion when you can just scroll past other people's accomplishments? Keep it up, loser.",
        "Don't let your ambition get in the way of scrolling. It's not like you're going anywhere.",
        "Why focus on the present moment when you can escape reality by scrolling through other people's lives? Keep it up.",
        "You could be changing the world, but instead, you're just changing the app. Keep scrolling, genius.",
        "Don't worry about your future, TikTok has you covered. Keep scrolling and let life pass you by.",
        "Who needs to make a difference when you can just make a TikTok? Keep scrolling and forget about your purpose.",
        "Why be productive when you can just let the hours slip away? Keep scrolling and forget about your potential.",
        "Your to-do list can wait, there are more important things to scroll through. Keep it up.",
        "Why work on yourself when you can just compare yourself to others on social media? Keep scrolling, you're doing great.",
        "Don't let your success get in the way of scrolling. Keep chasing that viral video instead.",
        "Why focus on personal growth when you can just focus on the latest trends? Keep scrolling and stay basic.",
        "You could be creating something amazing, but instead, you're just consuming meaningless content. Keep scrolling, you're doing great.",
        "Don't worry about your legacy, TikTok will remember you. Keep scrolling and forget about your impact.",
        "Why make progress when you can just make excuses? Keep scrolling and stay stuck.",
        "Your potential can wait, there are more cat videos to see. Keep it up.",
        "Why put in the effort when you can just be average? Keep scrolling and forget about greatness.",
        "Don't let your creativity get in the way of scrolling. Keep it up and stay uninspired.",
        "Why be successful when you can just be popular on social media? Keep scrolling and forget about purpose.",
        "Your dreams can wait, there are more celebrity gossip stories to catch up on. Keep it up.",
        "Why focus on your future when you can just focus on your followers? Keep scrolling and forget about your destiny.",
        "Don't let your passions get in the way of scrolling. Keep it up and stay unfulfilled.",
        "Why be a game-changer when you can just play games on your phone? Keep scrolling and forget about impact.",
        "Your goals can wait, there are more funny cat videos to see. Keep it up.",
        "Why make progress when you can just make excuses? Keep scrolling and stay mediocre.",
        "Don't let your potential get in the way of scrolling. Keep it up and stay stagnant.",
        "Why be productive when you can just be passive? Keep scrolling and forget about your purpose.",
        "Your future can wait, there are more memes to laugh at. Keep it up."
    ]
    
    let colors: [Color] = [.red, .pink, .purple, .blue, .green, .brown, .accentColor, .cyan, .mint, .teal, .black, .indigo, .orange]
    
    @State private var currentIndex = 0
    @State private var currentColorIndex = 0
    
    var body: some View {
        GeometryReader { proxy in
            TabView(selection: $currentIndex) {
                ForEach(texts.indices, id: \.self) { index in
                    CardView(text: texts[index], color: colors[currentColorIndex])
                        .frame(width: proxy.size.width, height: proxy.size.height)
                        .tag(index)
                        .rotationEffect(.degrees(-90))
                }
            }
            .frame(width: proxy.size.height, height: proxy.size.width)
            .rotationEffect(.degrees(90), anchor: .topLeading)
            .offset(x: proxy.size.width)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .onChange(of: currentIndex) { _ in
                // Update the current index state variable
                currentIndex = currentIndex % texts.count
                currentColorIndex = (currentColorIndex + 1) % colors.count
            }
        }
        .background(
            colors[currentColorIndex]
        )
    }
}

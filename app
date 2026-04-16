import Image from "next/image";

type Book = {
  title: string;
  tagline: string;
  audience: string;
  image: string;
  link: string;
};

type Section = {
  title: string;
  description: string;
  hook: string;
  books: Book[];
};

const sections: Section[] = [
  {
    title: "What makes us human?",
    description:
      "Stories that wrestle with identity, sacrifice, and the cost of losing what makes us real.",
    hook: "Join the newsletter to get a free chapter from each of these stories and step into the world before you commit.",
    books: [
      {
        title: "Axiom",
        tagline:
          "A dystopian world of control and truth beneath a polished surface.",
        audience:
          "For readers who love books like Divergent and The Maze Runner.",
        image: "/images/axiom.jpg",
        link: "https://www.amazon.com/s?k=axiom+kristofor+hellmeister",
      },
      {
        title: "Scars of Axiom",
        tagline:
          "Survival, fracture, and the cost of resistance in a breaking world.",
        audience:
          "For readers who love books like Legend and Red Rising.",
        image: "/images/scars-of-axiom.jpg",
        link: "https://www.amazon.com/s?k=scars+of+axiom+kristofor+hellmeister",
      },
      {
        title: "Fall of Axiom",
        tagline:
          "When systems collapse, what remains is tested to the core.",
        audience:
          "For readers who love books like Mockingjay and Red Rising.",
        image: "/images/fall-of-axiom.jpg",
        link: "https://www.amazon.com/s?k=fall+of+axiom+kristofor+hellmeister",
      },
      {
        title: "Citadel",
        tagline:
          "Power, pressure, and a city built on dangerous certainty.",
        audience:
          "For readers who love books like Divergent and Arc of a Scythe.",
        image: "/images/citadel.jpg",
        link: "https://www.amazon.com/s?k=citadel+kristofor+hellmeister",
      },
      {
        title: "End of Man",
        tagline:
          "A speculative look at humanity when paradise comes at the cost of the body.",
        audience:
          "For readers who love books like Ready Player One and Black Mirror.",
        image: "/images/end-of-man.jpg",
        link: "https://www.amazon.com/s?k=end+of+man+kristofor+hellmeister",
      },
    ],
  },
  {
    title: "What is real?",
    description:
      "Worlds where perception, power, and truth collide—and nothing is quite what it seems.",
    hook: "Subscribe and get a free chapter from these novels to see where wonder, danger, and reality start to blur.",
    books: [
      {
        title: "Academy of Breath and Fire",
        tagline:
          "A sweeping academy story where power and identity are forged.",
        audience:
          "For readers who love books like Harry Potter and Keeper of the Lost Cities.",
        image: "/images/academy-breath-fire.jpg",
        link: "https://www.amazon.com/s?k=academy+of+breath+and+fire+kristofor+hellmeister",
      },
      {
        title: "Academy of Light and Shadows",
        tagline:
          "A continuation into deeper power, darker choices, and shifting realities.",
        audience:
          "For readers who love books like Shadow and Bone and Harry Potter.",
        image: "/images/academy-light-shadows.jpg",
        link: "https://www.amazon.com/s?k=academy+of+light+and+shadows+kristofor+hellmeister",
      },
    ],
  },
  {
    title: "What is the past?",
    description:
      "Stories rooted in memory, legacy, and the moments that shape who we become.",
    hook: "Get a free chapter from these stories when you join the list and find the moments that still echo long after the page turns.",
    books: [
      {
        title: "The Daylight",
        tagline:
          "A reflective journey shaped by time, memory, and meaning.",
        audience:
          "For readers who love books like The Book Thief.",
        image: "/images/the-daylight.jpg",
        link: "https://www.amazon.com/s?k=the+daylight+kristofor+hellmeister",
      },
      {
        title: "Brothers of Baseball",
        tagline:
          "A story of brotherhood, sport, and the moments that define us.",
        audience:
          "For readers who love books like The Sandlot.",
        image: "/images/brothers-of-baseball.jpg",
        link: "https://www.amazon.com/s?k=brothers+of+baseball+kristofor+hellmeister",
      },
      {
        title: "High Noon",
        tagline:
          "A sharp, character-driven story set against pressure and choice.",
        audience:
          "For readers who love classic western tension and moral stakes.",
        image: "/images/high-noon.jpg",
        link: "https://www.amazon.com/s?k=high+noon+kristofor+hellmeister",
      },
    ],
  },
];

export default function HomePage() {
  return (
    <main className="page-shell">
      <section className="hero">
        <div className="hero-copy">
          <p className="eyebrow">Kristofor Hellmeister</p>
          <h1>Clean fiction with grit, stakes, and something real at the center.</h1>
          <p className="hero-text">
            I write stories that explore what makes us human, what is real, and what the past still has to say.
            These are clean reads that do not soften consequence or tension. They keep the integrity of the story intact.
          </p>

          <div className="hero-actions">
            <a className="button button-solid" href="#books">Browse the books</a>
            <a className="button button-outline" href="#newsletter">Get free chapters</a>
          </div>
        </div>

        <div className="hero-card">
          <Image
            src="/images/axiom.jpg"
            alt="Axiom cover"
            width={251}
            height={399}
            priority
            className="hero-cover"
          />
          <div className="hero-card-copy">
            <p className="hero-card-label">Start here</p>
            <h2>Axiom</h2>
            <p>
              A sleek entry point into your worlds of identity, control, and truth.
            </p>
          </div>
        </div>
      </section>

      <section id="about" className="about">
        <div className="section-heading">
          <p className="eyebrow">About the author</p>
          <h2>A brief bio</h2>
        </div>

        <div className="bio-card">
          <p>
            Kristofor Hellmeister is a Canadian-born, Georgia-bred author and middle school teacher who lives near Atlanta with his wife, Kristie, and their children. He is a lover of storytelling, sports, and the quiet moments where ideas take shape into something lasting.
          </p>
          <p>
            He writes fiction that blends imagination, tension, and moral depth—stories that explore identity, sacrifice, truth, and the enduring value of the human experience. Whether crafting dystopian science fiction, speculative worlds, or fantasy, his goal is to create stories that feel immersive, meaningful, and unforgettable.
          </p>
          <p>
            When he is not writing, Kristofor enjoys playing Halo, running ridiculously long races, hiking, and building LEGO creations with his boys.
          </p>
        </div>
      </section>

      <section id="books" className="books-area">
        {sections.map((section) => (
          <div key={section.title} className="section-block">
            <div className="section-heading">
              <p className="eyebrow">Featured collection</p>
              <h2>{section.title}</h2>
              <p className="section-description">{section.description}</p>
              <p className="section-hook">{section.hook}</p>
            </div>

            <div className="book-grid">
              {section.books.map((book) => (
                <article key={book.title} className="book-card">
                  <div className="book-cover-wrap">
                    <Image
                      src={book.image}
                      alt={`${book.title} cover`}
                      width={320}
                      height={480}
                      className="book-cover"
                    />
                  </div>

                  <div className="book-content">
                    <h3>{book.title}</h3>
                    <p className="book-tagline">{book.tagline}</p>
                    <p className="book-audience">{book.audience}</p>
                    <a
                      href={book.link}
                      target="_blank"
                      rel="noreferrer"
                      className="button button-outline small-button"
                    >
                      View on Amazon
                    </a>
                  </div>
                </article>
              ))}
            </div>
          </div>
        ))}
      </section>

      <section id="newsletter" className="newsletter">
        <div className="section-heading">
          <p className="eyebrow">Stay connected</p>
          <h2>Join the newsletter</h2>
        </div>

        <div className="newsletter-card">
          <p>
            I’m Kristofor Hellmeister—author of stories that explore what it means to be human, what is real, and what we carry from the past. I write clean fiction with real stakes: stories that do not shy away from tension, consequence, or grit, but hold tightly to meaning and integrity.
          </p>
          <p>
            If you enjoy immersive worlds, thought-provoking ideas, and stories that stay with you long after the final page, this is where you’ll want to be. Join the newsletter for new releases, behind-the-scenes notes, and free chapters from the books.
          </p>

          <div
            className="mailerlite-embed"
            dangerouslySetInnerHTML={{
              __html: `<div class="ml-embedded" data-form="JzdyqS"></div>`,
            }}
          />
        </div>
      </section>
    </main>
  );
}

:root {
  --bg: #0b1020;
  --bg-soft: #131a2f;
  --card: rgba(255, 255, 255, 0.06);
  --border: rgba(255, 255, 255, 0.12);
  --text: #f5f7fb;
  --muted: rgba(245, 247, 251, 0.76);
  --soft: rgba(245, 247, 251, 0.56);
  --accent: #b9d5ff;
  --shadow: 0 20px 60px rgba(0, 0, 0, 0.35);
}

* { box-sizing: border-box; }

html {
  scroll-behavior: smooth;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background:
    radial-gradient(circle at top, rgba(86, 112, 188, 0.18), transparent 30%),
    linear-gradient(180deg, #0a0f1f 0%, #0c1224 100%);
  color: var(--text);
}

a {
  color: inherit;
  text-decoration: none;
}

img {
  display: block;
}

.page-shell {
  width: min(1180px, calc(100% - 32px));
  margin: 0 auto;
  padding: 36px 0 80px;
}

.hero {
  display: grid;
  grid-template-columns: 1.25fr minmax(240px, 340px);
  gap: 32px;
  align-items: center;
  padding: 36px 0 56px;
}

.eyebrow {
  margin: 0 0 10px;
  text-transform: uppercase;
  letter-spacing: 0.22em;
  font-size: 0.78rem;
  color: var(--soft);
}

.hero h1,
.section-heading h2 {
  margin: 0;
  line-height: 1.05;
}

.hero h1 {
  font-size: clamp(2.4rem, 6vw, 4.9rem);
  max-width: 12ch;
}

.hero-text,
.section-description,
.bio-card p,
.newsletter-card p,
.book-tagline,
.book-audience,
.hero-card-copy p,
.section-hook {
  color: var(--muted);
  line-height: 1.7;
}

.hero-text {
  max-width: 62ch;
  margin: 20px 0 0;
  font-size: 1.05rem;
}

.hero-actions {
  display: flex;
  gap: 14px;
  flex-wrap: wrap;
  margin-top: 28px;
}

.button {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  border-radius: 999px;
  padding: 14px 20px;
  border: 1px solid var(--border);
  transition: transform 0.15s ease, background 0.15s ease, border-color 0.15s ease;
  font-weight: 700;
}

.button:hover {
  transform: translateY(-1px);
}

.button-solid {
  background: #f1f4fa;
  color: #09101f;
  border-color: #f1f4fa;
}

.button-outline {
  background: rgba(255, 255, 255, 0.02);
}

.small-button {
  padding: 10px 14px;
  font-size: 0.92rem;
}

.hero-card,
.bio-card,
.newsletter-card,
.book-card {
  background: var(--card);
  border: 1px solid var(--border);
  border-radius: 28px;
  box-shadow: var(--shadow);
  backdrop-filter: blur(10px);
}

.hero-card {
  overflow: hidden;
}

.hero-cover {
  width: 100%;
  height: auto;
}

.hero-card-copy {
  padding: 18px 20px 22px;
}

.hero-card-label {
  margin: 0 0 8px;
  text-transform: uppercase;
  letter-spacing: 0.15em;
  font-size: 0.74rem;
  color: var(--soft);
}

.hero-card-copy h2,
.book-content h3 {
  margin: 0;
}

.about,
.section-block,
.newsletter {
  padding-top: 28px;
}

.section-heading {
  margin-bottom: 20px;
}

.section-description {
  max-width: 60ch;
  margin: 12px 0 0;
}

.section-hook {
  margin: 10px 0 0;
  font-size: 0.96rem;
  font-style: italic;
  color: rgba(240, 245, 255, 0.66);
}

.bio-card,
.newsletter-card {
  padding: 24px;
}

.bio-card p,
.newsletter-card p {
  margin: 0 0 16px;
}

.bio-card p:last-child,
.newsletter-card p:last-child {
  margin-bottom: 0;
}

.books-area {
  padding-top: 12px;
}

.book-grid {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 22px;
}

.book-card {
  overflow: hidden;
}

.book-cover-wrap {
  background: rgba(0, 0, 0, 0.18);
}

.book-cover {
  width: 100%;
  height: auto;
  object-fit: cover;
}

.book-content {
  padding: 18px;
}

.book-content h3 {
  font-size: 1.25rem;
}

.book-tagline {
  margin: 10px 0 10px;
}

.book-audience {
  margin: 0 0 16px;
  font-size: 0.95rem;
  font-style: italic;
  color: rgba(240, 245, 255, 0.62);
}

.mailerlite-embed {
  margin-top: 24px;
}

@media (max-width: 980px) {
  .hero {
    grid-template-columns: 1fr;
  }

  .hero-card {
    max-width: 360px;
  }

  .book-grid {
    grid-template-columns: repeat(2, minmax(0, 1fr));
  }
}

@media (max-width: 640px) {
  .page-shell {
    width: min(100% - 24px, 1180px);
    padding-top: 18px;
  }

  .hero {
    padding-top: 16px;
  }

  .book-grid {
    grid-template-columns: 1fr;
  }

  .bio-card,
  .newsletter-card {
    padding: 20px;
  }
}

import type { Metadata } from "next";
import Script from "next/script";
import "./globals.css";

export const metadata: Metadata = {
  title: "Kristofor Hellmeister | Author",
  description:
    "Clean fiction with grit, stakes, and something real at the center.",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <head>
        <Script
          id="mailerlite-universal"
          strategy="afterInteractive"
          dangerouslySetInnerHTML={{
            __html: `
              (function(w,d,e,u,f,l,n){w[f]=w[f]||function(){(w[f].q=w[f].q||[])
              .push(arguments);},l=d.createElement(e),l.async=1,l.src=u,
              n=d.getElementsByTagName(e)[0],n.parentNode.insertBefore(l,n);})
              (window,document,'script','https://assets.mailerlite.com/js/universal.js','ml');
              ml('account', '2272489');
            `,
          }}
        />
      </head>
      <body>{children}</body>
    </html>
  );
}

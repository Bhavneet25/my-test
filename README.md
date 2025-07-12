# StackIt Q&A Forum Platform

A modern, responsive Q&A platform built with React, TypeScript, Tailwind CSS, and Supabase. Features include user authentication, voting system, AI-powered answers, and a comprehensive badge system.

## Features

### 🔐 Authentication & User Management
- **Secure Authentication**: Email/password signup and login with Supabase Auth
- **User Profiles**: Comprehensive profile pages with statistics and activity tracking
- **Role-based Access**: User roles and permissions system

### 💬 Q&A System
- **Rich Text Editor**: Full-featured editor with formatting, links, images, and emojis
- **Question Management**: Create, view, and manage questions with tags
- **Answer System**: Submit answers with voting and acceptance features
- **Search & Filter**: Advanced filtering by tags, status, and sorting options

### 🗳️ Voting System
- **One Vote Per User**: Secure voting system preventing duplicate votes
- **Question & Answer Voting**: Separate voting for questions and answers
- **Real-time Updates**: Live vote count updates

### 🤖 AI Integration
- **Google Gemini AI**: AI-powered answer generation
- **Smart Responses**: Context-aware AI answers based on question content
- **AI Answer Identification**: Clear labeling of AI-generated content

### 🏆 Badge System
- **Achievement Tracking**: Badges based on answer count and activity
- **Progressive Levels**: From Newcomer to Legend status
- **Visual Recognition**: Beautiful badge display with progress tracking

### 📱 Responsive Design
- **Mobile-First**: Optimized for mobile, tablet, and desktop
- **Modern UI**: Beautiful gradients, animations, and micro-interactions
- **Accessibility**: WCAG compliant design with proper contrast ratios

## Tech Stack

- **Frontend**: React 18, TypeScript, Tailwind CSS
- **Backend**: Supabase (PostgreSQL, Auth, Real-time)
- **AI**: Google Gemini API
- **Build Tool**: Vite
- **Icons**: Lucide React
- **Date Handling**: date-fns

## Getting Started

### Prerequisites

- Node.js 18+ 
- npm or yarn
- Supabase account
- Google AI API key (optional, for AI features)

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd stackit-qa-platform
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up environment variables**
   
   Copy `.env.example` to `.env` and fill in your credentials:
   ```env
   # Supabase Configuration (Required)
   VITE_SUPABASE_URL=your_supabase_project_url
   VITE_SUPABASE_ANON_KEY=your_supabase_anon_key

   # Google Gemini AI Configuration (Optional)
   VITE_GEMINI_API_KEY=your_gemini_api_key
   ```

4. **Set up Supabase**
   
   The database schema will be automatically created when you connect to Supabase. The migrations include:
   - User profiles and authentication
   - Questions and answers tables
   - Voting system
   - Badge tracking
   - Database functions and triggers

5. **Start the development server**
   ```bash
   npm run dev
   ```

## Database Schema

### Tables

- **users**: User profiles with reputation and badge tracking
- **questions**: Questions with voting, views, and metadata
- **answers**: Answers with voting and acceptance status
- **votes**: Voting records with duplicate prevention

### Key Features

- **Row Level Security (RLS)**: Secure data access based on user authentication
- **Real-time Updates**: Live updates for votes and new content
- **Database Functions**: Optimized vote counting and view tracking
- **Triggers**: Automatic timestamp updates

## Configuration

### Supabase Setup

1. Create a new Supabase project
2. Copy your project URL and anon key to `.env`
3. The database schema will be created automatically
4. Enable Row Level Security policies (included in migrations)

### Google AI Setup (Optional)

1. Get a Google AI API key from [Google AI Studio](https://makersuite.google.com/app/apikey)
2. Add the key to your `.env` file as `VITE_GEMINI_API_KEY`
3. AI features will be automatically enabled

## Usage

### For Users

1. **Sign Up/Login**: Create an account or sign in
2. **Ask Questions**: Use the rich text editor to ask detailed questions
3. **Answer Questions**: Provide helpful answers to community questions
4. **Vote**: Upvote or downvote questions and answers
5. **Earn Badges**: Build reputation by answering questions
6. **Get AI Help**: Use AI-generated answers for quick insights

### For Developers

- **Responsive Design**: All components are mobile-first and responsive
- **Type Safety**: Full TypeScript coverage with proper typing
- **Component Architecture**: Modular, reusable components
- **State Management**: Context-based state management
- **Error Handling**: Comprehensive error handling and user feedback

## Badge System

| Badge | Requirement | Description |
|-------|-------------|-------------|
| 🌟 Newcomer | 0 answers | Welcome to the community! |
| 🤝 Helper | 5 answers | Answered 5 questions |
| 💡 Contributor | 15 answers | Answered 15 questions |
| 🎯 Expert | 50 answers | Answered 50 questions |
| 👑 Master | 100 answers | Answered 100 questions |
| 🏆 Legend | 250 answers | Answered 250 questions |

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For support, please open an issue on GitHub or contact the development team.

---

Built with ❤️ using React, TypeScript, and Supabase
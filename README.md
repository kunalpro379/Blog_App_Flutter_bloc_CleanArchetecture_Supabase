# Blog App

A modern blog application built with Flutter using Clean Architecture, BLoC pattern, and Supabase backend. This application demonstrates best practices in Flutter development, including state management, dependency injection, and offline support.

## Author
**Kunal Patil**

## Technical Stack

### Frontend
- **Framework**: Flutter
- **State Management**: Flutter BLoC
- **Architecture**: Clean Architecture
- **UI Components**: Material Design
- **Theme**: Custom dark theme with gradient colors
- **Local Storage**: Hive for offline data persistence
- **Image Handling**: Optimized image loading and caching
- **Form Validation**: Custom form validation with error messages
- **Navigation**: Named routes with type-safe navigation

### Backend
- **Database**: Supabase (PostgreSQL)
- **Authentication**: Supabase Auth
- **Storage**: Supabase Storage for blog images
- **Real-time**: Supabase Realtime for live updates
- **Security**: Row Level Security (RLS) policies
- **API**: RESTful endpoints with proper error handling

### Architecture & Patterns
- **Clean Architecture** with clear separation of concerns:
  - Presentation Layer (UI)
    - Pages
    - Widgets
    - BLoC (Business Logic Components)
    - Custom widgets for reusability
    - Responsive layouts
  - Domain Layer (Business Logic)
    - Entities
    - Repositories
    - Use Cases
    - Value Objects
    - Domain Events
  - Data Layer (Data Sources)
    - Remote Data Sources (Supabase)
    - Local Data Sources (Hive)
    - Models
    - Data Transfer Objects (DTOs)
- **BLoC Pattern** for state management
  - Events
  - States
  - BLoC classes
  - State persistence
  - Error handling
- **Repository Pattern** for data abstraction
  - Interface definitions
  - Implementation classes
  - Data mapping
  - Error handling
- **Dependency Injection** using GetIt
  - Service locator pattern
  - Lazy initialization
  - Singleton management
- **Error Handling** with custom exceptions and failures
  - Custom exception classes
  - Failure types
  - Error messages
  - Error recovery strategies
- **Functional Programming** using fpdart for Either type
  - Error handling with Either
  - Option type for nullable values
  - Functional composition

### Key Features
- **User Authentication**
  - Email/Password authentication
  - Session management
  - User profile management
  - Secure token handling
  - Password reset functionality
  - Email verification
  - Session persistence
  - Auto-logout on token expiry

- **Blog Management**
  - Create blogs with images
  - View all blogs
  - Blog viewer with reading time calculation
  - Topic-based categorization
  - Offline support with local caching
  - Image upload to Supabase storage
  - Blog search functionality
  - Blog filtering by topics
  - Blog sorting options
  - Pagination support
  - Rich text editing
  - Image compression before upload
  - Draft saving functionality

- **UI/UX Features**
  - Dark theme with gradient colors
  - Responsive design
  - Loading states
  - Error handling with snackbars
  - Form validation
  - Image picker integration
  - Reading time calculation
  - Date formatting
  - Pull-to-refresh
  - Infinite scrolling
  - Skeleton loading
  - Toast messages
  - Custom animations
  - Gesture handling
  - Accessibility support

### Performance Optimizations
1. **Image Optimization**
   - Lazy loading of images
   - Image compression before upload
   - Caching of images
   - Progressive image loading
   - Placeholder images

2. **State Management**
   - Efficient BLoC implementation
   - State persistence
   - Selective rebuilds
   - Memory leak prevention

3. **Network Optimization**
   - Request caching
   - Batch operations
   - Pagination
   - Connection-aware operations
   - Retry mechanisms

4. **Memory Management**
   - Proper disposal of controllers
   - Resource cleanup
   - Memory leak prevention
   - Efficient widget tree

5. **Database Optimization**
   - Indexed queries
   - Efficient data models
   - Batch operations
   - Connection pooling

### Testing Strategy
1. **Unit Tests**
   - BLoC tests
   - Repository tests
   - Use case tests
   - Utility function tests

2. **Widget Tests**
   - UI component tests
   - Navigation tests
   - Form validation tests
   - State management tests

3. **Integration Tests**
   - Feature tests
   - API integration tests
   - Database operations tests
   - Authentication flow tests

4. **Performance Tests**
   - Load testing
   - Memory profiling
   - Network performance
   - UI rendering performance

### Deployment Guidelines
1. **Android Deployment**
   - Generate signed APK/Bundle
   - Configure ProGuard rules
   - Set up Firebase App Distribution
   - Configure Google Play Console

2. **iOS Deployment**
   - Configure certificates
   - Set up App Store Connect
   - Configure TestFlight
   - Handle app signing

3. **Web Deployment**
   - Configure hosting
   - Set up CDN
   - Handle routing
   - Optimize assets

4. **CI/CD Pipeline**
   - Automated testing
   - Code quality checks
   - Build automation
   - Deployment automation

### Development Workflow
1. **Code Organization**
   - Feature-based structure
   - Clear naming conventions
   - Documentation standards
   - Code style guidelines

2. **Version Control**
   - Git flow workflow
   - Branch naming conventions
   - Commit message format
   - PR template

3. **Code Review Process**
   - Review checklist
   - Code quality metrics
   - Performance considerations
   - Security review

4. **Documentation**
   - Code documentation
   - API documentation
   - Architecture documentation
   - Setup guides

### Project Structure
```
lib/
├── core/
│   ├── common/
│   │   ├── cubits/
│   │   │   └── app_user_cubit.dart
│   │   ├── entities/
│   │   │   └── user.dart
│   │   └── widgets/
│   │       └── loader.dart
│   ├── constants/
│   │   └── constants.dart
│   ├── error/
│   │   ├── exceptions.dart
│   │   └── failures.dart
│   ├── network/
│   │   └── connection_checker.dart
│   ├── secrets/
│   │   └── app_secrets.dart
│   ├── theme/
│   │   ├── app_pallete.dart
│   │   └── theme.dart
│   └── utils/
│       ├── calculate_reading_time.dart
│       ├── format_date.dart
│       ├── pick_image.dart
│       └── show_snackbar.dart
├── features/
│   ├── auth/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   └── presentation/
│   │       ├── bloc/
│   │       ├── pages/
│   │       └── widgets/
│   └── blog/
│       ├── data/
│       │   ├── datasources/
│       │   ├── models/
│       │   └── repositories/
│       ├── domain/
│       │   ├── entities/
│       │   ├── repositories/
│       │   └── usecases/
│       └── presentation/
│           ├── bloc/
│           ├── pages/
│           └── widgets/
├── config/
│   ├── routes/
│   ├── themes/
│   └── constants/
├── tests/
│   ├── unit/
│   ├── widget/
│   └── integration/
└── init_dependencies.dart
```

### Dependencies
- **State Management & Architecture**
  - flutter_bloc: ^8.1.3
  - get_it: ^7.6.4
  - fpdart: ^1.1.0

- **Backend & Storage**
  - supabase_flutter: ^2.0.0
  - hive: ^2.2.3
  - path_provider: ^2.1.1

- **UI Components**
  - dotted_border: ^2.1.0
  - flutter_cupertino: ^1.0.2
  - cached_network_image: ^3.2.3
  - shimmer: ^3.0.0

- **Utilities**
  - internet_connection_checker_plus: ^2.2.0
  - uuid: ^4.2.1
  - intl: ^0.18.1
  - logger: ^2.0.1

## Getting Started

1. Clone the repository
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Configure Supabase:
   - Create a Supabase project
   - Update the Supabase URL and anon key in `lib/core/secrets/app_secrets.dart`
   - Set up the following tables in Supabase:
     - profiles (id, name, email)
     - blogs (id, poster_id, title, content, image_url, topics, updated_at)
   - Configure storage bucket for blog images
   - Set up Row Level Security (RLS) policies
4. Run the app:
   ```bash
   flutter run
   ```

## Features Implementation Details

### Authentication Flow
1. User signs up with email, password, and name
2. Supabase creates user and profile
3. Session is maintained using Supabase Auth
4. App checks for existing session on startup
5. Token refresh handling
6. Session persistence
7. Auto-logout on token expiry

### Blog Management Flow
1. **Creating a Blog**
   - User selects image
   - Enters title and content
   - Selects topics
   - Image is uploaded to Supabase storage
   - Blog data is saved to Supabase database
   - Local cache is updated
   - Draft saving functionality
   - Image compression
   - Rich text editing

2. **Viewing Blogs**
   - Blogs are fetched from Supabase
   - Data is cached locally using Hive
   - Offline support with cached data
   - Reading time is calculated
   - Blogs are displayed in a scrollable list
   - Pagination support
   - Search functionality
   - Topic filtering
   - Sorting options

### Error Handling
- Network errors
- Authentication errors
- Data validation errors
- Storage errors
- Custom error messages with snackbars
- Error recovery strategies
- Retry mechanisms
- Fallback options

### Offline Support
- Local caching using Hive
- Network connectivity checking
- Automatic sync when online
- Graceful degradation
- Conflict resolution
- Data persistence
- Background sync

## Contributing
Feel free to contribute to this project by:
1. Creating issues for bugs or feature requests
2. Submitting pull requests
3. Improving documentation
4. Adding new features
5. Optimizing performance
6. Writing tests
7. Improving accessibility
8. Enhancing security

## License
This project is open source and available under the MIT License.


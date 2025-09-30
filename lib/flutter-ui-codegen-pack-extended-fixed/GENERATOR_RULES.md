# Flutter UI Code Generator - Design Rules & Best Practices

## Overview
This document outlines the UI/UX design principles and patterns used in the Flutter UI code generator for OneFoodDialer 2025 admin dashboard.

## Design Philosophy
- **Material Design 3**: Follow Material Design 3 guidelines for modern, accessible UI
- **Responsive First**: All components must work seamlessly across desktop, tablet, and mobile
- **Accessibility**: WCAG 2.1 AA compliance with proper semantic labels and screen reader support
- **Progressive Enhancement**: Start with functional basics, enhance with animations and interactions
- **Consistent Patterns**: Reuse components and patterns across all generated views

## Core UI/UX Patterns

### 1. Loading States
**DO:**
- Use skeleton loaders that match the content structure
- Show shimmer effects for better perceived performance
- Provide meaningful loading messages for long operations
- Use progress indicators with percentage for file uploads

**DON'T:**
- Use generic circular progress indicators alone
- Block the entire UI during background operations
- Show loading states for operations under 300ms

**Implementation:**
```dart
// Skeleton loader for list items
Widget buildSkeleton() {
  return Shimmer.fromColors(
    baseColor: Colors.grey[300]!,
    highlightColor: Colors.grey[100]!,
    child: ListTile(
      leading: CircleAvatar(backgroundColor: Colors.white),
      title: Container(height: 16, color: Colors.white),
      subtitle: Container(height: 12, color: Colors.white),
    ),
  );
}
```

### 2. Empty States
**DO:**
- Show helpful illustrations or icons
- Provide clear call-to-action buttons
- Explain why the state is empty and what users can do
- Use friendly, encouraging copy

**DON'T:**
- Show blank screens
- Use technical error messages
- Leave users without next steps

**Implementation:**
```dart
Widget buildEmptyState({
  required IconData icon,
  required String title,
  required String message,
  String? actionLabel,
  VoidCallback? onAction,
}) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 64, color: Colors.grey),
        SizedBox(height: 16),
        Text(title, style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(height: 8),
        Text(message, textAlign: TextAlign.center),
        if (actionLabel != null && onAction != null) ...[
          SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: onAction,
            icon: Icon(Icons.add),
            label: Text(actionLabel),
          ),
        ],
      ],
    ),
  );
}
```

### 3. Error States
**DO:**
- Show user-friendly error messages
- Provide retry mechanisms
- Log technical details for debugging
- Offer alternative actions when possible

**DON'T:**
- Show stack traces to users
- Use technical jargon
- Leave users stuck without options

**Implementation:**
```dart
Widget buildErrorState({
  required String message,
  VoidCallback? onRetry,
  String? details,
}) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.error_outline, size: 64, color: Colors.red),
        SizedBox(height: 16),
        Text('Oops! Something went wrong', 
          style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(height: 8),
        Text(message, textAlign: TextAlign.center),
        if (onRetry != null) ...[
          SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: onRetry,
            icon: Icon(Icons.refresh),
            label: Text('Try Again'),
          ),
        ],
      ],
    ),
  );
}
```

### 4. Form Validation
**DO:**
- Validate on blur and on submit
- Show inline error messages near the field
- Use clear, actionable error messages
- Disable submit button until form is valid
- Show success feedback after submission

**DON'T:**
- Validate on every keystroke (too aggressive)
- Show errors before user interaction
- Use generic "Invalid input" messages

**Implementation:**
```dart
// Form field with validation
TextFormField(
  decoration: InputDecoration(
    labelText: 'Email',
    hintText: 'Enter your email address',
    prefixIcon: Icon(Icons.email),
    errorMaxLines: 2,
  ),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  },
  autovalidateMode: AutovalidateMode.onUserInteraction,
)
```

### 5. Data Tables
**DO:**
- Use sticky headers for long tables
- Implement virtual scrolling for large datasets
- Provide sorting, filtering, and search
- Show row actions on hover/tap
- Use pagination for better performance
- Support column resizing and reordering

**DON'T:**
- Load all data at once
- Hide important actions in menus
- Use tiny touch targets on mobile

**Implementation:**
```dart
// Responsive data table with pagination
PaginatedDataTable(
  header: Text('Customers'),
  rowsPerPage: 10,
  availableRowsPerPage: [10, 25, 50, 100],
  columns: [
    DataColumn(label: Text('Name'), onSort: (index, ascending) {}),
    DataColumn(label: Text('Email')),
    DataColumn(label: Text('Status')),
    DataColumn(label: Text('Actions')),
  ],
  source: CustomerDataSource(),
)
```

### 6. Mobile Responsiveness
**DO:**
- Use LayoutBuilder to adapt to screen size
- Implement bottom sheets for mobile actions
- Use adaptive navigation (drawer on mobile, rail on tablet, sidebar on desktop)
- Ensure touch targets are at least 48x48 dp
- Test on multiple screen sizes

**DON'T:**
- Assume desktop-only usage
- Use fixed pixel values
- Ignore safe areas and notches

**Implementation:**
```dart
// Responsive layout
LayoutBuilder(
  builder: (context, constraints) {
    if (constraints.maxWidth < 600) {
      return MobileLayout();
    } else if (constraints.maxWidth < 1200) {
      return TabletLayout();
    } else {
      return DesktopLayout();
    }
  },
)
```

### 7. Accessibility
**DO:**
- Add semantic labels to all interactive elements
- Support keyboard navigation
- Ensure sufficient color contrast (4.5:1 for text)
- Provide text alternatives for images
- Support screen readers
- Allow text scaling up to 200%

**DON'T:**
- Rely solely on color to convey information
- Use images of text
- Create keyboard traps

**Implementation:**
```dart
// Accessible button
Semantics(
  label: 'Delete customer',
  hint: 'Double tap to delete this customer',
  button: true,
  child: IconButton(
    icon: Icon(Icons.delete),
    onPressed: () {},
    tooltip: 'Delete',
  ),
)
```

### 8. Animations & Transitions
**DO:**
- Use subtle animations (200-300ms)
- Provide visual feedback for interactions
- Respect user's motion preferences
- Use Hero animations for shared elements

**DON'T:**
- Overuse animations
- Use long, distracting animations
- Animate everything

**Implementation:**
```dart
// Smooth page transition
PageRouteBuilder(
  pageBuilder: (context, animation, secondaryAnimation) => NextPage(),
  transitionsBuilder: (context, animation, secondaryAnimation, child) {
    return FadeTransition(opacity: animation, child: child);
  },
  transitionDuration: Duration(milliseconds: 250),
)
```

## Component Library

### Standard Components
1. **AppBar**: Consistent header with title, actions, and back button
2. **SearchBar**: Debounced search with clear button
3. **FilterChips**: Multi-select filters with clear all
4. **StatusChip**: Color-coded status indicators
5. **ActionMenu**: Overflow menu for row actions
6. **ConfirmDialog**: Standard confirmation dialog
7. **SnackBar**: Toast notifications for feedback
8. **Card**: Elevated container for grouped content

### Form Components
1. **TextInput**: Standard text field with validation
2. **EmailInput**: Email-specific validation
3. **PhoneInput**: Phone number formatting
4. **DatePicker**: Calendar date selection
5. **TimePicker**: Time selection
6. **Dropdown**: Single-select dropdown
7. **MultiSelect**: Multi-select with chips
8. **FileUpload**: Drag-and-drop file upload

## Color Palette
```dart
// Primary colors
primaryColor: Color(0xFF1976D2),
primaryVariant: Color(0xFF1565C0),
secondary: Color(0xFF03DAC6),

// Status colors
success: Color(0xFF4CAF50),
warning: Color(0xFFFFC107),
error: Color(0xFFF44336),
info: Color(0xFF2196F3),

// Neutral colors
background: Color(0xFFF5F5F5),
surface: Color(0xFFFFFFFF),
onSurface: Color(0xFF212121),
```

## Typography
```dart
// Headings
headline1: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
headline3: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),

// Body text
bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),

// Captions
caption: TextStyle(fontSize: 12, color: Colors.grey[600]),
```

## Performance Guidelines
1. **Lazy Loading**: Load data on demand, not all at once
2. **Image Optimization**: Use cached network images with placeholders
3. **List Virtualization**: Use ListView.builder for long lists
4. **Debouncing**: Debounce search and filter inputs (300ms)
5. **Memoization**: Cache expensive computations
6. **Code Splitting**: Lazy load routes and features

## Testing Checklist
- [ ] Works on mobile (< 600dp)
- [ ] Works on tablet (600-1200dp)
- [ ] Works on desktop (> 1200dp)
- [ ] Keyboard navigation works
- [ ] Screen reader announces correctly
- [ ] Color contrast meets WCAG AA
- [ ] Touch targets are 48x48 dp minimum
- [ ] Forms validate correctly
- [ ] Error states display properly
- [ ] Loading states show appropriately
- [ ] Empty states are helpful
- [ ] Animations are smooth (60fps)

## Future Enhancements
- [ ] Dark mode support
- [ ] Offline mode with local caching
- [ ] Real-time updates with WebSockets
- [ ] Advanced filtering with query builder
- [ ] Bulk operations
- [ ] Export to CSV/PDF
- [ ] Customizable dashboards
- [ ] Keyboard shortcuts


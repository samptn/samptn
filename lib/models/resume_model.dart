class Resume {
  String name;
  String role;
  String email;
  String phone;
  String address;
  String profilePicture;
  List<SocialLink> socialLinks;
  List<SkillCategory> skills;
  List<Qualification> qualifications;

  Resume({
    required this.name,
    required this.role,
    required this.email,
    required this.phone,
    required this.address,
    required this.profilePicture,
    required this.socialLinks,
    required this.skills,
    required this.qualifications,
  });
}

class SocialLink {
  String platform;
  String url;

  SocialLink({required this.platform, required this.url});
}

class SkillCategory {
  String category;
  List<String> skills;

  SkillCategory({required this.category, required this.skills});
}

class Qualification {
  String degree;
  String institution;
  String duration;
  String description;

  Qualification({
    required this.degree,
    required this.institution,
    required this.duration,
    required this.description,
  });
}

Resume resume = Resume(
  name: "John Doe",
  role: "Software Developer",
  email: "johndoe@example.com",
  phone: "(123) 456-7890",
  address: "123 Main Street, City, Country",
  profilePicture: "assets/profile.jpg", // Add path for the profile image
  socialLinks: [
    SocialLink(
      platform: "GitHub",
      url: "https://github.com/johndoe",
    ),
    SocialLink(
      platform: "LinkedIn",
      url: "https://linkedin.com/in/johndoe",
    ),
    SocialLink(
      platform: "Twitter",
      url: "https://twitter.com/johndoe",
    ),
  ],
  skills: [
    SkillCategory(
      category: "Programming Languages",
      skills: [
        "Flutter",
        "Dart",
        "Kotlin",
        "Java",
      ],
    ),
    SkillCategory(
      category: "Web Technologies",
      skills: [
        "HTML",
        "CSS",
        "JavaScript",
        "React",
      ],
    ),
    SkillCategory(
      category: "Databases",
      skills: [
        "MySQL",
        "PostgreSQL",
        "MongoDB",
      ],
    ),
  ],
  qualifications: [
    Qualification(
      degree: "Bachelor's in Computer Science",
      institution: "XYZ University",
      duration: "2016 - 2020",
      description:
          "Graduated with Honors. Specialized in software development and data structures.",
    ),
    Qualification(
      degree: "Master's in Software Engineering",
      institution: "ABC University",
      duration: "2020 - 2022",
      description:
          "Focused on advanced algorithms, machine learning, and cloud computing.",
    ),
  ],
);

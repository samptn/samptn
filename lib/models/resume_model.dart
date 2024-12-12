import 'package:flutter_application_2/views/widgets/project_widget.dart';

class Resume {
  BasicInfo basicInfo;
  List<SkillCategory> skills;
  List<Qualification> qualifications;
  final List<Project> projects;
  final List<Experience> experiences;

  Resume({
    required this.skills,
    required this.qualifications,
    required this.basicInfo,
    required this.projects,
    required this.experiences, 
  });
}

class Experience {
  String title;
  String company;
  String duration;
  String description;

  Experience({
    required this.title,
    required this.company,
    required this.duration,
    required this.description,
  });

  
}

class BasicInfo {
  String name;
  String role;
  String email;
  String phone;
  String address;
  String profilePicture;
  List<SocialLink> socialLinks;
  //designation

  String designation;

  BasicInfo({
    required this.name,
    required this.role,
    required this.email,
    required this.phone,
    required this.address,
    required this.profilePicture,
    required this.socialLinks,
    required this.designation,
  });
}

class SocialLink {
  String platform;
  String url;

  SocialLink({
    required this.platform,
    required this.url,
  });
}

class SkillCategory {
  String category;
  List<String> skills;

  SkillCategory({
    required this.category,
    required this.skills,
  });
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

  basicInfo: BasicInfo(
    name: "John Doe",
    role: "Software Developer",
    email: "johndoe@example.com",
    phone: "(123) 456-7890",
    address: "123 Main Street, City, Country",
    designation: "Flutter Developer",
    profilePicture: "assets/profile.jpg",
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
  ),
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
    Qualification(
      degree: "Master's in Software Engineering",
      institution: "ABC University",
      duration: "2020 - 2022",
      description:
          "Focused on advanced algorithms, machine learning, and cloud computing.",
    ),
    Qualification(
      degree: "Master's in Software Engineering",
      institution: "ABC University",
      duration: "2020 - 2022",
      description:
          "Focused on advanced algorithms, machine learning, and cloud computing.",
    ),
  ],
  projects: [
    Project(
      title: "Flutter Mobile App",
      description: "A mobile app built with Flutter to manage tasks.",
      technologies: ["Flutter", "Dart", "SQLite"],
      link: "https://github.com/johndoe/flutter_task_manager",
    ),
    Project(
      title: "Personal Portfolio Website",
      description: "A portfolio website to showcase my work and skills.",
      technologies: ["HTML", "CSS", "JavaScript"],
      link: "https://johndoe.dev",
    ),
    Project(
      title: "E-commerce Backend",
      description:
          "Backend for an e-commerce website built with Node.js and MongoDB.",
      technologies: ["Node.js", "Express", "MongoDB"],
      link: "https://github.com/johndoe/ecommerce-backend",
    ),
  ],
  experiences: [
    Experience(
      title: "Flutter Developer",
      company: "Tech Solutions Inc.",
      duration: "Jan 2021 - Dec 2023",
      description:
          "Developed cross-platform applications using Flutter, ensuring high performance and responsiveness.",
    ),
    Experience(
      title: "Junior Developer",
      company: "CodeCrafters Ltd.",
      duration: "Jan 2019 - Dec 2020",
      description:
          "Assisted in building mobile applications, fixing bugs, and maintaining code quality.",
    ),

  ]
);

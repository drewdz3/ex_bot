import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/debug_logger.dart';

/// Basic bio information collection page
class BasicInfoPage extends StatefulWidget {
  const BasicInfoPage({super.key});

  @override
  State<BasicInfoPage> createState() => _BasicInfoPageState();
}

class _BasicInfoPageState extends State<BasicInfoPage> {
  final _formKey = GlobalKey<FormState>();
  final _ageController = TextEditingController();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  
  String? _selectedGender;
  String? _selectedFitnessLevel;
  
  // Gender options for health and fitness calculations (BMI, metabolic rate, etc.)
  final List<String> _genderOptions = [
    'Male',
    'Female',
  ];
  
  final List<String> _fitnessLevelOptions = [
    'Beginner',
    'Intermediate',
    'Advanced',
    'Athlete',
  ];

  @override
  void dispose() {
    _ageController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Information'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Progress indicator
                LinearProgressIndicator(
                  value: 0.25, // 1 of 4 steps
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).primaryColor,
                  ),
                ),
                
                const SizedBox(height: 32),
                
                Text(
                  'Tell us about yourself',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
                const SizedBox(height: 8),
                
                Text(
                  'This helps us personalize your fitness experience',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[600],
                  ),
                ),
                
                const SizedBox(height: 32),
                
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // Age input
                        TextFormField(
                          controller: _ageController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Age',
                            hintText: 'Enter your age',
                            border: OutlineInputBorder(),
                            suffixText: 'years',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your age';
                            }
                            final age = int.tryParse(value);
                            if (age == null || age < 13 || age > 120) {
                              return 'Please enter a valid age (13-120)';
                            }
                            return null;
                          },
                        ),
                        
                        const SizedBox(height: 20),
                        
                        // Gender dropdown
                        DropdownButtonFormField<String>(
                          initialValue: _selectedGender,
                          decoration: const InputDecoration(
                            labelText: 'Gender',
                            helperText: 'Used for accurate BMI and fitness calculations',
                            border: OutlineInputBorder(),
                          ),
                          items: _genderOptions.map((String gender) {
                            return DropdownMenuItem<String>(
                              value: gender,
                              child: Text(gender),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              _selectedGender = value;
                            });
                          },
                          validator: (value) {
                            if (value == null) {
                              return 'Please select your gender';
                            }
                            return null;
                          },
                        ),
                        
                        const SizedBox(height: 20),
                        
                        // Height input
                        TextFormField(
                          controller: _heightController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Height',
                            hintText: 'Enter your height',
                            border: OutlineInputBorder(),
                            suffixText: 'cm',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your height';
                            }
                            final height = int.tryParse(value);
                            if (height == null || height < 100 || height > 250) {
                              return 'Please enter a valid height (100-250 cm)';
                            }
                            return null;
                          },
                        ),
                        
                        const SizedBox(height: 20),
                        
                        // Weight input
                        TextFormField(
                          controller: _weightController,
                          keyboardType: const TextInputType.numberWithOptions(decimal: true),
                          decoration: const InputDecoration(
                            labelText: 'Weight',
                            hintText: 'Enter your weight',
                            border: OutlineInputBorder(),
                            suffixText: 'kg',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your weight';
                            }
                            final weight = double.tryParse(value);
                            if (weight == null || weight < 30 || weight > 300) {
                              return 'Please enter a valid weight (30-300 kg)';
                            }
                            return null;
                          },
                        ),
                        
                        const SizedBox(height: 20),
                        
                        // Fitness level dropdown
                        DropdownButtonFormField<String>(
                          initialValue: _selectedFitnessLevel,
                          decoration: const InputDecoration(
                            labelText: 'Current Fitness Level',
                            border: OutlineInputBorder(),
                          ),
                          items: _fitnessLevelOptions.map((String level) {
                            return DropdownMenuItem<String>(
                              value: level,
                              child: Text(level),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              _selectedFitnessLevel = value;
                            });
                          },
                          validator: (value) {
                            if (value == null) {
                              return 'Please select your fitness level';
                            }
                            return null;
                          },
                        ),
                        
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ),
                
                // Continue button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _submitForm,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                
                const SizedBox(height: 16),
                
                // Skip button
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () => context.go('/chat'),
                    child: const Text('Skip for now'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // TODO: Save basic info and navigate to fitness goals page
      // For now, just print the data and navigate to goals page
      
      final basicInfo = {
        'age': int.parse(_ageController.text),
        'gender': _selectedGender,
        'height': int.parse(_heightController.text),
        'weight': double.parse(_weightController.text),
        'fitnessLevel': _selectedFitnessLevel,
      };
      
      DebugLogger.debug('Basic Info: $basicInfo');
      
      // Navigate to fitness goals page
      context.go('/onboarding/goals');
    }
  }
}
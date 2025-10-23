import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:ex_bot/features/onboarding/cubits/basic_info_cubit.dart';

/// Basic bio information collection page
class BasicInfoPage extends StatelessWidget {
  const BasicInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _BasicInfoView();
  }
}

class _BasicInfoView extends StatelessWidget {
  const _BasicInfoView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BasicInfoCubit, BasicInfoState>(
      builder: (context, state) {
        final cubit = context.read<BasicInfoCubit>();
        return _BasicInfoForm(cubit: cubit, state: state);
      },
    );
  }
}

class _BasicInfoForm extends StatefulWidget {
  const _BasicInfoForm({required this.cubit, required this.state});

  final BasicInfoCubit cubit;
  final BasicInfoState state;

  @override
  State<_BasicInfoForm> createState() => _BasicInfoFormState();
}

class _BasicInfoFormState extends State<_BasicInfoForm> {
  final _formKey = GlobalKey<FormState>();
  final _ageController = TextEditingController();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  String? _selectedGender;
  String? _selectedFitnessLevel;

  // Gender options for health and fitness calculations (BMI, metabolic rate, etc.)
  final List<String> _genderOptions = ['Male', 'Female'];

  final List<String> _fitnessLevelOptions = ['Beginner', 'Intermediate', 'Advanced', 'Athlete'];

  @override
  void initState() {
    super.initState();
    // Initialize form fields with cubit state if available
    widget.state.maybeWhen(
      loaded: (age, gender, height, weight, fitnessLevel) {
        _ageController.text = age?.toString() ?? '';
        _selectedGender = gender;
        _heightController.text = height?.toString() ?? '';
        _weightController.text = weight?.toString() ?? '';
        _selectedFitnessLevel = fitnessLevel;
      },
      orElse: () {},
    );
  }

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
        automaticallyImplyLeading: false, // Disable back button on first onboarding page
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
                  value: 0.16667, // 1 of 6 steps
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                ),

                const SizedBox(height: 32),

                Text(
                  'Tell us about yourself',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 8),

                Text(
                  'This helps us personalize your fitness experience',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
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
                            return DropdownMenuItem<String>(value: gender, child: Text(gender));
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              _selectedGender = value;
                            });
                            widget.cubit.updateGender(value);
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
                            return DropdownMenuItem<String>(value: level, child: Text(level));
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              _selectedFitnessLevel = value;
                            });
                            widget.cubit.updateFitnessLevel(value);
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
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text('Continue', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  ),
                ),

                const SizedBox(height: 16),

                // Skip button
                SizedBox(
                  width: double.infinity,
                  child: TextButton(onPressed: () => context.go('/chat'), child: const Text('Skip for now')),
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
      // Update cubit with all form data
      widget.cubit.updateAge(int.parse(_ageController.text));
      widget.cubit.updateGender(_selectedGender);
      widget.cubit.updateHeight(int.parse(_heightController.text));
      widget.cubit.updateWeight(double.parse(_weightController.text));
      widget.cubit.updateFitnessLevel(_selectedFitnessLevel);

      DebugLogger.debug('Basic Info: ${widget.cubit.basicInfoData}');

      // Navigate to fitness goals page
      context.go('/onboarding/goals');
    }
  }
}

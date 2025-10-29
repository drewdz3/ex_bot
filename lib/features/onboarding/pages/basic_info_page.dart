import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:ex_bot/features/onboarding/cubits/basic_info_cubit.dart';
import 'package:ex_bot/features/onboarding/cubits/basic_info_state.dart';

/// Basic bio information collection page
class BasicInfoPage extends StatelessWidget {
  const BasicInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BasicInfoCubit, BasicInfoState>(
      builder: (context, state) {
        final cubit = context.read<BasicInfoCubit>();

        // Initialize if needed
        if (state is BasicInfoInitial) {
          cubit.initialize();
        }
        return _buildForm(context, cubit, state);
      },
    );
  }

  Widget _buildForm(BuildContext context, BasicInfoCubit cubit, BasicInfoState state) {
    final formKey = GlobalKey<FormState>();
    const genderOptions = ['Male', 'Female'];

    // Get current values from state
    String? currentAge;
    String? currentGender;
    String? currentHeight;
    String? currentWeight;
    String? currentFitnessLevel;
    bool complete = false;

    if (state is BasicInfoLoaded) {
      currentAge = state.age?.toString();
      currentGender = state.gender;
      currentHeight = state.height?.toString();
      currentWeight = state.weight?.toString();
      currentFitnessLevel = state.fitnessLevel;
      complete = state.complete;
    }

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
          key: formKey,
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
                          initialValue: currentAge ?? '',
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Age',
                            hintText: 'Enter your age',
                            border: OutlineInputBorder(),
                            suffixText: 'years',
                          ),
                          onChanged: (value) {
                            final age = int.tryParse(value);
                            cubit.updateAge(age);
                          },
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
                          initialValue: currentGender,
                          decoration: const InputDecoration(
                            labelText: 'Gender',
                            helperText: 'Used for accurate BMI and fitness calculations',
                            border: OutlineInputBorder(),
                          ),
                          items: genderOptions.map((String gender) {
                            return DropdownMenuItem<String>(value: gender, child: Text(gender));
                          }).toList(),
                          onChanged: cubit.updateGender,
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
                          initialValue: currentHeight ?? '',
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Height',
                            hintText: 'Enter your height',
                            border: OutlineInputBorder(),
                            suffixText: 'cm',
                          ),
                          onChanged: (value) {
                            final height = int.tryParse(value);
                            cubit.updateHeight(height);
                          },
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
                          initialValue: currentWeight ?? '',
                          keyboardType: const TextInputType.numberWithOptions(decimal: true),
                          decoration: const InputDecoration(
                            labelText: 'Weight',
                            hintText: 'Enter your weight',
                            border: OutlineInputBorder(),
                            suffixText: 'kg',
                          ),
                          onChanged: (value) {
                            final weight = double.tryParse(value);
                            cubit.updateWeight(weight);
                          },
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
                          initialValue: currentFitnessLevel,
                          decoration: const InputDecoration(
                            labelText: 'Current Fitness Level',
                            border: OutlineInputBorder(),
                          ),
                          //   items: fitnessLevelOptions.map((String level) {
                          //     return DropdownMenuItem<String>(value: level, child: Text(level));
                          //   }).toList(),
                          items: cubit.fitnessLevels.map((f) {
                            return DropdownMenuItem<String>(value: f.id, child: Text(f.name));
                          }).toList(),
                          onChanged: cubit.updateFitnessLevel,
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
                    onPressed: complete ? () => _submitForm(context, formKey, cubit) : null,
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

  void _submitForm(BuildContext context, GlobalKey<FormState> formKey, BasicInfoCubit cubit) {
    if (formKey.currentState!.validate()) {
      cubit.saveChanges();
      // Navigate to fitness goals page
      context.go('/onboarding/goals');
    }
  }
}

import 'package:ex_bot/app/routing/app_router.dart';
import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/l10n/app_localizations.dart';
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
    return BlocConsumer<BasicInfoCubit, BasicInfoState>(
      listener: (context, state) {
        if (state is BasicInfoComplete) {
          context.go(RouteConstants.training);
        } else if (state is BasicInfoNext) {
          context.go(RouteConstants.onboardingGoals);
        } else if (state is BasicInfoError) {
          String message = AppConstants.emptyString;
          if (state.message == AppConstants.unknownError) {
            message = AppLocalizations.of(context)!.unknownError;
          } else if (state.message == AppConstants.saveError) {
            message = AppLocalizations.of(context)!.saveError;
          }

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(AppLocalizations.of(context)!.errorSignInFailed(message)),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      buildWhen: (previous, current) {
        return current is BasicInfoLoaded;
      },
      builder: (context, state) {
        final cubit = context.read<BasicInfoCubit>();
        return _buildForm(context, cubit, state);
      },
    );
  }

  Widget _buildForm(BuildContext context, BasicInfoCubit cubit, BasicInfoState state) {
    final formKey = GlobalKey<FormState>();
    List<String> genderOptions = [AppLocalizations.of(context)!.genderMale, AppLocalizations.of(context)!.genderFemale];

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
        title: Text(AppLocalizations.of(context)!.pageTitleBasicInfo),
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
                  AppLocalizations.of(context)!.labelAbout,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 8),

                Text(
                  AppLocalizations.of(context)!.infoAbout,
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
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.labelAge,
                            hintText: AppLocalizations.of(context)!.infoAge,
                            border: OutlineInputBorder(),
                            suffixText: AppLocalizations.of(context)!.labelAgeSuffix,
                          ),
                          onChanged: (value) {
                            final age = int.tryParse(value);
                            cubit.updateAge(age);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppLocalizations.of(context)!.validatorAge;
                            }
                            final age = int.tryParse(value);
                            if (age == null || age < 13 || age > 120) {
                              return AppLocalizations.of(context)!.validatorAgeLimit;
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 20),

                        // Gender dropdown
                        DropdownButtonFormField<String>(
                          initialValue: currentGender,
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.labelGender,
                            helperText: AppLocalizations.of(context)!.infoGender,
                            border: OutlineInputBorder(),
                          ),
                          items: genderOptions.map((String gender) {
                            return DropdownMenuItem<String>(value: gender, child: Text(gender));
                          }).toList(),
                          onChanged: cubit.updateGender,
                          validator: (value) {
                            if (value == null) {
                              return AppLocalizations.of(context)!.validatorGender;
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 20),

                        // Height input
                        TextFormField(
                          initialValue: currentHeight ?? '',
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.labelHeight,
                            hintText: AppLocalizations.of(context)!.infoHeight,
                            border: OutlineInputBorder(),
                            suffixText: AppLocalizations.of(context)!.suffixHeight,
                          ),
                          onChanged: (value) {
                            final height = int.tryParse(value);
                            cubit.updateHeight(height);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppLocalizations.of(context)!.validatorHeight;
                            }
                            final height = int.tryParse(value);
                            if (height == null || height < 100 || height > 250) {
                              return AppLocalizations.of(context)!.validatorHeightLimit;
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 20),

                        // Weight input
                        TextFormField(
                          initialValue: currentWeight ?? '',
                          keyboardType: const TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.labelWeight,
                            hintText: AppLocalizations.of(context)!.infoWeight,
                            border: OutlineInputBorder(),
                            suffixText: AppLocalizations.of(context)!.suffixWeight,
                          ),
                          onChanged: (value) {
                            final weight = double.tryParse(value);
                            cubit.updateWeight(weight);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppLocalizations.of(context)!.validatorWeight;
                            }
                            final weight = double.tryParse(value);
                            if (weight == null || weight < 30 || weight > 300) {
                              return AppLocalizations.of(context)!.validatorWeightLimit;
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 20),

                        // Fitness level dropdown
                        DropdownButtonFormField<String>(
                          initialValue: currentFitnessLevel,
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.labelFitnessLevel,
                            border: OutlineInputBorder(),
                          ),
                          items: cubit.fitnessLevels.map((f) {
                            return DropdownMenuItem<String>(value: f.id, child: Text(f.name));
                          }).toList(),
                          onChanged: cubit.updateFitnessLevel,
                          validator: (value) {
                            if (value == null) {
                              return AppLocalizations.of(context)!.validatorFitnessLevel;
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
                    child: Text(
                      AppLocalizations.of(context)!.labelContinue,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Skip button
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () => context.go(RouteConstants.training),
                    child: Text(AppLocalizations.of(context)!.labelSkip),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submitForm(BuildContext context, GlobalKey<FormState> formKey, BasicInfoCubit cubit) async {
    if (formKey.currentState!.validate()) {
      await cubit.saveChanges();
    }
  }
}

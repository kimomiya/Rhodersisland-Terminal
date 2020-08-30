import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/enums/character/experience.dart';
import '../../../core/enums/character/position.dart';
import '../../../core/enums/character/profession.dart';
import '../../../core/enums/character/tag.dart';
import '../../../core/images/images.dart';
import '../../../cubit/character/recruitment/recruitment_cubit.dart';
import '../../../generated/l10n.dart';

class FilterDrawer extends StatefulWidget {
  const FilterDrawer({
    Key key,
    @required this.initPositions,
    @required this.initExperiences,
    @required this.initProfessions,
    @required this.initTags,
  }) : super(key: key);

  final List<Position> initPositions;
  final List<Experience> initExperiences;
  final List<Profession> initProfessions;
  final List<Tag> initTags;

  @override
  _FilterDrawerState createState() => _FilterDrawerState(
        initPositions,
        initExperiences,
        initProfessions,
        initTags,
      );
}

class _FilterDrawerState extends State<FilterDrawer> {
  _FilterDrawerState(
    List<Position> initPositions,
    List<Experience> initExperiences,
    List<Profession> initProfessions,
    List<Tag> initTags,
  ) {
    _selectedPositions.addAll(initPositions);
    _selectedExperiences.addAll(initExperiences);
    _selectedProfessions.addAll(initProfessions);
    _selectedTags.addAll(initTags);
  }

  final _selectedPositions = <Position>[];
  final _selectedExperiences = <Experience>[];
  final _selectedProfessions = <Profession>[];
  final _selectedTags = <Tag>[];

  @override
  Widget build(BuildContext context) {
    final intl = S.of(context);
    final paddingBox = SizedBox(height: 16.h.toDouble());
    return Drawer(
      child: Column(
        children: [
          _buildHeader(intl),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildPositionFilter(intl),
              paddingBox,
              _buildExperienceFilter(intl),
              paddingBox,
              _buildProfessionFilter(intl),
              paddingBox,
              _buildTagFilter(intl),
              paddingBox,
              _buildResetButton(intl),
              paddingBox,
            ],
          ).padding(horizontal: 16.w.toDouble()),
        ],
      ).scrollable(),
    );
  }

  //* Components

  Widget _buildHeader(S intl) {
    return DrawerHeader(
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(Images.logo)),
              ),
            ),
          ),
          Text(intl.recruit)
              .fontSize(32.sp.toDouble())
              .fontWeight(FontWeight.bold),
        ],
      ),
    );
  }

  Widget _buildPositionFilter(S intl) {
    final buildChip = (Position position) {
      final selected = _selectedPositions.contains(position);
      return _ChoiceChip(
        label: position.translate(intl),
        onSelected: (_) {
          if (selected) {
            _selectedPositions.remove(position);
          } else {
            if (!_validateSelections()) {
              return;
            }
            _selectedPositions.add(position);
          }
          context.bloc<RecruitmentCubit>().selectPosition(selected, position);
          setState(() {});
        },
        selected: selected,
      );
    };

    final chips = Wrap(
      alignment: WrapAlignment.center,
      spacing: 40.w.toDouble(),
      children: [
        for (final position in Position.values) buildChip(position),
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _FilterHeader(title: intl.position),
        chips.padding(horizontal: 8.w.toDouble()),
      ],
    ).card(margin: EdgeInsets.zero);
  }

  Widget _buildExperienceFilter(S intl) {
    final buildChip = (Experience experience) {
      final selected = _selectedExperiences.contains(experience);
      return _ChoiceChip(
        label: experience.translate(intl),
        onSelected: (_) {
          if (selected) {
            _selectedExperiences.remove(experience);
          } else {
            if (!_validateSelections()) {
              return;
            }
            _selectedExperiences.add(experience);
          }
          context
              .bloc<RecruitmentCubit>()
              .selectExperience(selected, experience);
          setState(() {});
        },
        selected: selected,
      );
    };

    final chips = Wrap(
      alignment: WrapAlignment.center,
      spacing: 20.w.toDouble(),
      children: [
        for (final experience in Experience.values) buildChip(experience),
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _FilterHeader(title: intl.experience),
        chips.padding(horizontal: 8.w.toDouble()),
      ],
    ).card(margin: EdgeInsets.zero);
  }

  Widget _buildProfessionFilter(S intl) {
    final buildChip = (Profession profession) {
      final selected = _selectedProfessions.contains(profession);
      return _ChoiceChip(
        label: profession.translate(intl),
        onSelected: (_) {
          if (selected) {
            _selectedProfessions.remove(profession);
          } else {
            if (!_validateSelections()) {
              return;
            }
            _selectedProfessions.add(profession);
          }
          context
              .bloc<RecruitmentCubit>()
              .selectProfession(selected, profession);
          setState(() {});
        },
        selected: selected,
      );
    };

    final chips = Wrap(
      alignment: WrapAlignment.center,
      spacing: 20.w.toDouble(),
      children: [
        for (final profession in Profession.values) buildChip(profession),
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _FilterHeader(title: intl.profession),
        chips.padding(horizontal: 8.w.toDouble()),
      ],
    ).card(margin: EdgeInsets.zero);
  }

  Widget _buildTagFilter(S intl) {
    final buildChip = (Tag tag) {
      final selected = _selectedTags.contains(tag);
      return _ChoiceChip(
        label: tag.translate(intl),
        onSelected: (_) {
          if (selected) {
            _selectedTags.remove(tag);
          } else {
            if (!_validateSelections()) {
              return;
            }
            _selectedTags.add(tag);
          }
          context.bloc<RecruitmentCubit>().selectTag(selected, tag);
          setState(() {});
        },
        selected: selected,
      );
    };

    final chips = Wrap(
      alignment: WrapAlignment.center,
      spacing: 20.w.toDouble(),
      children: [
        for (final tag in Tag.values) buildChip(tag),
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _FilterHeader(title: intl.tag),
        chips.padding(horizontal: 8.w.toDouble()),
      ],
    ).card(margin: EdgeInsets.zero);
  }

  Widget _buildResetButton(S intl) {
    return _RaisedButton(
      onPressed: () {
        setState(() {
          _selectedPositions.clear();
          _selectedExperiences.clear();
          _selectedProfessions.clear();
          _selectedTags.clear();
        });
        context.bloc<RecruitmentCubit>().resetSelection();
      },
      color: Colors.redAccent,
      text: intl.reset,
    );
  }

  //* Helter Mehtods

  bool _validateSelections() {
    final selectionCount = _selectedPositions.length +
        _selectedExperiences.length +
        _selectedProfessions.length +
        _selectedTags.length;
    if (selectionCount >= maxTagSelectionCount) {
      showToast(S.of(context).itemSelectionLimitExceeded(maxTagSelectionCount));
      return false;
    }
    return true;
  }
}

//* Components

class _FilterHeader extends StatelessWidget {
  const _FilterHeader({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title)
        .textColor(Colors.white)
        .fontSize(30.sp.toDouble())
        .fontWeight(FontWeight.bold)
        .alignment(Alignment.center)
        .decorated(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
          ),
        )
        .height(64.h.toDouble());
  }
}

class _ChoiceChip extends StatelessWidget {
  const _ChoiceChip({
    Key key,
    @required this.label,
    @required this.onSelected,
    @required this.selected,
  }) : super(key: key);

  final String label;
  final void Function(bool selected) onSelected;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label).fontSize(28.sp.toDouble()),
      onSelected: onSelected,
      selected: selected,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    );
  }
}

class _RaisedButton extends StatelessWidget {
  const _RaisedButton({
    Key key,
    @required this.onPressed,
    @required this.color,
    @required this.text,
  }) : super(key: key);

  final void Function() onPressed;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h.toDouble(),
      child: RaisedButton(
        onPressed: onPressed,
        textColor: Colors.white,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(text).fontSize(32.sp.toDouble()),
      ),
    );
  }
}

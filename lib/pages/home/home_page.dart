import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../core/enums/character/experience.dart';
import '../../core/enums/character/position.dart';
import '../../core/enums/character/profession.dart';
import '../../core/enums/character/rarity.dart';
import '../../core/enums/character/tag.dart';
import '../../cubit/character/recruitment/recruitment_cubit.dart';
import '../../data/character/entities/character_lite.dart';
import '../../generated/l10n.dart';
import '../../injection.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<RecruitmentCubit>(),
      child: const _ContentView(),
    );
  }
}

class _ContentView extends StatefulWidget {
  const _ContentView({Key key}) : super(key: key);

  @override
  _ContentViewState createState() => _ContentViewState();
}

class _ContentViewState extends State<_ContentView> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _operators = <CharacterLite>[];
  final _filteredOperators = <List<String>, List<CharacterLite>>{};

  final _selectedRarities = <Rarity>[];
  final _selectedPositions = <Position>[];
  final _selectedExperiences = <Experience>[];
  final _selectedProfessions = <Profession>[];
  final _selectedTags = <Tag>[];

  @override
  void initState() {
    super.initState();

    context.bloc<RecruitmentCubit>().getOperators();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.filter_list),
        onPressed: () => _scaffoldKey.currentState.openEndDrawer(),
      ),
      endDrawer: FilterDrawer(
        initPositions: _selectedPositions,
        initExperiences: _selectedExperiences,
        initProfessions: _selectedProfessions,
        initTags: _selectedTags,
      ),
    );
  }

  //* Components

  Widget _buildBody() {
    return BlocListener<RecruitmentCubit, RecruitmentState>(
      listener: (context, state) {
        state.maybeMap(
          getOperatorsSuccess: (state) {
            context
                .bloc<RecruitmentCubit>()
                .filterByRecruitment(state.operators);
          },
          getOperatorsFailure: (state) => print(state.failure),
          recruitableOperatorsFiltered: (state) {
            _operators.clear();
            _operators.addAll(state.operators);
          },
          positionSelected: (state) => _onPositionSelected(
            state.selected,
            state.position,
          ),
          experienceSelected: (state) => _onExperienceSelected(
            state.selected,
            state.experience,
          ),
          professionSelected: (state) => _onProfessionSelected(
            state.selected,
            state.profession,
          ),
          tagSelected: (state) => _onTagSelected(
            state.selected,
            state.tag,
          ),
          selectionReseted: (_) => _onSelectionReset(),
          orElse: () {},
        );
      },
      child: Column(
        children: [
          _buildResultList(),
        ],
      ),
    );
  }

  Widget _buildResultList() {
    final itemBuilder = (BuildContext context, int index) {
      final filteredKey = _filteredKeys[index];

      final buildItemChip = (CharacterLite op) {
        final rarity = RarityValue.of(op.rarity);
        return ColoredChip(
          label: op.name,
          backgroundColor: rarity.color,
          onPressed: () {
            // TODO(hiei): show detail page
            print(op.id);
          },
        );
      };

      final filteredOperators = _filteredOperators[filteredKey];
      final header = Wrap(
        spacing: 16.w.toDouble(),
        children: [
          for (final item in filteredKey) ColoredChip(label: item),
        ],
      );
      final body = Wrap(
        spacing: 16.w.toDouble(),
        children: [
          for (final op in filteredOperators) buildItemChip(op),
        ],
      );
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [header, body],
      ).padding(horizontal: 12.w.toDouble()).card(
            margin: EdgeInsets.symmetric(
              vertical: 8.h.toDouble(),
              horizontal: 16.w.toDouble(),
            ),
          );
    };

    return Expanded(
      child: ListView.builder(
        itemBuilder: itemBuilder,
        itemCount: _filteredKeys.length,
      ),
    );
  }

  //* Computed Properties

  List<List<String>> get _filteredKeys => _filteredOperators.keys.toList()
    ..sort((prev, next) => next.length.compareTo(prev.length));

  //* Event Methods

  void _onPositionSelected(bool selected, Position position) {
    setState(() {
      if (selected) {
        _selectedPositions.remove(position);
      } else {
        _selectedPositions.add(position);
      }
    });
  }

  void _onExperienceSelected(bool selected, Experience experience) {
    setState(() {
      if (selected) {
        _selectedExperiences.remove(experience);
      } else {
        _selectedExperiences.add(experience);
      }
    });
  }

  void _onProfessionSelected(bool selected, Profession profession) {
    setState(() {
      if (selected) {
        _selectedProfessions.remove(profession);
      } else {
        _selectedProfessions.add(profession);
      }
    });

    _filterByProfession(selected, profession);
  }

  void _onTagSelected(bool selected, Tag tag) {
    if (selected) {
      _selectedTags.remove(tag);
    } else {
      _selectedTags.add(tag);
    }

    _filterByTag(selected, tag);
  }

  void _onSelectionReset() {
    _selectedPositions.clear();
    _selectedExperiences.clear();
    _selectedProfessions.clear();
    _selectedTags.clear();
    setState(() => _filteredOperators.clear());
  }

  //* Helper Methods

  List<CharacterLite> _filterTop(List<CharacterLite> origin) {
    const top = Experience.top;
    if (_selectedExperiences.contains(top)) {
      return origin;
    }

    final operators = List<CharacterLite>.of(origin);
    operators.removeWhere(
      (op) => top.rarities.contains(RarityValue.of(op.rarity)),
    );
    return operators;
  }

  void _filterByProfession(bool selected, Profession profession) {
    final intl = S.of(context);
    final filterKey = [profession.translate(intl)];
    if (selected) {
      setState(() {
        _filteredOperators.removeWhere(
          (key, value) => key.contains(filterKey.first),
        );
      });
      return;
    }

    // 过滤高资
    final operators = _filterTop(_operators);

    // 过滤单类型
    final filteredByOne = <List<String>, List<CharacterLite>>{};
    final oneTagOps = operators.where(
      (op) => op.profession == profession.value,
    );
    if (oneTagOps.isNotEmpty) {
      filteredByOne[filterKey] = oneTagOps.toList();
    }

    // 过滤多类型
    final filteredByMulti = <List<String>, List<CharacterLite>>{};
    for (final key in _filteredOperators.keys) {
      final multiTagOps = _filteredOperators[key].where(
        (op) => op.profession == profession.value,
      );
      if (multiTagOps.isNotEmpty) {
        filteredByMulti[[...key, ...filterKey]] = multiTagOps.toList();
      }
    }

    final results = {
      ...filteredByOne,
      ...filteredByMulti,
    };
    if (results.isNotEmpty) {
      setState(() => _filteredOperators.addAll(results));
    }
  }

  void _filterByTag(bool selected, Tag tag) {
    final intl = S.of(context);
    final filterKey = [tag.translate(intl)];
    if (selected) {
      setState(() {
        _filteredOperators.removeWhere(
          (key, value) => key.contains(filterKey.first),
        );
      });
      return;
    }

    // 过滤高资
    final operators = _filterTop(_operators);

    // 过滤小车
    final filteredByRobot = <List<String>, List<CharacterLite>>{};
    if (tag == Tag.robot) {
      final robots = operators.where((op) => op.rarity == Rarity.one.value);
      filteredByRobot[filterKey] = robots.toList();
    }

    // 过滤单类型
    final filteredByOne = <List<String>, List<CharacterLite>>{};
    final oneTagOps = operators.where(
      (op) => op.tagList.contains(filterKey.first),
    );
    if (oneTagOps.isNotEmpty) {
      filteredByOne[filterKey] = oneTagOps.toList();
    }

    // 过滤多类型
    final filteredByMulti = <List<String>, List<CharacterLite>>{};
    for (final key in _filteredOperators.keys) {
      final multiTagOps = _filteredOperators[key].where(
        (op) => op.tagList.contains(filterKey.first),
      );
      if (multiTagOps.isNotEmpty) {
        filteredByMulti[[...key, ...filterKey]] = multiTagOps.toList();
      }
    }

    final results = {
      ...filteredByRobot,
      ...filteredByOne,
      ...filteredByMulti,
    };
    if (results.isNotEmpty) {
      setState(() => _filteredOperators.addAll(results));
    }
  }
}

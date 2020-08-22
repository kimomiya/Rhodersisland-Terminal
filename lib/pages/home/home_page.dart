import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/enums/character/experience.dart';
import '../../core/enums/character/position.dart';
import '../../core/enums/character/profession.dart';
import '../../core/enums/character/rarity.dart';
import '../../core/enums/character/tag.dart';
import '../../cubit/character/recruitment/recruitment_cubit.dart';
import '../../data/character/entities/character_lite.dart';
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
  final _listKey = GlobalKey<AnimatedListState>();

  final _operators = <CharacterLite>[];
  final _filteredOperators = <CharacterLite>[];

  final _selectedRarities = <Rarity>[];
  final _selectedPositions = <Position>[];
  final _selectedExperiences = <Experience>[];
  final _selectedProfessions = <Profession>[];
  final _selectedTags = <Tag>[];

  @override
  void initState() {
    super.initState();

    context.bloc<RecruitmentCubit>().getOperatorList();
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
        onPositionSelected: _onPositionSelected,
        onExperienceSelected: _onExperienceSelected,
        onProfessionSelected: _onProfessionSelected,
        onTagSelected: _onTagSelected,
      ),
    );
  }

  //* Components

  Widget _buildBody() {
    return BlocListener<RecruitmentCubit, RecruitmentState>(
      listener: (context, state) {
        state.maybeMap(
          getOperatorInProgress: (_) {},
          getOperatorSuccess: (state) => _operators.addAll(state.operators),
          getOperatorFailure: (state) => print(state.failure),
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
    return Expanded(
      child: AnimatedList(
        key: _listKey,
        itemBuilder: (context, index, animation) {
          return ListTile(
            title: Text(_filteredOperators[index].name),
          );
        },
        initialItemCount: _filteredOperators.length,
      ),
    );
  }

  //* Event Methods

  void _onPositionSelected(List<Position> positions) {
    _selectedPositions.replaceRange(0, _selectedPositions.length, positions);
  }

  void _onExperienceSelected(List<Experience> experiences) {
    _selectedExperiences.replaceRange(
      0,
      _selectedExperiences.length,
      experiences,
    );
  }

  void _onProfessionSelected(List<Profession> professions) {
    _selectedProfessions.replaceRange(
      0,
      _selectedProfessions.length,
      professions,
    );
  }

  void _onTagSelected(List<Tag> tags) {
    _selectedTags.replaceRange(0, _selectedTags.length, tags);
  }
}

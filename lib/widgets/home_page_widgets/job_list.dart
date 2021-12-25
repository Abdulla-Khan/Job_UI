import 'package:flutter/material.dart';
import 'package:job_ui/model/jobs.dart';

import 'job_item.dart';

class JobList extends StatelessWidget {
  final jobList = Job.generateJobs();
  JobList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 25),
        height: 160,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 25),
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => JobItem(
                  job: jobList[index],
                ),
            separatorBuilder: (_, index) => SizedBox(
                  width: 25,
                ),
            itemCount: jobList.length));
  }
}

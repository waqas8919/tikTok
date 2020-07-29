import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tiktok_clone/discover.dart';
import 'package:tiktok_clone/settings.dart';
import 'package:tiktok_clone/tiktko_Interface.dart';
import 'signup.dart';

//////////////////////////////////////
//// ----   SignUp File   ----
/////////////////////////////////////
//Icon Color
const iconcolor1 = const Color(0xAA95a5a6);
const text1 = const Color(0xAA2d3436);
const btn1 = const Color(0xffff4757);

//For Signup bottomSheet
const text2 = const Color(0xAA95a5a6);
const text3 = const Color(0xAA2d3436);
//email btn
const usephonermail_br = const Color(0xAAbdc3c7);
const usephonermail_bg = const Color(0xAAffffff);
const usephoneemail_icon = const Color(0xAA2d3436);
const usephoneemail_text = const Color(0xAA2d3436);

//facebook btn
const facebook_br = const Color(0xAAbdc3c7);
const facebook_bg = const Color(0xAAffffff);
const facebook_icon = const Color(0xAA2980b9);
const facebook_text = const Color(0xAA2d3436);

//facebook btn
const google_br = const Color(0xAAbdc3c7);
const google_bg = const Color(0xAAffffff);
const google_icon = const Color(0xAAe74c3c);
const google_text = const Color(0xAA2d3436);

//////////////////////////////////////
//// ----   tiktokInterface File   ----
/////////////////////////////////////

//Top-Section
const followingForyou_tx = const Color(0xffffffff);

//Middle Section Icon
const tiktokMiddleIcons_txt = const Color(0xffffffff);

//Bottom-Section
const home_icon = const Color(0xffffffff);
const home_txt = const Color(0xffffffff);

//This For 3 Icons and text colors
const disInboxMe_icon = const Color(0xAAffffff);
const disInboxMe_txt = const Color(0xAAffffff);

//This For Middle Add (+) Icon and text colors
const add_icon = const Color(0xffffffff);

//////////////////////////////////////
//// ----   tiktokInterface Comment Poup File   ----
/////////////////////////////////////
//Top-Section
const comment_commentfigures = const Color(0xff34495e);
const comment_closeIcon = const Color(0xAAa4b0be);
//Middle Section
const comment_title = const Color(0xff34495e);
const comment_subTitle = const Color(0xAA34495e);
//Comments Like Icon and total comment likes
const comment_likeIcon = const Color(0xAAa4b0be);
const comment_totalCommentLikes = const Color(0xAAa4b0be);
//Bottom Section
//TextField
const comment_textField_txt = const Color(0xAA34495e);
const comment_Emojis_Icon = const Color(0xAA34495e);

//////////////////////////////////////
//// ----   discover File   ----
/////////////////////////////////////

//Top Section
//TextField
const fill_color = const Color(0xAAa4b0be);
const prefix_icon = const Color(0xff34495e);
const hint_txt = const Color(0xff34495e);
const textfield_text = const Color(0xAAffffff);
//Icon
const wallpaper_icon = const Color(0xff34495e);
//Middle Text Sections

const hash_br = const Color(0xff2f3542);
const hash_txt = const Color(0xff2f3542);
const hashtitle_txt = const Color(0xff2f3542);
const hash_Subtitle_txt = const Color(0xAAa4b0be);
const hashbtn_txt = const Color(0xff2f3542);
const hashbtn_bg = const Color(0xAAa4b0be);

//Bottom-Section

//This For 3 Icons and text colors
const homeInboxMe_icon = const Color(0xAAa4b0be);
const homeInboxMe_txt = const Color(0xAAa4b0be);
//Dicover Icon
const dic_dicover_icon = const Color(0xff2f3542);
const dic_dicover_txt = const Color(0xff2f3542);

//This For Middle Add (+) Icon and text colors
const dic_add_icon = const Color(0xff2f3542);

//////////////////////////////////////
//// ----   Inbox File   ----    ////
/////////////////////////////////////

//Top Section
const allActivity = const Color(0xff2f3542);
const allActivity_icon = const Color(0xff2f3542);
const inbox_share_icon = const Color(0xff2f3542);

///Middle Section
const inbox_timeIndicator_txt = const Color(0xAAa4b0be);
const inbox_title_txt = const Color(0xff2f3542);
const inbox_Subtitle_txt = const Color(0xAAa4b0be);
const inbox_followback_btn_bg = const Color(0xffeb2f06);
const inbox_followback_btn_txt = const Color(0xffffffff);

//Bottom-Section

//This For 3 Icons and text colors
const homeDecoverMe_icon = const Color(0xAAa4b0be);
const homeDecoverMe_txt = const Color(0xAAa4b0be);
//Inbox Icon
const inbox_inbox_icon = const Color(0xff2f3542);
const inbox_inbox_txt = const Color(0xff2f3542);

//This For Middle Add (+) Icon and text colors
const inbox_add_icon = const Color(0xff2f3542);

//////////////////////////////////////
//// ----   Me File   ----    ////
/////////////////////////////////////

//Top Section
const me_icon = const Color(0xff2f3542);
const meTopName_txt = const Color(0xff2f3542);
const medropArrow_icon = const Color(0xff2f3542);
const meOption_icon = const Color(0xff2f3542);

//Middle Section
const meIdentyName_txt = const Color(0xff2f3542);
//Following Follow Likes
const followingFollowlikesFigures = const Color(0xff2f3542);
const followingFollowlikes_txt = const Color(0xAA2f3542);

//Edit Profile and Save btn
const meEdit_br = const Color(0xAA2f3542);
const meEdit_bg = const Color(0xffffffff);
const meEdit_txt = const Color(0xff2f3542);
const meSave_icon = const Color(0xff2f3542);

const tapBio_txt = const Color(0xff2f3542);
//TabBar
const tabBarIcons = const Color(0xAA2f3542);

//Bottom-Section

//This For 3 Icons and text colors
const meHomeDecoverInbox_icon = const Color(0xAAa4b0be);
const meHomeDecoverInbox_txt = const Color(0xAAa4b0be);
//Inbox Icon
const me_Me_icon = const Color(0xff2f3542);
const me_Me_txt = const Color(0xff2f3542);

//This For Middle Add (+) Icon and text colors
const me_add_icon = const Color(0xff2f3542);

//////////////////////////////////////
//// ----   Inbox2 File   ----    ////
/////////////////////////////////////

//Top Section

const inbox2_icon = const Color(0xff2f3542);
const inbox2TopName_txt = const Color(0xff2f3542);
const inbox2Option_icon = const Color(0xff2f3542);

//Middle Section
const inbox2_timeIndicator_txt = const Color(0xAA2f3542);
//Chat Section
const inbox2_sendmsg_bg = const Color(0xAAbdc3c7);
const inbox2_sendmsg_txt = const Color(0xff2f3542);

const inbox2_resivemsg_bg = const Color(0xff3498db);
const inbox2_resivemsg_txt = const Color(0xffffffff);

//Bottom Section
const inbox2_textfield_text = const Color(0xff2f3542);
const inbox2_textfield_icon = const Color(0xAAbdc3c7);

//////////////////////////////////////
//// ----   Setting File   ----    ////
/////////////////////////////////////

//Top Section
const setting_backArrow = const Color(0xff2f3542);
const setting_AppbarTitle = const Color(0xff2f3542);

//Second Section
const setting_AccountAllTitleTxt = const Color(0xAAbdc3c7);
//This For all Icons which are in Scrollview
const setting_allIcons = const Color(0xAAbdc3c7);
//This for all Texts which are in Scrollview
const setting_allIconsTitleTxt = const Color(0xff2f3542);

//////////////////////////////////////
//// ----   Manage Account File   ----    ////
/////////////////////////////////////

//Top Section
const manage_backArrow = const Color(0xff2f3542);
const manage_AppbarTitle = const Color(0xff2f3542);
//Middle Section
const manage_AllTextlines = const Color(0xff2f3542);
//This for Last line Pro Account
const manage_ProAccount = const Color(0xff3498db);
//This For Phone Number
const manage_phoneNum = const Color(0xAAbdc3c7);
//This For Delete Account
const manage_deleteAcc = const Color(0xff34495e);
//////////////////////////////////////
//// ----   Email File   ----    ////
/////////////////////////////////////

//Top Section
const email_backArrow = const Color(0xff2f3542);

//Middle Section
//Top Section
const email_firstline_txt = const Color(0xff2f3542);
const email_Secline_txt = const Color(0xAAbdc3c7);

//TextField
const email_TextField_txt = const Color(0xff2f3542);
//Send Code
const email_Sendbtn_bg = const Color(0xAAbdc3c7);
const email_Sendbtn_txt = const Color(0xff2f3542);

//////////////////////////////////////
//// ----   Post File   ----    ////
/////////////////////////////////////

//Top Section
const post_backArrow = const Color(0xff2f3542);
const post_topTxt = const Color(0xff2f3542);

//Middle Section
const post_txtField_txt = const Color(0xff2f3542);
const post_hashTag_btn = const Color(0xff2f3542);
const post_friends_btn = const Color(0xff2f3542);

//All Three Lines Icons Color
const post_AllIcons = const Color(0xAAbdc3c7);

//All Three lines Text Color
const post_AllTextLines = const Color(0xff2f3542);
//This For public Text and Icon Color
const post_publicTxt = const Color(0xAAbdc3c7);
//Bottom Section
const post_draftBtn_br = const Color(0xff2f3542);
const post_draftBtn_bg = const Color(0xff2f3542);
const post_draftBtn_txt = const Color(0xff2f3542);

const post_postBtn_bg = const Color(0xff2f3542);
const post_postBtn_txt = const Color(0xff2f3542);

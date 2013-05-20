.class public Lcom/android/systemui/statusbar/DoNotDisturb;
.super Ljava/lang/Object;
.source "DoNotDisturb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DORMANT_MODE_OFF:Ljava/lang/String; = "android.intent.action.DORMANT_MODE_OFF"

.field private static final DORMANT_MODE_ON:Ljava/lang/String; = "android.intent.action.DORMANT_MODE_ON"

.field private static final DORMANT_MODE_UPDATE:Ljava/lang/String; = "android.intent.action.DORMANT_MODE_UPDATE"

.field static final MSEC_A_DAY:J = 0x5265c00L

.field private static final MSEC_A_HALF_SEC:J = 0x1f4L

.field private static final TW_TAG:Ljava/lang/String; = "StatusBar-DoNotDistrub"


# instance fields
.field private isAlwaysDormant:Z

.field private isDormantModeOn:Z

.field private isDormantModeSwitchedOn:Z

.field private isNotificationDisabled:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBar:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    .line 64
    new-instance v2, Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;-><init>(Lcom/android/systemui/statusbar/DoNotDisturb;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    .line 213
    new-instance v2, Lcom/android/systemui/statusbar/DoNotDisturb$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/DoNotDisturb$1;-><init>(Lcom/android/systemui/statusbar/DoNotDisturb;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    const-string v2, "StatusBar-DoNotDistrub"

    const-string v3, "DoNotDisturb constructor called"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    .line 69
    iget-object v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 70
    .local v1, mContentResolver:Landroid/content/ContentResolver;
    const-string v2, "statusbar"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStatusBar:Landroid/app/StatusBarManager;

    .line 71
    iget-object v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    .line 72
    const-string v2, "dormant_switch_onoff"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 75
    const-string v2, "dormant_disable_notifications"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    const-string v2, "dormant_disable_led_indicator"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    const-string v2, "dormant_always"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 84
    const-string v2, "dormant_start_hour"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 87
    const-string v2, "dormant_start_min"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    const-string v2, "dormant_end_hour"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    const-string v2, "dormant_end_min"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DORMANT_MODE_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDoNotDisturbStatus()V

    .line 103
    return-void
.end method

.method private isDormantTime()Z
    .locals 13

    .prologue
    const/16 v12, 0xd

    const/16 v11, 0xc

    const/16 v10, 0xb

    const/4 v7, 0x0

    .line 143
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 144
    .local v4, mCalendar:Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 145
    .local v0, currentTime:J
    iget-object v8, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dormant_start_hour"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 147
    iget-object v8, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dormant_start_min"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v11, v8}, Ljava/util/Calendar;->set(II)V

    .line 149
    invoke-virtual {v4, v12, v7}, Ljava/util/Calendar;->set(II)V

    .line 150
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 151
    .local v5, startTime:J
    iget-object v8, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dormant_end_hour"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 153
    iget-object v8, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dormant_end_min"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v11, v8}, Ljava/util/Calendar;->set(II)V

    .line 155
    invoke-virtual {v4, v12, v7}, Ljava/util/Calendar;->set(II)V

    .line 156
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 158
    .local v2, endTime:J
    cmp-long v8, v5, v2

    if-gez v8, :cond_0

    cmp-long v8, v0, v5

    if-ltz v8, :cond_0

    cmp-long v8, v0, v2

    if-ltz v8, :cond_1

    :cond_0
    cmp-long v8, v5, v2

    if-lez v8, :cond_2

    cmp-long v8, v0, v5

    if-gez v8, :cond_1

    cmp-long v8, v0, v2

    if-gez v8, :cond_2

    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7
.end method

.method private setDormantAlarm()V
    .locals 22

    .prologue
    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 164
    .local v16, calStartTime:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    .line 165
    .local v17, currentTimeL:J
    const/16 v2, 0xb

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_start_hour"

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 167
    const/16 v2, 0xc

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_start_min"

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 169
    const/16 v2, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 171
    .local v15, calEndTime:Ljava/util/Calendar;
    const/16 v2, 0xb

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_end_hour"

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v15, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 173
    const/16 v2, 0xc

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_end_min"

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v15, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 175
    const/16 v2, 0xd

    const/4 v5, 0x0

    invoke-virtual {v15, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 176
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v2, v5, v17

    if-lez v2, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    :goto_0
    const-wide/16 v8, 0x1f4

    add-long v3, v5, v8

    .line 179
    .local v3, starTimeL:J
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v2, v5, v17

    if-lez v2, :cond_1

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    :goto_1
    const-wide/16 v8, 0x1f4

    add-long v10, v5, v8

    .line 182
    .local v10, endTimeL:J
    new-instance v21, Landroid/content/Intent;

    const-string v2, "android.intent.action.DORMANT_MODE_UPDATE"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v21, schedulingIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x1000

    move-object/from16 v0, v21

    invoke-static {v2, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 185
    .local v7, mStartTimePendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    const/high16 v6, 0x1000

    move-object/from16 v0, v21

    invoke-static {v2, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 187
    .local v14, mEndTimePendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 188
    .local v1, mAlarmManager:Landroid/app/AlarmManager;
    const/4 v2, 0x0

    const-wide/32 v5, 0x5265c00

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 190
    const/4 v9, 0x0

    const-wide/32 v12, 0x5265c00

    move-object v8, v1

    invoke-virtual/range {v8 .. v14}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 193
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    .line 194
    .local v19, mC:Ljava/util/Calendar;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 195
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    .line 196
    .local v20, mCend:Ljava/util/Calendar;
    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 197
    const-string v2, "StatusBar-DoNotDistrub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set Repeating event for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void

    .line 176
    .end local v1           #mAlarmManager:Landroid/app/AlarmManager;
    .end local v3           #starTimeL:J
    .end local v7           #mStartTimePendingIntent:Landroid/app/PendingIntent;
    .end local v10           #endTimeL:J
    .end local v14           #mEndTimePendingIntent:Landroid/app/PendingIntent;
    .end local v19           #mC:Ljava/util/Calendar;
    .end local v20           #mCend:Ljava/util/Calendar;
    .end local v21           #schedulingIntent:Landroid/content/Intent;
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/32 v8, 0x5265c00

    add-long/2addr v5, v8

    goto/16 :goto_0

    .line 179
    .restart local v3       #starTimeL:J
    :cond_1
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/32 v8, 0x5265c00

    add-long/2addr v5, v8

    goto/16 :goto_1
.end method

.method private updateDisableRecord()V
    .locals 3

    .prologue
    .line 110
    const/high16 v0, 0x4

    .line 111
    .local v0, disabled:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStatusBar:Landroid/app/StatusBarManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isNotificationDisabled:Z

    if-eqz v2, :cond_0

    .end local v0           #disabled:I
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 112
    return-void

    .line 111
    .restart local v0       #disabled:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public updateDoNotDisturbStatus()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dormant_switch_onoff"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeSwitchedOn:Z

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dormant_disable_notifications"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isNotificationDisabled:Z

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dormant_always"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isAlwaysDormant:Z

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeSwitchedOn:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isAlwaysDormant:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantTime()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeOn:Z

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeOn:Z

    if-eqz v0, :cond_7

    const-string v0, "android.intent.action.DORMANT_MODE_ON"

    :goto_4
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    const-string v1, "StatusBar-DoNotDistrub"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcast "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeOn:Z

    if-eqz v0, :cond_8

    const-string v0, "android.intent.action.DORMANT_MODE_ON"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "StatusBar-DoNotDistrub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The STREAM NOTIFICATION volume is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDisableRecord()V

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isAlwaysDormant:Z

    if-nez v0, :cond_2

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->setDormantAlarm()V

    .line 132
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 115
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 117
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 119
    goto :goto_2

    :cond_6
    move v1, v2

    .line 121
    goto :goto_3

    .line 122
    :cond_7
    const-string v0, "android.intent.action.DORMANT_MODE_OFF"

    goto :goto_4

    .line 123
    :cond_8
    const-string v0, "android.intent.action.DORMANT_MODE_OFF"

    goto :goto_5
.end method

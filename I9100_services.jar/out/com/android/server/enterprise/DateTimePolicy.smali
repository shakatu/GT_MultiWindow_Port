.class public Lcom/android/server/enterprise/DateTimePolicy;
.super Landroid/app/enterprise/IDateTimePolicy$Stub;
.source "DateTimePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "EDM"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Landroid/app/enterprise/IDateTimePolicy$Stub;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/android/server/enterprise/DateTimePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 88
    iput-object v0, p0, Lcom/android/server/enterprise/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 94
    iput-object p1, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 98
    return-void
.end method

.method private enforceDateTimePermission()I
    .registers 3

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/enterprise/DateTimePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_DATE_TIME"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/enterprise/DateTimePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 114
    iget-object v0, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/DateTimePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 120
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/DateTimePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public getAutomaticTime()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 357
    iget-object v1, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .registers 4

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, dateFormat:Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_22

    .line 304
    :cond_14
    iget-object v1, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    const v2, 0x10400a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 320
    :cond_21
    :goto_21
    return-object v0

    .line 306
    :cond_22
    const-string v1, "dd-MM-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 308
    const-string v0, "DD/MM/YYYY"

    goto :goto_21

    .line 310
    :cond_2d
    const-string v1, "MM-dd-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 312
    const-string v0, "MM/DD/YYYY"

    goto :goto_21

    .line 314
    :cond_38
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 316
    const-string v0, "YYYY/MM/DD"

    goto :goto_21
.end method

.method public getDateTime()J
    .registers 3

    .prologue
    .line 165
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDaylightSavingTime()Z
    .registers 3

    .prologue
    .line 366
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 368
    .local v0, tz:Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    return v1
.end method

.method public getTimeFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "24"

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "12"

    goto :goto_a
.end method

.method public getTimeZone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDateTimeChangeEnabled()Z
    .registers 8

    .prologue
    .line 418
    const/4 v1, 0x1

    .line 420
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "DateTimeEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 426
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 428
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 430
    move v1, v2

    .line 438
    .end local v2           #value:Z
    :cond_22
    return v1
.end method

.method public onAdminAdded(I)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 379
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 386
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 400
    return-void
.end method

.method public setAutomaticTime(Z)Z
    .registers 10
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 329
    invoke-direct {p0}, Lcom/android/server/enterprise/DateTimePolicy;->enforceDateTimePermission()I

    .line 331
    invoke-virtual {p0}, Lcom/android/server/enterprise/DateTimePolicy;->isDateTimeChangeEnabled()Z

    move-result v3

    if-nez v3, :cond_c

    .line 348
    :goto_b
    return v5

    .line 336
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 338
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time"

    if-eqz p1, :cond_33

    move v3, v4

    :goto_1b
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 342
    .local v0, ret:Z
    iget-object v3, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "auto_time_zone"

    if-eqz p1, :cond_35

    :goto_29
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    and-int/2addr v0, v3

    .line 346
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v0

    .line 348
    goto :goto_b

    .end local v0           #ret:Z
    :cond_33
    move v3, v5

    .line 338
    goto :goto_1b

    .restart local v0       #ret:Z
    :cond_35
    move v4, v5

    .line 342
    goto :goto_29
.end method

.method public setDateFormat(Ljava/lang/String;)Z
    .registers 7
    .parameter "format"

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/server/enterprise/DateTimePolicy;->enforceDateTimePermission()I

    .line 262
    const-string v3, "MM/DD/YYYY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 264
    const-string p1, "MM-dd-yyyy"

    .line 281
    :goto_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 283
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 287
    .local v0, ret:Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 289
    .end local v0           #ret:Z
    .end local v1           #token:J
    :goto_20
    return v0

    .line 266
    :cond_21
    const-string v3, "DD/MM/YYYY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 268
    const-string p1, "dd-MM-yyyy"

    goto :goto_d

    .line 270
    :cond_2c
    const-string v3, "YYYY/MM/DD"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 272
    const-string p1, "yyyy-MM-dd"

    goto :goto_d

    .line 276
    :cond_37
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public setDateTime(J)Z
    .registers 10
    .parameter "millis"

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Lcom/android/server/enterprise/DateTimePolicy;->enforceDateTimePermission()I

    .line 134
    invoke-virtual {p0}, Lcom/android/server/enterprise/DateTimePolicy;->getAutomaticTime()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0}, Lcom/android/server/enterprise/DateTimePolicy;->isDateTimeChangeEnabled()Z

    move-result v3

    if-nez v3, :cond_11

    .line 154
    :cond_10
    :goto_10
    return v2

    .line 142
    :cond_11
    const-wide/16 v3, 0x3e8

    div-long v3, p1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_10

    .line 144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 146
    .local v0, token:J
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public setDateTimeChangeEnabled(Z)Z
    .registers 6
    .parameter "enable"

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/server/enterprise/DateTimePolicy;->enforceDateTimePermission()I

    move-result v0

    .line 409
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "DateTimeEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setTimeFormat(Ljava/lang/String;)Z
    .registers 8
    .parameter "format"

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/server/enterprise/DateTimePolicy;->enforceDateTimePermission()I

    .line 217
    const-string v4, "12"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "24"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 219
    const/4 v0, 0x0

    .line 237
    .local v0, ret:Z
    :goto_14
    return v0

    .line 223
    .end local v0           #ret:Z
    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 225
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_12_24"

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 229
    .restart local v0       #ret:Z
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.TIME_SET"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v1, timeChanged:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 233
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14
.end method

.method public setTimeZone(Ljava/lang/String;)Z
    .registers 7
    .parameter "timeZone"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/server/enterprise/DateTimePolicy;->enforceDateTimePermission()I

    .line 178
    invoke-virtual {p0}, Lcom/android/server/enterprise/DateTimePolicy;->getAutomaticTime()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p0}, Lcom/android/server/enterprise/DateTimePolicy;->isDateTimeChangeEnabled()Z

    move-result v3

    if-nez v3, :cond_11

    .line 180
    :cond_f
    const/4 v3, 0x0

    .line 194
    :goto_10
    return v3

    .line 186
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 188
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/DateTimePolicy;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 190
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 192
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    const/4 v3, 0x1

    goto :goto_10
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 393
    return-void
.end method

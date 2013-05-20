.class Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Weather"
.end annotation


# static fields
.field public static final KEY_HIGH_TEMP:Ljava/lang/String; = "aw_daemon_service_key_high_temp"

.field public static final KEY_LOW_TEMP:Ljava/lang/String; = "aw_daemon_service_key_low_temp"


# instance fields
.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

.field private final KEY_APP_SERVICE_STATUS:Ljava/lang/String;

.field private final KEY_CITY_ID:Ljava/lang/String;

.field private final KEY_CITY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final LOCK_SCREEN_SERVICE_CODE:I

.field private final MSG_WEATHER_DATA_UPDATED:I

.field private final MSG_WEATHER_SETTING_CHANGED:I

.field private final TEMP_SCALE_CENTIGRADE:I

.field private final TEMP_SCALE_FAHRENHEIT:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIsWeatherDateAvailable:Z

.field private mNoServiceText:Landroid/widget/TextView;

.field private mTemperatureUnit:Landroid/widget/ImageView;

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherDataBox:Landroid/widget/LinearLayout;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherLogo:Landroid/widget/ImageView;

.field private mWeatherTemperature:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 270
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 227
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 228
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 231
    const-string v0, "aw_daemon_service_key_app_service_status"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_APP_SERVICE_STATUS:Ljava/lang/String;

    .line 232
    const-string v0, "aw_daemon_service_key_loc_code"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_CITY_ID:Ljava/lang/String;

    .line 233
    const-string v0, "aw_daemon_service_key_current_temp"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 234
    const-string v0, "aw_daemon_service_key_temp_scale"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 235
    const-string v0, "aw_daemon_service_key_icon_num"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_ICON_NUM:Ljava/lang/String;

    .line 236
    const-string v0, "aw_daemon_service_key_city_name"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_CITY_NAME:Ljava/lang/String;

    .line 245
    iput v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->LOCK_SCREEN_SERVICE_CODE:I

    .line 248
    const/16 v0, 0x12c0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->MSG_WEATHER_SETTING_CHANGED:I

    .line 249
    const/16 v0, 0x12c1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->MSG_WEATHER_DATA_UPDATED:I

    .line 252
    iput v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->TEMP_SCALE_FAHRENHEIT:I

    .line 253
    iput v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->TEMP_SCALE_CENTIGRADE:I

    .line 255
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 272
    new-instance v0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$1;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    .line 283
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setFocusableInTouchMode(Z)V

    .line 284
    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setMarquee(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method private checkIsDayOrNight()Z
    .registers 6

    .prologue
    .line 656
    const/16 v0, 0x258

    .line 657
    .local v0, mnSunriseTime:I
    const/16 v1, 0x708

    .line 659
    .local v1, mnSunsetTime:I
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getMinutes()I

    move-result v4

    add-int v2, v3, v4

    .line 661
    .local v2, nCurTime:I
    const/16 v3, 0x23a

    if-lt v2, v3, :cond_24

    const/16 v3, 0x726

    if-gt v2, v3, :cond_24

    .line 662
    const/4 v3, 0x0

    .line 666
    :goto_23
    return v3

    :cond_24
    const/4 v3, 0x1

    goto :goto_23
.end method

.method private findDrawableId(I)I
    .registers 3
    .parameter "weatherIconNum"

    .prologue
    const/4 v0, 0x0

    .line 471
    packed-switch p1, :pswitch_data_38

    .line 533
    :goto_4
    :pswitch_4
    return v0

    .line 478
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 482
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 484
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 489
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 491
    :pswitch_d
    const/4 v0, 0x5

    goto :goto_4

    .line 495
    :pswitch_f
    const/4 v0, 0x6

    goto :goto_4

    .line 498
    :pswitch_11
    const/4 v0, 0x7

    goto :goto_4

    .line 500
    :pswitch_13
    const/16 v0, 0x8

    goto :goto_4

    .line 503
    :pswitch_16
    const/16 v0, 0x9

    goto :goto_4

    .line 506
    :pswitch_19
    const/16 v0, 0xa

    goto :goto_4

    .line 510
    :pswitch_1c
    const/16 v0, 0xb

    goto :goto_4

    .line 514
    :pswitch_1f
    const/16 v0, 0xc

    goto :goto_4

    .line 516
    :pswitch_22
    const/16 v0, 0xd

    goto :goto_4

    .line 518
    :pswitch_25
    const/16 v0, 0xe

    goto :goto_4

    .line 520
    :pswitch_28
    const/16 v0, 0xf

    goto :goto_4

    .line 522
    :pswitch_2b
    const/16 v0, 0x10

    goto :goto_4

    .line 524
    :pswitch_2e
    const/16 v0, 0x11

    goto :goto_4

    .line 529
    :pswitch_31
    const/16 v0, 0x12

    goto :goto_4

    .line 531
    :pswitch_34
    const/16 v0, 0x13

    goto :goto_4

    .line 471
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_19
        :pswitch_1c
        :pswitch_1c
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_4
        :pswitch_4
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_34
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_f
        :pswitch_16
        :pswitch_1c
    .end packed-switch
.end method

.method private findDrawableIdForKweather(I)I
    .registers 4
    .parameter "weatherIconNum"

    .prologue
    const/4 v1, 0x0

    .line 585
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->checkIsDayOrNight()Z

    move-result v0

    .line 586
    .local v0, isNight:Z
    packed-switch p1, :pswitch_data_36

    .line 650
    :cond_8
    :goto_8
    return v1

    .line 588
    :pswitch_9
    if-eqz v0, :cond_8

    .line 589
    const/16 v1, 0x12

    goto :goto_8

    .line 595
    :pswitch_e
    if-eqz v0, :cond_13

    .line 596
    const/16 v1, 0x13

    goto :goto_8

    .line 598
    :cond_13
    const/4 v1, 0x1

    goto :goto_8

    .line 601
    :pswitch_15
    if-eqz v0, :cond_1a

    .line 602
    const/16 v1, 0x14

    goto :goto_8

    .line 604
    :cond_1a
    const/4 v1, 0x2

    goto :goto_8

    .line 606
    :pswitch_1c
    const/4 v1, 0x3

    goto :goto_8

    .line 608
    :pswitch_1e
    const/4 v1, 0x4

    goto :goto_8

    .line 611
    :pswitch_20
    const/4 v1, 0x5

    goto :goto_8

    .line 613
    :pswitch_22
    const/4 v1, 0x6

    goto :goto_8

    .line 622
    :pswitch_24
    const/16 v1, 0x8

    goto :goto_8

    .line 626
    :pswitch_27
    const/16 v1, 0x9

    goto :goto_8

    .line 630
    :pswitch_2a
    const/16 v1, 0xa

    goto :goto_8

    .line 636
    :pswitch_2d
    const/16 v1, 0xb

    goto :goto_8

    .line 642
    :pswitch_30
    const/16 v1, 0xd

    goto :goto_8

    .line 648
    :pswitch_33
    const/16 v1, 0xe

    goto :goto_8

    .line 586
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_9
        :pswitch_e
        :pswitch_15
        :pswitch_15
        :pswitch_e
        :pswitch_e
        :pswitch_1e
        :pswitch_20
        :pswitch_20
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_22
        :pswitch_1c
    .end packed-switch
.end method

.method private findDrawableIdForSina(I)I
    .registers 5
    .parameter "weatherIconNum"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 539
    packed-switch p1, :pswitch_data_2c

    .line 580
    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    move v0, v1

    .line 543
    goto :goto_6

    .line 546
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_6

    :pswitch_b
    move v0, v1

    .line 548
    goto :goto_6

    .line 552
    :pswitch_d
    const/4 v0, 0x2

    goto :goto_6

    .line 554
    :pswitch_f
    const/16 v0, 0x11

    goto :goto_6

    .line 556
    :pswitch_12
    const/4 v0, 0x5

    goto :goto_6

    :pswitch_14
    move v0, v2

    .line 558
    goto :goto_6

    .line 560
    :pswitch_16
    const/16 v0, 0x8

    goto :goto_6

    .line 563
    :pswitch_19
    const/4 v0, 0x6

    goto :goto_6

    .line 565
    :pswitch_1b
    const/16 v0, 0xe

    goto :goto_6

    .line 570
    :pswitch_1e
    const/16 v0, 0xb

    goto :goto_6

    .line 572
    :pswitch_21
    const/16 v0, 0x12

    goto :goto_6

    .line 574
    :pswitch_24
    const/16 v0, 0x13

    goto :goto_6

    .line 576
    :pswitch_27
    const/16 v0, 0x14

    goto :goto_6

    :pswitch_2a
    move v0, v2

    .line 578
    goto :goto_6

    .line 539
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_f
        :pswitch_12
        :pswitch_14
        :pswitch_16
        :pswitch_19
        :pswitch_19
        :pswitch_1b
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method private setMarquee(Z)V
    .registers 5
    .parameter "on"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 695
    if-eqz p1, :cond_f

    .line 696
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 697
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 702
    :goto_e
    return-void

    .line 699
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 700
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_e
.end method

.method private setWeatherIcon(I)V
    .registers 6
    .parameter "iconNum"

    .prologue
    .line 450
    const/16 v2, 0x15

    new-array v1, v2, [I

    fill-array-data v1, :array_2a

    .line 458
    .local v1, unlock_weather_drawables:[I
    const/4 v0, 0x0

    .line 459
    .local v0, i:I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 460
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findDrawableIdForSina(I)I

    move-result v0

    .line 466
    :goto_12
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 467
    return-void

    .line 461
    :cond_1a
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 462
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findDrawableIdForKweather(I)I

    move-result v0

    goto :goto_12

    .line 464
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findDrawableId(I)I

    move-result v0

    goto :goto_12

    .line 450
    :array_2a
    .array-data 0x4
        0x9et 0x4t 0x8t 0x1t
        0x9ft 0x4t 0x8t 0x1t
        0xa0t 0x4t 0x8t 0x1t
        0xa1t 0x4t 0x8t 0x1t
        0xa2t 0x4t 0x8t 0x1t
        0xa3t 0x4t 0x8t 0x1t
        0xa4t 0x4t 0x8t 0x1t
        0xa5t 0x4t 0x8t 0x1t
        0xa6t 0x4t 0x8t 0x1t
        0xa7t 0x4t 0x8t 0x1t
        0xa8t 0x4t 0x8t 0x1t
        0xa9t 0x4t 0x8t 0x1t
        0xa9t 0x4t 0x8t 0x1t
        0xaat 0x4t 0x8t 0x1t
        0xabt 0x4t 0x8t 0x1t
        0xact 0x4t 0x8t 0x1t
        0xadt 0x4t 0x8t 0x1t
        0xaet 0x4t 0x8t 0x1t
        0xaft 0x4t 0x8t 0x1t
        0xb0t 0x4t 0x8t 0x1t
        0xb1t 0x4t 0x8t 0x1t
    .end array-data
.end method


# virtual methods
.method public getTTSMessage()Ljava/lang/String;
    .registers 11

    .prologue
    const v9, 0x1040667

    const/4 v5, 0x1

    .line 672
    const-string v0, ""

    .line 674
    .local v0, TTSMessage:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    if-nez v6, :cond_c

    move-object v1, v0

    .line 691
    .end local v0           #TTSMessage:Ljava/lang/String;
    .local v1, TTSMessage:Ljava/lang/String;
    :goto_b
    return-object v1

    .line 677
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_c
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_temp_scale"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_91

    .line 678
    .local v5, isCelsius:Z
    :goto_1a
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_current_temp"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    .line 679
    .local v4, currentTemp:F
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_weather_text"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 682
    .local v3, TtsWeather:Ljava/lang/String;
    if-eqz v5, :cond_93

    .line 683
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    const v8, 0x1040665

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 687
    .local v2, TtsDegreeText:Ljava/lang/String;
    :goto_5b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    const-string v6, "ClockWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TTS Message = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 691
    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto/16 :goto_b

    .line 677
    .end local v1           #TTSMessage:Ljava/lang/String;
    .end local v2           #TtsDegreeText:Ljava/lang/String;
    .end local v3           #TtsWeather:Ljava/lang/String;
    .end local v4           #currentTemp:F
    .end local v5           #isCelsius:Z
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_91
    const/4 v5, 0x0

    goto :goto_1a

    .line 685
    .restart local v3       #TtsWeather:Ljava/lang/String;
    .restart local v4       #currentTemp:F
    .restart local v5       #isCelsius:Z
    :cond_93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    const v8, 0x1040666

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #TtsDegreeText:Ljava/lang/String;
    goto :goto_5b
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 288
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 290
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 291
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 292
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 296
    :cond_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_32

    .line 298
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 299
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    new-instance v1, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$2;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 317
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_32
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->updateWeatherInfo()V

    .line 322
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 326
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 333
    :cond_e
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const v2, 0x10202e5

    .line 337
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 338
    const v0, 0x10202df

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const v1, 0x104065a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 340
    const v0, 0x10202e0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    .line 341
    const v0, 0x10202e4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    .line 342
    const v0, 0x10202e1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    .line 343
    const v0, 0x10202e3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    .line 344
    const v0, 0x10202e2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    .line 346
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 347
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    const v1, 0x1080416

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    :cond_66
    :goto_66
    return-void

    .line 349
    :cond_67
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 350
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    const v1, 0x108040d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_66
.end method

.method public setGravity(I)V
    .registers 3
    .parameter "gravity"

    .prologue
    .line 706
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 707
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 708
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 709
    return-void
.end method

.method public updateWeatherInfo()V
    .registers 13

    .prologue
    .line 361
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_app_service_status"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 362
    .local v6, mAppServiceStatus:I
    and-int/lit8 v9, v6, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13f

    const/4 v4, 0x1

    .line 364
    .local v4, isServiceEnable:Z
    :goto_13
    const-string v0, ""

    .line 365
    .local v0, cityId:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v9

    if-eqz v9, :cond_142

    .line 366
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_city_name"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    :goto_27
    const-string v9, "ClockWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isServiceEnable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cityId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    if-eqz v4, :cond_150

    if-eqz v0, :cond_150

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_150

    .line 376
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is running, And data is ready"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setVisibility(I)V

    .line 378
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 400
    const/4 v5, 0x0

    .line 401
    .local v5, lowTemp:I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v9

    if-eqz v9, :cond_186

    .line 402
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_high_temp"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v9

    float-to-int v2, v9

    .line 403
    .local v2, currentTemp:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_low_temp"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v9

    float-to-int v5, v9

    .line 408
    :goto_91
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_temp_scale"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 409
    .local v7, tempScale:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_icon_num"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 410
    .local v3, iconNum:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_city_name"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, cityName:Ljava/lang/String;
    const-string v9, "ClockWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Weather Data : currentTemp = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tempScale = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " iconNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cityName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v9

    if-eqz v9, :cond_196

    .line 422
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 423
    .local v8, text_currentTemp:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 424
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 431
    :goto_124
    const/4 v9, 0x1

    if-ne v7, v9, :cond_19b

    .line 432
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    const v10, 0x1080407

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 437
    :cond_12f
    :goto_12f
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setWeatherIcon(I)V

    .line 441
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->getTTSMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 442
    .end local v1           #cityName:Ljava/lang/String;
    .end local v2           #currentTemp:I
    .end local v3           #iconNum:I
    .end local v5           #lowTemp:I
    .end local v7           #tempScale:I
    .end local v8           #text_currentTemp:Ljava/lang/String;
    :goto_13e
    return-void

    .line 362
    .end local v0           #cityId:Ljava/lang/String;
    .end local v4           #isServiceEnable:Z
    :cond_13f
    const/4 v4, 0x0

    goto/16 :goto_13

    .line 368
    .restart local v0       #cityId:Ljava/lang/String;
    .restart local v4       #isServiceEnable:Z
    :cond_142
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_loc_code"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_27

    .line 381
    :cond_150
    if-eqz v4, :cond_176

    if-eqz v0, :cond_15a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_176

    .line 383
    :cond_15a
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is running, But data is not ready"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setVisibility(I)V

    .line 385
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    goto :goto_13e

    .line 391
    :cond_176
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is not running, Set visibility to GONE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setVisibility(I)V

    .line 393
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    goto :goto_13e

    .line 406
    .restart local v5       #lowTemp:I
    :cond_186
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_current_temp"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v9

    float-to-int v2, v9

    .restart local v2       #currentTemp:I
    goto/16 :goto_91

    .line 427
    .restart local v1       #cityName:Ljava/lang/String;
    .restart local v3       #iconNum:I
    .restart local v7       #tempScale:I
    :cond_196
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #text_currentTemp:Ljava/lang/String;
    goto :goto_124

    .line 433
    :cond_19b
    if-nez v7, :cond_12f

    .line 434
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    const v10, 0x108040b

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_12f
.end method

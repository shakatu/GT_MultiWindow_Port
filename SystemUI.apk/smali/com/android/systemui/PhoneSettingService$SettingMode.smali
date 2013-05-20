.class public final enum Lcom/android/systemui/PhoneSettingService$SettingMode;
.super Ljava/lang/Enum;
.source "PhoneSettingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/PhoneSettingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/PhoneSettingService$SettingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum AllShareCast:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum AutoRotate:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum Bluetooth:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum Dormant:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum Location:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum MobileData:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum PowerSaving:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum Silent:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum Sync:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum Wifi:Lcom/android/systemui/PhoneSettingService$SettingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "Silent"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->Silent:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "Location"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->Location:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "Wifi"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->Wifi:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "AutoRotate"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->AutoRotate:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "PowerSaving"

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->PowerSaving:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "Dormant"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->Dormant:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "MobileData"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->MobileData:Lcom/android/systemui/PhoneSettingService$SettingMode;

    .line 56
    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "Bluetooth"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->Bluetooth:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "AllShareCast"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->AllShareCast:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "Sync"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->Sync:Lcom/android/systemui/PhoneSettingService$SettingMode;

    .line 54
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/systemui/PhoneSettingService$SettingMode;

    sget-object v1, Lcom/android/systemui/PhoneSettingService$SettingMode;->Silent:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/PhoneSettingService$SettingMode;->Location:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/PhoneSettingService$SettingMode;->Wifi:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/PhoneSettingService$SettingMode;->AutoRotate:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/PhoneSettingService$SettingMode;->PowerSaving:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->Dormant:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->MobileData:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->Bluetooth:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->AllShareCast:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->Sync:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->$VALUES:[Lcom/android/systemui/PhoneSettingService$SettingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/PhoneSettingService$SettingMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 54
    const-class v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/PhoneSettingService$SettingMode;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->$VALUES:[Lcom/android/systemui/PhoneSettingService$SettingMode;

    invoke-virtual {v0}, [Lcom/android/systemui/PhoneSettingService$SettingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/PhoneSettingService$SettingMode;

    return-object v0
.end method

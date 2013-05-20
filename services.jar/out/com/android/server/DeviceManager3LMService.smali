.class public final Lcom/android/server/DeviceManager3LMService;
.super Landroid/os/IDeviceManager3LM$Stub;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;,
        Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;,
        Lcom/android/server/DeviceManager3LMService$RulesEngine;
    }
.end annotation


# instance fields
.field public final MAX_WAIT_TIME:J

.field public final STATE_DISABLED:I

.field public final STATE_ENABLED:I

.field public final STATE_UNSUPPORTED:I

.field public final WAIT_TIME_INCR:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/IDeviceManager3LM$Stub;-><init>()V

    .line 25
    const-wide/16 v0, 0x61a8

    iput-wide v0, p0, Lcom/android/server/DeviceManager3LMService;->MAX_WAIT_TIME:J

    .line 26
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/DeviceManager3LMService;->WAIT_TIME_INCR:J

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DeviceManager3LMService;->STATE_UNSUPPORTED:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DeviceManager3LMService;->STATE_DISABLED:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/DeviceManager3LMService;->STATE_ENABLED:I

    .line 397
    return-void
.end method

.method private getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "pkgName"

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/DeviceManager3LMService;
    .registers 2

    .prologue
    .line 33
    const-class v0, Lcom/android/server/DeviceManager3LMService;

    monitor-enter v0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1
.end method

.method private initAndroidIds()V
    .registers 1

    .prologue
    .line 55
    return-void
.end method

.method private isAccessPermitted()Z
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method private isBootLocked(Ljava/lang/String;)Z
    .registers 3
    .parameter "pkgName"

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method private notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 6
    .parameter "id"
    .parameter "notificationBar"
    .parameter "title"
    .parameter "text"
    .parameter "intent"

    .prologue
    .line 79
    return-void
.end method

.method private setPackageState(Ljava/lang/String;I)V
    .registers 3
    .parameter "pkgName"
    .parameter "state"

    .prologue
    .line 116
    return-void
.end method

.method private updateNetworkRules(Lcom/android/server/DeviceManager3LMService$RulesEngine;)V
    .registers 2
    .parameter "re"

    .prologue
    .line 323
    return-void
.end method


# virtual methods
.method public addApn(Ljava/util/Map;)V
    .registers 2
    .parameter "list"

    .prologue
    .line 377
    return-void
.end method

.method public blockAdb(Z)V
    .registers 2
    .parameter "block"

    .prologue
    .line 287
    return-void
.end method

.method public blockScreenshot(Z)V
    .registers 2
    .parameter "block"

    .prologue
    .line 363
    return-void
.end method

.method public blockTethering(Z)V
    .registers 2
    .parameter "block"

    .prologue
    .line 356
    return-void
.end method

.method public blockUsb(Z)V
    .registers 2
    .parameter "block"

    .prologue
    .line 301
    return-void
.end method

.method public checkAppInstallPolicies(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .registers 5
    .parameter "pkgName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 157
    .local p2, requestedPermissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, pkgSigs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public checkAppUninstallPolicies(Ljava/lang/String;)Z
    .registers 3
    .parameter "pkgName"

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public checkPrimaryClipAccess(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public checkSignature(I)Z
    .registers 3
    .parameter "uid"

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public checkUidPermission(Ljava/lang/String;I)Z
    .registers 4
    .parameter "permName"
    .parameter "uid"

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public checkVpnDns(Ljava/lang/String;)Z
    .registers 3
    .parameter "vpnSuffixes"

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method

.method public clearApn()V
    .registers 1

    .prologue
    .line 380
    return-void
.end method

.method public clearApplicationUserData(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public clearPackagePermissions()V
    .registers 1

    .prologue
    .line 343
    return-void
.end method

.method public completePackageScan(II)V
    .registers 3
    .parameter "scanId"
    .parameter "result"

    .prologue
    .line 353
    return-void
.end method

.method public connectToVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "abstractSocketName"
    .parameter "vpnSubnets"

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public deletePackage(Ljava/lang/String;Z)V
    .registers 3
    .parameter "pkgName"
    .parameter "deleteData"

    .prologue
    .line 141
    return-void
.end method

.method public disablePackage(Ljava/lang/String;)V
    .registers 2
    .parameter "pkgName"

    .prologue
    .line 110
    return-void
.end method

.method public disconnectFromVpn(Z)Z
    .registers 3
    .parameter "doReset"

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public enablePackage(Ljava/lang/String;)V
    .registers 2
    .parameter "pkgName"

    .prologue
    .line 113
    return-void
.end method

.method public encryptPackage(Ljava/lang/String;ZZ)V
    .registers 4
    .parameter "pkgName"
    .parameter "encrypt"
    .parameter "required"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 259
    return-void
.end method

.method public getBluetoothEnabled()Z
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public getNfcState()I
    .registers 2

    .prologue
    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public getOtaDelay()I
    .registers 2

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public getOwnerInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerInfoEnabled()I
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .registers 3
    .parameter "pkgName"

    .prologue
    .line 265
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getPackageScanner()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 349
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiState()I
    .registers 2

    .prologue
    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 37
    return-void
.end method

.method public installPackage(Ljava/lang/String;)V
    .registers 2
    .parameter "packageURIAsString"

    .prologue
    .line 138
    return-void
.end method

.method public isAdbBlocked()Z
    .registers 2

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public isAdminLocked()Z
    .registers 2

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public isApnLocked()Z
    .registers 2

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public isDataEncrypted()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public isDataEncryptionRequired()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public isPackage3LM(Ljava/lang/String;)Z
    .registers 3
    .parameter "pkg"

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageDisabled(Ljava/lang/String;)Z
    .registers 3
    .parameter "pkgName"

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageEncrypted(Ljava/lang/String;)Z
    .registers 3
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageEncryptionRequired(Ljava/lang/String;)Z
    .registers 3
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public isScreenshotBlocked()Z
    .registers 2

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public isSdEncrypted()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public isSdEncryptionRequired()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public isSsidAllowed(Ljava/lang/String;)Z
    .registers 3
    .parameter "ssid"

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public isTetheringBlocked()Z
    .registers 2

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbBlocked()Z
    .registers 2

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "oldPassword"
    .parameter "newPassword"

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreContains(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreDeleteKey(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public keyStoreGetLastError()I
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreLock()Z
    .registers 2

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "name"
    .parameter "key"

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreReset()Z
    .registers 2

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreSetPassword(Ljava/lang/String;)V
    .registers 2
    .parameter "password"

    .prologue
    .line 193
    return-void
.end method

.method public keyStoreTest()I
    .registers 2

    .prologue
    .line 177
    const/4 v0, -0x1

    return v0
.end method

.method public keyStoreUnlock(Ljava/lang/String;)Z
    .registers 3
    .parameter "password"

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public lockAdmin(Z)V
    .registers 2
    .parameter "lock"

    .prologue
    .line 294
    return-void
.end method

.method public lockApn(Z)V
    .registers 2
    .parameter "lock"

    .prologue
    .line 370
    return-void
.end method

.method public notification(III)V
    .registers 4
    .parameter "barId"
    .parameter "titleId"
    .parameter "textId"

    .prologue
    .line 330
    return-void
.end method

.method public putSettingsSecureInt(Ljava/lang/String;I)Z
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public restoreDefaultApns()V
    .registers 1

    .prologue
    .line 383
    return-void
.end method

.method public restoreOriginalDns(Ljava/lang/String;)Z
    .registers 3
    .parameter "vpnSuffixes"

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public setAllowedPackages(Ljava/util/Map;)Z
    .registers 3
    .parameter "pkgNames"

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public setAppInstallPermissionPolicies(Ljava/util/Map;)Z
    .registers 3
    .parameter "permNameRegexPermMap"

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public setAppInstallPkgNamePolicies(Ljava/util/Map;)Z
    .registers 3
    .parameter "pkgNameRegexPermMap"

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public setAppInstallPubkeyPolicies(Ljava/util/Map;)Z
    .registers 3
    .parameter "pubkeyRegexPermMap"

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z
    .registers 3
    .parameter "uninstallPkgNameRegexPermMap"

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public setBluetoothEnabled(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 131
    return-void
.end method

.method public setBootLock(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 61
    return-void
.end method

.method public setDataEncryptionRequired(Z)V
    .registers 2
    .parameter "required"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    return-void
.end method

.method public setLocationProviderEnabled(Ljava/lang/String;Z)V
    .registers 3
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 52
    return-void
.end method

.method public setNfcState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 273
    return-void
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 75
    return-void
.end method

.method public setOtaDelay(I)V
    .registers 2
    .parameter "delay"

    .prologue
    .line 308
    return-void
.end method

.method public setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .parameter "permName"
    .parameter "pkgName"
    .parameter "enable"

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public setPackageScanner(Ljava/lang/String;ZI)V
    .registers 4
    .parameter "scannerComponent"
    .parameter "failOnTimeout"
    .parameter "timeoutMillis"

    .prologue
    .line 346
    return-void
.end method

.method public setPrimaryClipOwner(I)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 336
    return-void
.end method

.method public setSdEncryptionRequired(Z)V
    .registers 2
    .parameter "required"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    return-void
.end method

.method public setSecureClipboard(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setSsidFilter(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, filter:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setWifiState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 280
    return-void
.end method

.method public setupVpnDns(Ljava/lang/String;)Z
    .registers 3
    .parameter "vpnSuffixes"

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public unlock()V
    .registers 1

    .prologue
    .line 64
    return-void
.end method

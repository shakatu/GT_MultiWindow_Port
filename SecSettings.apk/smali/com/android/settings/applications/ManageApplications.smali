.class public Lcom/android/settings/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/settings/applications/AppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;,
        Lcom/android/settings/applications/ManageApplications$TabInfo;
    }
.end annotation


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mOptionsMenu:Landroid/view/Menu;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSortOrder:I

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 174
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 460
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    .line 1251
    new-instance v0, Lcom/android/settings/applications/ManageApplications$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$2;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/ManageApplications;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/ManageApplications;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 1004
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1005
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1008
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090591

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1010
    return-void
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 1096
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1097
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1098
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0905b3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1099
    const v1, 0x7f0905b4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1100
    const v1, 0x7f0905b5

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1101
    const v1, 0x7f09012b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1102
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1103
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1105
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 986
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 989
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1118
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1119
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1121
    .local v3, nm:Landroid/app/INotificationManager;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    .line 1122
    .local v4, npm:Landroid/net/NetworkPolicyManager;
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1123
    .local v5, handler:Landroid/os/Handler;
    new-instance v0, Lcom/android/settings/applications/ManageApplications$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/ManageApplications$1;-><init>(Lcom/android/settings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1184
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #nm:Landroid/app/INotificationManager;
    .end local v4           #npm:Landroid/net/NetworkPolicyManager;
    .end local v5           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 815
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 817
    invoke-virtual {p0, v8}, Lcom/android/settings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 819
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 820
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 821
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 823
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    :goto_0
    if-nez v0, :cond_0

    .line 826
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 828
    :cond_0
    const-class v1, Lcom/android/settings/Settings$RunningServicesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".RunningServices"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    move v1, v8

    .line 841
    :goto_1
    if-eqz p1, :cond_8

    .line 842
    const-string v0, "sortOrder"

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 843
    const-string v0, "defaultListType"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 844
    if-eq v0, v5, :cond_7

    .line 845
    :goto_2
    const-string v1, "showBackground"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 848
    :goto_3
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    .line 850
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 852
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v8}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 854
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905d4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 855
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905d3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 857
    new-instance v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0905ba

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 860
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 863
    new-instance v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0905bc

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 866
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    :cond_2
    new-instance v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0905bb

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v8

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 872
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    new-instance v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0905b9

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v7

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 877
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    return-void

    .line 823
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 831
    :cond_4
    const-class v1, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".StorageUse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 834
    :cond_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    move v1, v7

    .line 835
    goto/16 :goto_1

    .line 836
    :cond_6
    const-string v0, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v1, v7

    .line 838
    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_3

    :cond_9
    move v1, v4

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1014
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1018
    const v0, 0x7f0905ae

    invoke-interface {p1, v3, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02014d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1021
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f0905af

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02014e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1024
    const/4 v0, 0x6

    const v1, 0x7f0905b0

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1026
    const/4 v0, 0x7

    const v1, 0x7f0905b1

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1028
    const/16 v0, 0x8

    const v1, 0x7f0905b2

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020327

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1031
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1032
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 884
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 886
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040081

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 888
    .local v2, rootView:Landroid/view/View;
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 889
    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 891
    const v5, 0x7f0b015c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 892
    new-instance v0, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    .line 893
    .local v0, adapter:Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 894
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 895
    const v5, 0x7f0b015d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/PagerTabStrip;

    .line 896
    .local v4, tabs:Landroid/support/v4/view/PagerTabStrip;
    const v5, 0x1060012

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 900
    instance-of v5, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 901
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 904
    :cond_0
    if-eqz p3, :cond_1

    const-string v5, "resetDialog"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 905
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->buildResetDialog()V

    .line 908
    :cond_1
    if-nez p3, :cond_2

    .line 910
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 911
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 912
    .local v3, tab:Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget v5, v3, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    iget v6, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    if-ne v5, v6, :cond_3

    .line 913
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 919
    .end local v1           #i:I
    .end local v3           #tab:Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_2
    return-object v2

    .line 910
    .restart local v1       #i:I
    .restart local v3       #tab:Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1046
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1047
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1048
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1041
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1042
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 970
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 972
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 973
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 974
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 979
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 980
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->detachView()V

    .line 979
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 982
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1112
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/android/settings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "tab"
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1216
    .local p2, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 1217
    iget-object v1, p1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1218
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1219
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 1221
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1188
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1189
    .local v0, menuId:I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 1190
    :cond_0
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 1191
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_1

    .line 1192
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 1210
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    move v1, v2

    .line 1211
    :cond_2
    return v1

    .line 1194
    :cond_3
    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    .line 1195
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1196
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1197
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1199
    :cond_4
    const/4 v3, 0x7

    if-ne v0, v3, :cond_5

    .line 1200
    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1201
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1202
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1204
    :cond_5
    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    .line 1205
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->buildResetDialog()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 950
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 951
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 952
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 953
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->pause()V

    .line 952
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 955
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1036
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1037
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 929
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 930
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 931
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->updateCurrentTab(I)V

    .line 932
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 933
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 937
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 938
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 939
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 940
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 942
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 943
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 944
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 946
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 924
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 925
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 959
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 966
    return-void
.end method

.method tabForType(I)Lcom/android/settings/applications/ManageApplications$TabInfo;
    .locals 3
    .parameter "type"

    .prologue
    .line 992
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 993
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 994
    .local v1, tab:Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget v2, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, p1, :cond_0

    .line 998
    .end local v1           #tab:Lcom/android/settings/applications/ManageApplications$TabInfo;
    :goto_1
    return-object v1

    .line 992
    .restart local v1       #tab:Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 998
    .end local v1           #tab:Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateCurrentTab(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 1224
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1225
    .local v3, tab:Lcom/android/settings/applications/ManageApplications$TabInfo;
    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1228
    iget-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v4, :cond_1

    .line 1229
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/settings/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1230
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v5, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1234
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1235
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1236
    .local v2, t:Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eq v2, v4, :cond_0

    .line 1237
    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplications$TabInfo;->pause()V

    .line 1234
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1232
    .end local v1           #i:I
    .end local v2           #t:Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/settings/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 1241
    .restart local v1       #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/settings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 1242
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1243
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1244
    .local v0, host:Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 1245
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1247
    :cond_3
    return-void
.end method

.method updateOptionsMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1051
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v4, :cond_0

    .line 1093
    :goto_0
    return-void

    .line 1059
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v4, v4, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v4, v3, :cond_3

    .line 1060
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/ManageApplications;->tabForType(I)Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-result-object v1

    .line 1061
    .local v1, tab:Lcom/android/settings/applications/ManageApplications$TabInfo;
    if-eqz v1, :cond_1

    #getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v4

    if-eqz v4, :cond_1

    #getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 1063
    .local v0, showingBackground:Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1064
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1065
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1066
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_2

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1067
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0           #showingBackground:Z
    :cond_1
    move v0, v2

    .line 1061
    goto :goto_1

    .restart local v0       #showingBackground:Z
    :cond_2
    move v3, v2

    .line 1066
    goto :goto_2

    .line 1069
    .end local v0           #showingBackground:Z
    .end local v1           #tab:Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v6, :cond_4

    move v4, v3

    :goto_3
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1070
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v7, :cond_5

    move v4, v3

    :goto_4
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1071
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1072
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1073
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    move v4, v2

    .line 1069
    goto :goto_3

    :cond_5
    move v4, v2

    .line 1070
    goto :goto_4
.end method

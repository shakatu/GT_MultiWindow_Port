.class Lcom/android/server/InputMethodManagerService$InputMethodSettings;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputMethodSettings"
.end annotation


# static fields
.field private static final INPUT_METHOD_SEPARATER:C = ':'

.field private static final INPUT_METHOD_SUBTYPE_SEPARATER:C = ';'


# instance fields
.field private mEnabledInputMethodsStrCache:Ljava/lang/String;

.field private final mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRes:Landroid/content/res/Resources;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .registers 7
    .parameter "res"
    .parameter "resolver"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3737
    .local p3, methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p4, methodList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3710
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 3713
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 3738
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mRes:Landroid/content/res/Resources;

    .line 3739
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    .line 3740
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    .line 3741
    iput-object p4, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mMethodList:Ljava/util/ArrayList;

    .line 3742
    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/InputMethodManagerService$InputMethodSettings;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3705
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V
    .registers 7
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 3725
    .local p1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 3726
    .local v1, id:Ljava/lang/String;
    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 3727
    .local v3, subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3730
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3731
    .local v2, subtypeId:Ljava/lang/String;
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 3733
    .end local v2           #subtypeId:Ljava/lang/String;
    :cond_25
    return-void
.end method

.method private createEnabledInputMethodAndSubtypeHashCodeListLocked(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 3890
    .local p1, imsList:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3892
    .local v3, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3893
    .local v1, ims:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 3894
    .local v2, info:Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_9

    .line 3895
    new-instance v4, Landroid/util/Pair;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v4, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 3898
    .end local v1           #ims:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v2           #info:Landroid/view/inputmethod/InputMethodInfo;
    :cond_2c
    return-object v3
.end method

.method private createEnabledInputMethodListLocked(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3867
    .local p1, imsList:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3868
    .local v3, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3869
    .local v1, ims:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 3870
    .local v2, info:Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_9

    .line 3871
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Framework_JapaneseHWR"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sevenknowledge.sevennotesproduct.samsung/com.sevenknowledge.mazec.MazecIms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 3875
    :cond_39
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Framework_NTTVoiceInput"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.nttdocomo.android.voiceeditor/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 3880
    :cond_51
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 3884
    .end local v1           #ims:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v2           #info:Landroid/view/inputmethod/InputMethodInfo;
    :cond_55
    return-object v3
.end method

.method private getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 3798
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3800
    .local v2, imsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object v0

    .line 3801
    .local v0, enabledInputMethodsStr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3818
    :cond_f
    return-object v2

    .line 3804
    :cond_10
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 3805
    :cond_15
    :goto_15
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3806
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 3807
    .local v3, nextImsStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 3808
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 3809
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3811
    .local v4, subtypeHashes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 3812
    .local v1, imeId:Ljava/lang/String;
    :goto_3b
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 3813
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 3815
    :cond_4d
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method

.method private getEnabledInputMethodsStr()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3907
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "enabled_input_methods"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    .line 3912
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    return-object v0
.end method

.method private getEnabledSubtypeHashCodeForInputMethodAndSubtypeLocked(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter
    .parameter "imeId"
    .parameter "subtypeHashCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4011
    .local p1, enabledImes:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_91

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 4012
    .local v2, enabledIme:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v11, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 4013
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 4014
    .local v3, explicitlyEnabledSubtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v11, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 4015
    .local v7, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_5b

    .line 4020
    if-eqz v7, :cond_8c

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v11

    if-lez v11, :cond_8c

    .line 4021
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mRes:Landroid/content/res/Resources;

    #calls: Lcom/android/server/InputMethodManagerService;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    invoke-static {v11, v7}, Lcom/android/server/InputMethodManagerService;->access$2600(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v8

    .line 4023
    .local v8, implicitlySelectedSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v8, :cond_8c

    .line 4024
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 4025
    .local v0, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_41
    if-ge v5, v0, :cond_8c

    .line 4026
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodSubtype;

    .line 4027
    .local v10, st:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_58

    .line 4056
    .end local v0           #N:I
    .end local v2           #enabledIme:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3           #explicitlyEnabledSubtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #i:I
    .end local v7           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v8           #implicitlySelectedSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v10           #st:Landroid/view/inputmethod/InputMethodSubtype;
    .end local p3
    :goto_57
    return-object p3

    .line 4025
    .restart local v0       #N:I
    .restart local v2       #enabledIme:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v3       #explicitlyEnabledSubtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #i:I
    .restart local v7       #imi:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v8       #implicitlySelectedSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v10       #st:Landroid/view/inputmethod/InputMethodSubtype;
    .restart local p3
    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 4034
    .end local v0           #N:I
    .end local v5           #i:I
    .end local v8           #implicitlySelectedSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v10           #st:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 4035
    .local v9, s:Ljava/lang/String;
    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5f

    .line 4038
    :try_start_71
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4040
    .local v4, hashCode:I
    #calls: Lcom/android/server/InputMethodManagerService;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z
    invoke-static {v7, v4}, Lcom/android/server/InputMethodManagerService;->access$2700(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v11

    if-eqz v11, :cond_81

    move-object p3, v9

    .line 4041
    goto :goto_57

    .line 4043
    :cond_81
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$2500()Ljava/lang/String;
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_84} :catch_86

    move-result-object p3

    goto :goto_57

    .line 4045
    .end local v4           #hashCode:I
    :catch_86
    move-exception v1

    .line 4046
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$2500()Ljava/lang/String;

    move-result-object p3

    goto :goto_57

    .line 4052
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v9           #s:Ljava/lang/String;
    :cond_8c
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$2500()Ljava/lang/String;

    move-result-object p3

    goto :goto_57

    .line 4056
    .end local v2           #enabledIme:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3           #explicitlyEnabledSubtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_91
    const/4 p3, 0x0

    goto :goto_57
.end method

.method private getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;
    .registers 10
    .parameter "imeId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3984
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 3986
    .local v0, enabledImes:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;

    move-result-object v5

    .line 3987
    .local v5, subtypeHistory:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 3988
    .local v2, imeAndSubtype:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 3990
    .local v3, imeInTheHistory:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_28

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 3991
    :cond_28
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 3992
    .local v6, subtypeInTheHistory:Ljava/lang/String;
    invoke-direct {p0, v0, v3, v6}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledSubtypeHashCodeForInputMethodAndSubtypeLocked(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3995
    .local v4, subtypeHashCode:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 3999
    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4006
    .end local v2           #imeAndSubtype:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #imeInTheHistory:Ljava/lang/String;
    .end local v4           #subtypeHashCode:Ljava/lang/String;
    .end local v6           #subtypeInTheHistory:Ljava/lang/String;
    :goto_3b
    return-object v7

    :cond_3c
    const/4 v7, 0x0

    goto :goto_3b
.end method

.method private getSubtypeHistoryStr()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4088
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "input_methods_subtype_history"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4060
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4061
    .local v1, imsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getSubtypeHistoryStr()Ljava/lang/String;

    move-result-object v3

    .line 4062
    .local v3, subtypeHistoryStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 4080
    :cond_f
    return-object v1

    .line 4065
    :cond_10
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 4066
    :cond_15
    :goto_15
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 4067
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 4068
    .local v2, nextImsStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 4069
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 4070
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$2500()Ljava/lang/String;

    move-result-object v4

    .line 4072
    .local v4, subtypeId:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 4073
    .local v0, imeId:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 4074
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 4077
    :cond_48
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method

.method private putEnabledInputMethodsStr(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 3902
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "enabled_input_methods"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3903
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    .line 3904
    return-void
.end method

.method private putSubtypeHistoryStr(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 3965
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "input_methods_subtype_history"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3967
    return-void
.end method

.method private saveSubtypeHistory(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter "newImeId"
    .parameter "newSubtypeId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, savedImes:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v7, 0x3b

    .line 3917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3918
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 3919
    .local v4, isImeAdded:Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 3920
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3922
    const/4 v4, 0x1

    .line 3924
    :cond_20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 3925
    .local v2, ime:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 3926
    .local v3, imeId:Ljava/lang/String;
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 3927
    .local v5, subtypeId:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 3928
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$2500()Ljava/lang/String;

    move-result-object v5

    .line 3930
    :cond_42
    if-eqz v4, :cond_55

    .line 3931
    const/16 v6, 0x3a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3935
    :goto_49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 3933
    :cond_55
    const/4 v4, 0x1

    goto :goto_49

    .line 3939
    .end local v2           #ime:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #imeId:Ljava/lang/String;
    .end local v5           #subtypeId:Ljava/lang/String;
    :cond_57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->putSubtypeHistoryStr(Ljava/lang/String;)V

    .line 3940
    return-void
.end method


# virtual methods
.method public addSubtypeToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "imeId"
    .parameter "subtypeId"

    .prologue
    .line 3943
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;

    move-result-object v2

    .line 3944
    .local v2, subtypeHistory:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3945
    .local v1, ime:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3951
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3958
    .end local v1           #ime:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_21
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->saveSubtypeHistory(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 3959
    return-void
.end method

.method public appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V
    .registers 5
    .parameter "id"
    .parameter "reloadInputMethodStr"

    .prologue
    .line 3822
    if-eqz p2, :cond_5

    .line 3823
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    .line 3825
    :cond_5
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3827
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 3832
    :goto_10
    return-void

    .line 3829
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z
    .registers 10
    .parameter "builder"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3840
    .local p2, imsList:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v3, 0x0

    .line 3841
    .local v3, isRemoved:Z
    const/4 v4, 0x0

    .line 3842
    .local v4, needsAppendSeparator:Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 3843
    .local v2, ims:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 3844
    .local v0, curId:Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 3848
    const/4 v3, 0x1

    goto :goto_6

    .line 3850
    :cond_1e
    if-eqz v4, :cond_29

    .line 3851
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3855
    :goto_25
    invoke-static {p1, v2}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V

    goto :goto_6

    .line 3853
    :cond_29
    const/4 v4, 0x1

    goto :goto_25

    .line 3858
    .end local v0           #curId:Ljava/lang/String;
    .end local v2           #ims:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_2b
    if-eqz v3, :cond_34

    .line 3860
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 3862
    :cond_34
    return v3
.end method

.method public enableAllIMEsIfThereIsNoEnabledIME()V
    .registers 8

    .prologue
    .line 3784
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 3785
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3786
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3787
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    if-ge v1, v0, :cond_4d

    .line 3788
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 3789
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3790
    if-lez v1, :cond_43

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3791
    :cond_43
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3787
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 3793
    .end local v2           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 3795
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_54
    return-void
.end method

.method public getEnabledInputMethodAndSubtypeHashCodeListLocked()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 3751
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->createEnabledInputMethodAndSubtypeHashCodeListLocked(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledInputMethodListLocked()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3745
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->createEnabledInputMethodListLocked(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;
    .registers 13
    .parameter "imi"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3757
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v4

    .line 3759
    .local v4, imsList:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3761
    .local v0, enabledSubtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz p1, :cond_69

    .line 3762
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 3763
    .local v5, imsPair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    iget-object v10, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 3764
    .local v6, info:Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 3765
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v8

    .line 3766
    .local v8, subtypeCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3a
    if-ge v1, v8, :cond_69

    .line 3767
    invoke-virtual {v6, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 3768
    .local v3, ims:Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v9, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_48
    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3769
    .local v7, s:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 3770
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 3766
    .end local v7           #s:Ljava/lang/String;
    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 3778
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ims:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v5           #imsPair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v6           #info:Landroid/view/inputmethod/InputMethodInfo;
    .end local v8           #subtypeCount:I
    :cond_69
    return-object v0
.end method

.method public getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3971
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "imeId"

    .prologue
    .line 3975
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 3976
    .local v0, ime:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_b

    .line 3977
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 3979
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public putSelectedInputMethod(Ljava/lang/String;)V
    .registers 4
    .parameter "imeId"

    .prologue
    .line 4093
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "default_input_method"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4094
    return-void
.end method

.method public putSelectedSubtype(I)V
    .registers 4
    .parameter "subtypeId"

    .prologue
    .line 4097
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_input_method_subtype"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4099
    return-void
.end method

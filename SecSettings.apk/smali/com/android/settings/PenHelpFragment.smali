.class public Lcom/android/settings/PenHelpFragment;
.super Landroid/app/Fragment;
.source "PenHelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PenHelpFragment$PenHelpItem;
    }
.end annotation


# instance fields
.field private mPenHelpType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 186
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/PenHelpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    .local v0, arguments:Landroid/os/Bundle;
    const-string v1, "pen_help_menu"

    const-string v2, "hovering"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    .line 51
    const-string v1, "PenHelpFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPenHelpType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 22
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 58
    const/16 v17, 0x0

    .line 59
    .local v17, view:Landroid/view/View;
    const-string v20, "hovering"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 60
    const v20, 0x7f040095

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 61
    const v20, 0x7f0b0189

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 62
    .local v7, hoveringButton:Landroid/widget/Button;
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setHoverPopupType(I)V

    .line 63
    invoke-virtual {v7}, Landroid/widget/Button;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    const/16 v21, 0x30

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 64
    invoke-virtual {v7}, Landroid/widget/Button;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    const v21, 0x7f0909fe

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 66
    const v20, 0x7f0b0188

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 69
    .local v6, helpContent:Landroid/widget/LinearLayout;
    new-instance v14, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 70
    .local v14, pointer_1:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f0909ff

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 71
    const v20, 0x7f090a00

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 72
    const v20, 0x7f0200cb

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 73
    invoke-virtual {v14}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    new-instance v15, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 75
    .local v15, pointer_2:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a01

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 76
    const v20, 0x7f0200cc

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 77
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleVisibility(I)V

    .line 78
    invoke-virtual {v15}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    new-instance v9, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 82
    .local v9, infoPreview:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a02

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 83
    const v20, 0x7f090a03

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 84
    const v20, 0x7f02029a

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 85
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V

    .line 86
    invoke-virtual {v9}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v19, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 90
    .local v19, zoomIn:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a04

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 91
    const v20, 0x7f090a05

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 92
    const v20, 0x7f02029b

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 93
    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V

    .line 94
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    new-instance v8, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 98
    .local v8, iconLabel:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a06

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 99
    const v20, 0x7f090a07

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 100
    const v20, 0x7f0200d1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 101
    invoke-virtual {v8}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    new-instance v10, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 105
    .local v10, listScroll:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a08

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 106
    const v20, 0x7f090a09

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 107
    const v20, 0x7f0200d2

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 108
    invoke-virtual {v10}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    .end local v6           #helpContent:Landroid/widget/LinearLayout;
    .end local v7           #hoveringButton:Landroid/widget/Button;
    .end local v8           #iconLabel:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v9           #infoPreview:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v10           #listScroll:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v14           #pointer_1:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v15           #pointer_2:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v19           #zoomIn:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    :cond_0
    :goto_0
    return-object v17

    .line 109
    :cond_1
    const-string v20, "gesture"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 110
    const v20, 0x7f040094

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 111
    const v20, 0x7f0b0188

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 114
    .restart local v6       #helpContent:Landroid/widget/LinearLayout;
    new-instance v5, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 115
    .local v5, goBack:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a0c

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 116
    const v20, 0x7f090a0d

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 117
    const v20, 0x7f0200be

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 118
    invoke-virtual {v5}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance v11, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 122
    .local v11, openMenu:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a0e

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 123
    const v20, 0x7f090a0f

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 124
    const v20, 0x7f0200bf

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 125
    invoke-virtual {v11}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    new-instance v12, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 129
    .local v12, openPopNote:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a10

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 130
    const v20, 0x7f090a11

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 131
    const v20, 0x7f0200c0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 132
    invoke-virtual {v12}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    new-instance v13, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 136
    .local v13, openQuickCommand:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a12

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 137
    const v20, 0x7f090a13

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 138
    const v20, 0x7f0200c1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 139
    invoke-virtual {v13}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    new-instance v3, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 143
    .local v3, captureScreen:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a14

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 144
    const v20, 0x7f090a15

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 145
    const v20, 0x7f0200c2

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 146
    invoke-virtual {v3}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    new-instance v4, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 150
    .local v4, cutOutImage:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a16

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 151
    const v20, 0x7f090a17

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 152
    const v20, 0x7f020298

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 153
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V

    .line 154
    invoke-virtual {v4}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    new-instance v16, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 158
    .local v16, seleteText:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a18

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 159
    const v20, 0x7f090a19

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 160
    const v20, 0x7f020299

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 161
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V

    .line 162
    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 163
    .end local v3           #captureScreen:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v4           #cutOutImage:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v5           #goBack:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v6           #helpContent:Landroid/widget/LinearLayout;
    .end local v11           #openMenu:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v12           #openPopNote:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v13           #openQuickCommand:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v16           #seleteText:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    :cond_2
    const-string v20, "quickcommand"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 164
    const v20, 0x7f040098

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 165
    const v20, 0x7f0b0188

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 168
    .restart local v6       #helpContent:Landroid/widget/LinearLayout;
    new-instance v13, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 169
    .restart local v13       #openQuickCommand:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a1b

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 170
    const v20, 0x7f090a1c

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 171
    const v20, 0x7f020292

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 172
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V

    .line 173
    invoke-virtual {v13}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    new-instance v18, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 177
    .local v18, writeCommand:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a1d

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 178
    const v20, 0x7f090a1e

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 179
    const v20, 0x7f0200ac

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 180
    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

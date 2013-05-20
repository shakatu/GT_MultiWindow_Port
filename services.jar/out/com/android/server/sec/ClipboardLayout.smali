.class public Lcom/android/server/sec/ClipboardLayout;
.super Landroid/widget/LinearLayout;
.source "ClipboardLayout.java"


# static fields
.field static CHILD_COUNT:I

.field public static doneButton:Landroid/widget/Button;

.field public static mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

.field public static mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

.field public static mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field public static mCurrentTargetDataType:I

.field public static mIsEditMode:Z

.field public static mSaveButton:Landroid/widget/Button;


# instance fields
.field ANIMATION_DELAY:I

.field ANIMATION_TIME:I

.field APPEAR_DELAY:I

.field APPEAR_TIME:I

.field HEIGHT:I

.field ITEM_COUNT_IN_SCREEN:I

.field ITEM_GAP:I

.field ITEM_HEIGHT:I

.field ITEM_LEFT_PADDING:I

.field ITEM_TOP_GAP:I

.field ITEM_WIDTH:I

.field LAST_ITEM_PADDING:I

.field LAYOUT_HEIGHT:I

.field final MAX_PROTECTED_COUNT:I

.field WIDTH:I

.field addedRight:I

.field animationTime:I

.field delayTime:I

.field deleteBtn:Landroid/widget/ImageView;

.field isAnimate:Z

.field isAttach:Z

.field public isEditMode:Z

.field private isEmpty:Z

.field isPortrait:Z

.field public isSaveMode:Z

.field mAniEndPoint:I

.field final mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mChildViewIDs:[I

.field final mClickListenerContent:Landroid/view/View$OnClickListener;

.field final mClickListenerDelete:Landroid/view/View$OnClickListener;

.field final mClickListenerProtect:Landroid/view/View$OnClickListener;

.field final mClickListenerSave:Landroid/view/View$OnClickListener;

.field mContext:Landroid/content/Context;

.field mHTMLImageHeight:I

.field mHTMLImageMax:I

.field mHTMLImageWidth:I

.field mHandler:Landroid/os/Handler;

.field private mIsAnimating:Z

.field public mIsCreatedDialog:Z

.field public mIsProtect:Z

.field mTextViewMaxLine:I

.field outSideCount:I

.field res:I

.field screenWidth:I

.field selectIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 107
    sput v0, Lcom/android/server/sec/ClipboardLayout;->CHILD_COUNT:I

    .line 142
    sput v0, Lcom/android/server/sec/ClipboardLayout;->mCurrentTargetDataType:I

    .line 143
    sput-boolean v0, Lcom/android/server/sec/ClipboardLayout;->mIsEditMode:Z

    .line 148
    sput-object v1, Lcom/android/server/sec/ClipboardLayout;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    .line 149
    sput-object v1, Lcom/android/server/sec/ClipboardLayout;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    .line 150
    sput-object v1, Lcom/android/server/sec/ClipboardLayout;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/sec/ClipboardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sec/ClipboardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    iput-boolean v1, p0, Lcom/android/server/sec/ClipboardLayout;->mIsAnimating:Z

    .line 108
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->APPEAR_TIME:I

    .line 109
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->APPEAR_DELAY:I

    .line 110
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ANIMATION_TIME:I

    .line 111
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ANIMATION_DELAY:I

    .line 112
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->WIDTH:I

    .line 113
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->HEIGHT:I

    .line 114
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_WIDTH:I

    .line 115
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_HEIGHT:I

    .line 116
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_GAP:I

    .line 117
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->LAYOUT_HEIGHT:I

    .line 118
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_TOP_GAP:I

    .line 119
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->LAST_ITEM_PADDING:I

    .line 120
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_COUNT_IN_SCREEN:I

    .line 121
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_LEFT_PADDING:I

    .line 122
    const v0, 0x1090102

    iput v0, p0, Lcom/android/server/sec/ClipboardLayout;->res:I

    .line 123
    iput-boolean v1, p0, Lcom/android/server/sec/ClipboardLayout;->isPortrait:Z

    .line 128
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->delayTime:I

    .line 129
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->addedRight:I

    .line 130
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->animationTime:I

    .line 131
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->screenWidth:I

    .line 132
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageMax:I

    .line 133
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageWidth:I

    .line 134
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageHeight:I

    .line 135
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->mTextViewMaxLine:I

    .line 136
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->outSideCount:I

    .line 137
    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->mAniEndPoint:I

    .line 139
    iput-boolean v1, p0, Lcom/android/server/sec/ClipboardLayout;->isAnimate:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/server/sec/ClipboardLayout;->isAttach:Z

    .line 152
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_8e

    iput-object v0, p0, Lcom/android/server/sec/ClipboardLayout;->mChildViewIDs:[I

    .line 157
    iput-boolean v1, p0, Lcom/android/server/sec/ClipboardLayout;->isEditMode:Z

    .line 158
    iput-boolean v1, p0, Lcom/android/server/sec/ClipboardLayout;->isSaveMode:Z

    .line 161
    iput-boolean v1, p0, Lcom/android/server/sec/ClipboardLayout;->mIsProtect:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/server/sec/ClipboardLayout;->isEmpty:Z

    .line 169
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sec/ClipboardLayout;->MAX_PROTECTED_COUNT:I

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/ClipboardLayout;->mHandler:Landroid/os/Handler;

    .line 174
    iput-boolean v1, p0, Lcom/android/server/sec/ClipboardLayout;->mIsCreatedDialog:Z

    .line 314
    new-instance v0, Lcom/android/server/sec/ClipboardLayout$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClipboardLayout$1;-><init>(Lcom/android/server/sec/ClipboardLayout;)V

    iput-object v0, p0, Lcom/android/server/sec/ClipboardLayout;->mClickListenerContent:Landroid/view/View$OnClickListener;

    .line 340
    new-instance v0, Lcom/android/server/sec/ClipboardLayout$2;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClipboardLayout$2;-><init>(Lcom/android/server/sec/ClipboardLayout;)V

    iput-object v0, p0, Lcom/android/server/sec/ClipboardLayout;->mClickListenerDelete:Landroid/view/View$OnClickListener;

    .line 365
    new-instance v0, Lcom/android/server/sec/ClipboardLayout$3;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClipboardLayout$3;-><init>(Lcom/android/server/sec/ClipboardLayout;)V

    iput-object v0, p0, Lcom/android/server/sec/ClipboardLayout;->mClickListenerSave:Landroid/view/View$OnClickListener;

    .line 514
    new-instance v0, Lcom/android/server/sec/ClipboardLayout$4;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClipboardLayout$4;-><init>(Lcom/android/server/sec/ClipboardLayout;)V

    iput-object v0, p0, Lcom/android/server/sec/ClipboardLayout;->mClickListenerProtect:Landroid/view/View$OnClickListener;

    .line 566
    new-instance v0, Lcom/android/server/sec/ClipboardLayout$5;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClipboardLayout$5;-><init>(Lcom/android/server/sec/ClipboardLayout;)V

    iput-object v0, p0, Lcom/android/server/sec/ClipboardLayout;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 187
    iput-object p1, p0, Lcom/android/server/sec/ClipboardLayout;->mContext:Landroid/content/Context;

    .line 188
    sput-boolean v1, Lcom/android/server/sec/ClipboardLayout;->mIsEditMode:Z

    .line 189
    invoke-direct {p0}, Lcom/android/server/sec/ClipboardLayout;->onConfChange()V

    .line 190
    iget v0, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_LEFT_PADDING:I

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/android/server/sec/ClipboardLayout;->setPadding(IIII)V

    .line 195
    return-void

    .line 152
    :array_8e
    .array-data 0x4
        0x2bt 0x4t 0x2t 0x1t
        0x2dt 0x4t 0x2t 0x1t
        0x2ct 0x4t 0x2t 0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/sec/ClipboardLayout;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/sec/ClipboardLayout;->isProtectedPossible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/sec/ClipboardLayout;Landroid/view/View;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/sec/ClipboardLayout;->changeEditMode(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/sec/ClipboardLayout;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/sec/ClipboardLayout;->setChildClickable(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/sec/ClipboardLayout;Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sec/ClipboardLayout;->getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private changeEditMode(Landroid/view/View;I)V
    .registers 13
    .parameter "child"
    .parameter "index"

    .prologue
    const/4 v9, 0x1

    .line 676
    const/4 v1, 0x0

    .line 677
    .local v1, buttonLayout:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    .line 678
    .local v3, deleteBtn:Landroid/widget/ImageView;
    const/4 v6, 0x0

    .line 679
    .local v6, protectBtn:Landroid/widget/ImageView;
    const/4 v7, 0x0

    .line 683
    .local v7, protectlockImageView:Landroid/widget/ImageView;
    :try_start_5
    sget-object v8, Lcom/android/server/sec/ClipboardLayout;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v8, p2}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 684
    .local v2, data:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v5

    .line 686
    .local v5, isProtected:Z
    if-eqz p1, :cond_5c

    .line 688
    const v8, 0x10202aa

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v1, v0

    .line 689
    const v8, 0x1020432

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    .line 691
    sget-boolean v8, Lcom/android/server/sec/ClipboardLayout;->mIsEditMode:Z

    if-eqz v8, :cond_78

    .line 693
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 695
    const v8, 0x102042e

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    .line 696
    const v8, 0x102042f

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/ImageView;

    move-object v6, v0

    .line 698
    if-eqz v5, :cond_5d

    .line 700
    const v8, 0x10807c7

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 702
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 716
    :goto_51
    iget-object v8, p0, Lcom/android/server/sec/ClipboardLayout;->mClickListenerProtect:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    if-eqz v7, :cond_5c

    .line 719
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 729
    .end local v2           #data:Landroid/sec/clipboard/data/ClipboardData;
    .end local v5           #isProtected:Z
    :cond_5c
    :goto_5c
    return-void

    .line 707
    .restart local v2       #data:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v5       #isProtected:Z
    :cond_5d
    invoke-virtual {v3}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v8

    if-eq v8, v9, :cond_67

    .line 708
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 711
    :cond_67
    const v8, 0x10807c5

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 712
    iget-object v8, p0, Lcom/android/server/sec/ClipboardLayout;->mClickListenerDelete:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_72} :catch_73

    goto :goto_51

    .line 728
    .end local v2           #data:Landroid/sec/clipboard/data/ClipboardData;
    .end local v5           #isProtected:Z
    :catch_73
    move-exception v4

    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5c

    .line 723
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v2       #data:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v5       #isProtected:Z
    :cond_78
    if-eqz v1, :cond_7e

    const/4 v8, 0x4

    :try_start_7b
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 724
    :cond_7e
    if-ne v5, v9, :cond_5c

    if-eqz v7, :cond_5c

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_86} :catch_73

    goto :goto_5c
.end method

.method private changeSaveMode(Landroid/view/View;)V
    .registers 9
    .parameter "child"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 639
    const/4 v3, 0x0

    .line 640
    .local v3, saveLayout:Landroid/widget/RelativeLayout;
    const/4 v2, 0x0

    .line 644
    .local v2, saveBtn:Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 645
    .local v0, index:I
    sget-object v4, Lcom/android/server/sec/ClipboardLayout;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v4, v0}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    .line 647
    .local v1, mformat:I
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_36

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeSaveMode index :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mformat :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_36
    if-eqz p1, :cond_5a

    .line 651
    const v4, 0x1020430

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #saveLayout:Landroid/widget/RelativeLayout;
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 653
    .restart local v3       #saveLayout:Landroid/widget/RelativeLayout;
    iget-boolean v4, p0, Lcom/android/server/sec/ClipboardLayout;->isSaveMode:Z

    if-eqz v4, :cond_5b

    const/4 v4, 0x4

    if-eq v1, v4, :cond_5b

    .line 655
    const v4, 0x1020431

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #saveBtn:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 657
    .restart local v2       #saveBtn:Landroid/widget/ImageView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 658
    iget-object v4, p0, Lcom/android/server/sec/ClipboardLayout;->mClickListenerSave:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    :cond_5a
    :goto_5a
    return-void

    .line 662
    :cond_5b
    if-eqz v3, :cond_5a

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5a
.end method

.method private createAnimation(IIII)Landroid/view/animation/TranslateAnimation;
    .registers 9
    .parameter "index"
    .parameter "x"
    .parameter "y"
    .parameter "delay"

    .prologue
    const/4 v3, 0x0

    .line 1374
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-direct {v0, v1, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1376
    .local v0, ta:Landroid/view/animation/TranslateAnimation;
    iget v1, p0, Lcom/android/server/sec/ClipboardLayout;->animationTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1377
    iget v1, p0, Lcom/android/server/sec/ClipboardLayout;->delayTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1378
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1380
    iget v1, p0, Lcom/android/server/sec/ClipboardLayout;->mAniEndPoint:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_23

    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1382
    :cond_23
    iget v1, p0, Lcom/android/server/sec/ClipboardLayout;->delayTime:I

    add-int/2addr v1, p4

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->delayTime:I

    .line 1384
    return-object v0
.end method

.method private getAnim(I)Landroid/view/animation/TranslateAnimation;
    .registers 7
    .parameter "index"

    .prologue
    .line 1356
    invoke-virtual {p0, p1}, Lcom/android/server/sec/ClipboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1358
    .local v2, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 1359
    .local v0, positionX:I
    const/4 v1, 0x0

    .line 1361
    .local v1, positionY:I
    rem-int/lit8 v3, p1, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    .line 1363
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1364
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_GAP:I

    sub-int v1, v3, v4

    .line 1368
    :goto_18
    iget v3, p0, Lcom/android/server/sec/ClipboardLayout;->ANIMATION_DELAY:I

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/server/sec/ClipboardLayout;->createAnimation(IIII)Landroid/view/animation/TranslateAnimation;

    move-result-object v3

    return-object v3

    .line 1366
    :cond_1f
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_GAP:I

    add-int v1, v3, v4

    goto :goto_18
.end method

.method private getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "clipData"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 1328
    const/4 v4, 0x1

    .line 1329
    .local v4, sampleSize:I
    const/4 v2, 0x0

    .line 1330
    .local v2, bm:Landroid/graphics/Bitmap;
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local p1
    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v1

    .line 1332
    .local v1, bitmapPath:Ljava/lang/String;
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v5, :cond_24

    const-string v5, "ClipboardServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bitmapPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_24
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1337
    .local v0, bitmapOption:Landroid/graphics/BitmapFactory$Options;
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1340
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1344
    const/4 v5, 0x0

    :try_start_2f
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_47} :catch_49

    move-result-object v2

    .line 1350
    :cond_48
    :goto_48
    return-object v2

    .line 1346
    :catch_49
    move-exception v3

    .line 1347
    .local v3, e:Ljava/lang/Exception;
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_48

    const-string v5, "ClipboardServiceEx"

    const-string v6, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .registers 9
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, degree:I
    const/4 v2, 0x0

    .line 964
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_3
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_17

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 968
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :cond_9
    :goto_9
    if-eqz v2, :cond_16

    .line 969
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 971
    .local v4, orientation:I
    if-eq v4, v7, :cond_16

    .line 973
    packed-switch v4, :pswitch_data_2e

    .line 987
    .end local v4           #orientation:I
    :cond_16
    :goto_16
    :pswitch_16
    return v0

    .line 965
    :catch_17
    move-exception v1

    .line 966
    .local v1, ex:Ljava/io/IOException;
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "ClipboardServiceEx"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 975
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_24
    const/16 v0, 0x5a

    .line 976
    goto :goto_16

    .line 978
    :pswitch_27
    const/16 v0, 0xb4

    .line 979
    goto :goto_16

    .line 981
    :pswitch_2a
    const/16 v0, 0x10e

    goto :goto_16

    .line 973
    nop

    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_27
        :pswitch_16
        :pswitch_16
        :pswitch_24
        :pswitch_16
        :pswitch_2a
    .end packed-switch
.end method

.method private isProtectedPossible()Z
    .registers 7

    .prologue
    const/16 v5, 0xa

    const/4 v3, 0x0

    .line 484
    sget v4, Lcom/android/server/sec/ClipboardLayout;->CHILD_COUNT:I

    if-le v4, v5, :cond_26

    .line 486
    const/4 v2, 0x0

    .line 488
    .local v2, protectedCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    sget v4, Lcom/android/server/sec/ClipboardLayout;->CHILD_COUNT:I

    if-ge v1, v4, :cond_26

    .line 492
    :try_start_d
    sget-object v4, Lcom/android/server/sec/ClipboardLayout;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v4, v1}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_1e

    move-result v4

    if-eqz v4, :cond_23

    .line 494
    add-int/lit8 v2, v2, 0x1

    .line 496
    if-lt v2, v5, :cond_23

    .line 508
    .end local v1           #i:I
    .end local v2           #protectedCount:I
    :goto_1d
    return v3

    .line 499
    .restart local v1       #i:I
    .restart local v2       #protectedCount:I
    :catch_1e
    move-exception v0

    .line 501
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1d

    .line 488
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 508
    .end local v1           #i:I
    .end local v2           #protectedCount:I
    :cond_26
    const/4 v3, 0x1

    goto :goto_1d
.end method

.method private onConfChange()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 200
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->APPEAR_TIME:I

    .line 202
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->APPEAR_DELAY:I

    .line 204
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ANIMATION_TIME:I

    .line 206
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ANIMATION_DELAY:I

    .line 208
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageMax:I

    .line 210
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_LEFT_PADDING:I

    .line 213
    iget v1, p0, Lcom/android/server/sec/ClipboardLayout;->APPEAR_TIME:I

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->animationTime:I

    .line 215
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 217
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a4

    .line 220
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_8d

    const-string v1, "ClipboardServiceEx"

    const-string v2, "orientation == Configuration.ORIENTATION_LANDSCAPE"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_8d
    const v1, 0x1090101

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->res:I

    .line 224
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/sec/ClipboardLayout;->isPortrait:Z

    .line 226
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->WIDTH:I

    .line 228
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->HEIGHT:I

    .line 230
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_WIDTH:I

    .line 232
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_HEIGHT:I

    .line 234
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_GAP:I

    .line 236
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_TOP_GAP:I

    .line 238
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->LAYOUT_HEIGHT:I

    .line 240
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_COUNT_IN_SCREEN:I

    .line 242
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->LAST_ITEM_PADDING:I

    .line 244
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->screenWidth:I

    .line 246
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->outSideCount:I

    .line 248
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->mTextViewMaxLine:I

    .line 288
    :cond_16d
    :goto_16d
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_1a3

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sec/ClipboardLayout;->WIDTH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sec/ClipboardLayout;->HEIGHT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", screenWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sec/ClipboardLayout;->screenWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1a3
    return-void

    .line 252
    :cond_1a4
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_16d

    .line 255
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_1b3

    const-string v1, "ClipboardServiceEx"

    const-string v2, "orientation == Configuration.ORIENTATION_PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1b3
    const v1, 0x1090102

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->res:I

    .line 259
    iput-boolean v3, p0, Lcom/android/server/sec/ClipboardLayout;->isPortrait:Z

    .line 261
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->WIDTH:I

    .line 263
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->HEIGHT:I

    .line 265
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_WIDTH:I

    .line 267
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_HEIGHT:I

    .line 269
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_GAP:I

    .line 271
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_TOP_GAP:I

    .line 273
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->LAYOUT_HEIGHT:I

    .line 275
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_COUNT_IN_SCREEN:I

    .line 277
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->LAST_ITEM_PADDING:I

    .line 279
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->screenWidth:I

    .line 281
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->outSideCount:I

    .line 283
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClipboardLayout;->mTextViewMaxLine:I

    goto/16 :goto_16d
.end method

.method private setChildClickable(Z)V
    .registers 5
    .parameter "bool"

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getChildCount()I

    move-result v0

    .line 1393
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p0, v1}, Lcom/android/server/sec/ClipboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1395
    :cond_11
    return-void
.end method

.method private setClippedDataIntoView(Landroid/view/View;Landroid/view/View;I)V
    .registers 26
    .parameter "v"
    .parameter "vg"
    .parameter "position"

    .prologue
    .line 1056
    :try_start_0
    sget-object v3, Lcom/android/server/sec/ClipboardLayout;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    move/from16 v0, p3

    invoke-interface {v3, v0}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v5

    .line 1058
    .local v5, cbData:Landroid/sec/clipboard/data/ClipboardData;
    move-object/from16 v0, p1

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_48

    instance-of v3, v5, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-eqz v3, :cond_48

    .line 1059
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v5           #cbData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    sget v3, Lcom/android/server/sec/ClipboardLayout;->mCurrentTargetDataType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_31

    .line 1064
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1066
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1070
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/sec/ClipboardLayout;->mIsCreatedDialog:Z

    if-nez v3, :cond_47

    .line 1071
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1072
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/ClipboardLayout;->showProtectedMarker(Landroid/view/View;I)V

    .line 1323
    .end local p2
    :cond_47
    :goto_47
    return-void

    .line 1075
    .restart local v5       #cbData:Landroid/sec/clipboard/data/ClipboardData;
    .restart local p2
    :cond_48
    move-object/from16 v0, p1

    instance-of v3, v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_1ce

    instance-of v3, v5, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    if-eqz v3, :cond_1ce

    .line 1076
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/sec/ClipboardLayout;->mIsCreatedDialog:Z

    if-eqz v3, :cond_1b5

    .line 1078
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/sec/ClipboardLayout;->ITEM_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/sec/ClipboardLayout;->ITEM_HEIGHT:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3, v4}, Lcom/android/server/sec/ClipboardLayout;->getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1080
    .local v11, bm:Landroid/graphics/Bitmap;
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local v5           #cbData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v18

    .line 1081
    .local v18, path:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/sec/ClipboardLayout;->getExifOrientation(Ljava/lang/String;)I

    move-result v14

    .line 1082
    .local v14, degree:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14}, Lcom/android/server/sec/ClipboardLayout;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1086
    if-eqz v11, :cond_13f

    .line 1088
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 1089
    .local v13, bmWidth:I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 1090
    .local v12, bmHeight:I
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 1092
    .local v17, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/sec/ClipboardLayout;->ITEM_WIDTH:I

    if-gt v13, v3, :cond_95

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/sec/ClipboardLayout;->ITEM_HEIGHT:I

    if-le v12, v3, :cond_1aa

    .line 1093
    :cond_95
    int-to-float v4, v13

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/sec/ClipboardLayout;->ITEM_WIDTH:I

    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v8

    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v8

    sub-int v3, v7, v3

    int-to-float v3, v3

    div-float v21, v4, v3

    .line 1094
    .local v21, widthRate:F
    int-to-float v4, v12

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/sec/ClipboardLayout;->ITEM_HEIGHT:I

    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v8

    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v8

    sub-int v3, v7, v3

    int-to-float v3, v3

    div-float v16, v4, v3

    .line 1095
    .local v16, heightRate:F
    cmpl-float v3, v21, v16

    if-lez v3, :cond_158

    .line 1096
    int-to-float v3, v13

    div-float v3, v3, v21

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v7

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1097
    int-to-float v3, v12

    div-float v3, v3, v21

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v7

    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v7

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1099
    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/sec/ClipboardLayout;->ITEM_WIDTH:I

    if-lt v3, v4, :cond_123

    .line 1100
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/sec/ClipboardLayout;->ITEM_WIDTH:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1110
    :cond_123
    :goto_123
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1111
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1116
    .end local v16           #heightRate:F
    .end local v21           #widthRate:F
    :goto_137
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1121
    .end local v12           #bmHeight:I
    .end local v13           #bmWidth:I
    .end local v17           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_13f
    sget v3, Lcom/android/server/sec/ClipboardLayout;->mCurrentTargetDataType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_47

    .line 1122
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1124
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_150} :catch_152

    goto/16 :goto_47

    .line 1320
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v14           #degree:I
    .end local v18           #path:Ljava/lang/String;
    .end local p2
    :catch_152
    move-exception v15

    .line 1321
    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_47

    .line 1102
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v11       #bm:Landroid/graphics/Bitmap;
    .restart local v12       #bmHeight:I
    .restart local v13       #bmWidth:I
    .restart local v14       #degree:I
    .restart local v16       #heightRate:F
    .restart local v17       #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v18       #path:Ljava/lang/String;
    .restart local v21       #widthRate:F
    .restart local p2
    :cond_158
    int-to-float v3, v13

    div-float v3, v3, v16

    :try_start_15b
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v7

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1103
    int-to-float v3, v12

    div-float v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v7

    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v7

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1105
    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/sec/ClipboardLayout;->ITEM_HEIGHT:I

    if-lt v3, v4, :cond_123

    .line 1106
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/sec/ClipboardLayout;->ITEM_HEIGHT:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_123

    .line 1113
    .end local v16           #heightRate:F
    .end local v21           #widthRate:F
    :cond_1aa
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_137

    .line 1128
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v12           #bmHeight:I
    .end local v13           #bmWidth:I
    .end local v14           #degree:I
    .end local v17           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v18           #path:Ljava/lang/String;
    .restart local v5       #cbData:Landroid/sec/clipboard/data/ClipboardData;
    :cond_1b5
    new-instance v20, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/sec/ClipboardLayout$6;

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/sec/ClipboardLayout$6;-><init>(Lcom/android/server/sec/ClipboardLayout;Landroid/sec/clipboard/data/ClipboardData;Landroid/view/View;Landroid/view/View;I)V

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1207
    .local v20, thread:Ljava/lang/Thread;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    goto/16 :goto_47

    .line 1209
    .end local v20           #thread:Ljava/lang/Thread;
    :cond_1ce
    move-object/from16 v0, p1

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_2a5

    instance-of v3, v5, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    if-eqz v3, :cond_2a5

    .line 1215
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    .line 1216
    .local v6, tv:Landroid/widget/TextView;
    move-object v0, v5

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/sec/ClipboardLayout;->mIsCreatedDialog:Z

    if-eqz v3, :cond_28c

    .line 1220
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local v5           #cbData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getFirstImage()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1222
    .restart local v11       #bm:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_255

    .line 1224
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v10, v3, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1225
    .local v10, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 1226
    .restart local v13       #bmWidth:I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 1228
    .restart local v12       #bmHeight:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageMax:I

    if-gt v13, v3, :cond_217

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageMax:I

    if-le v12, v3, :cond_27c

    .line 1229
    :cond_217
    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageMax:I

    int-to-float v4, v4

    div-float v21, v3, v4

    .line 1230
    .restart local v21       #widthRate:F
    int-to-float v3, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageMax:I

    int-to-float v4, v4

    div-float v16, v3, v4

    .line 1232
    .restart local v16       #heightRate:F
    cmpl-float v3, v21, v16

    if-lez v3, :cond_26b

    .line 1233
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageMax:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageWidth:I

    .line 1234
    int-to-float v3, v12

    div-float v3, v3, v21

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageHeight:I

    .line 1245
    .end local v16           #heightRate:F
    .end local v21           #widthRate:F
    :goto_23b
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageHeight:I

    invoke-virtual {v10, v3, v4, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 1246
    const/16 v3, 0xa

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1248
    if-le v13, v12, :cond_285

    .line 1249
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v10, v4, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1256
    .end local v10           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v12           #bmHeight:I
    .end local v13           #bmWidth:I
    :cond_255
    :goto_255
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    const v3, 0x1020430

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 1257
    .local v19, saveLayout:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_47

    .line 1236
    .end local v19           #saveLayout:Landroid/widget/RelativeLayout;
    .restart local v10       #bd:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v12       #bmHeight:I
    .restart local v13       #bmWidth:I
    .restart local v16       #heightRate:F
    .restart local v21       #widthRate:F
    .restart local p2
    :cond_26b
    int-to-float v3, v13

    div-float v3, v3, v16

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageWidth:I

    .line 1237
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageMax:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageHeight:I

    goto :goto_23b

    .line 1240
    .end local v16           #heightRate:F
    .end local v21           #widthRate:F
    :cond_27c
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageWidth:I

    .line 1241
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageHeight:I

    goto :goto_23b

    .line 1251
    :cond_285
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6, v10, v3, v4, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_255

    .line 1260
    .end local v10           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v12           #bmHeight:I
    .end local v13           #bmWidth:I
    .restart local v5       #cbData:Landroid/sec/clipboard/data/ClipboardData;
    :cond_28c
    new-instance v20, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/sec/ClipboardLayout$7;

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/sec/ClipboardLayout$7;-><init>(Lcom/android/server/sec/ClipboardLayout;Landroid/sec/clipboard/data/ClipboardData;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;I)V

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1314
    .restart local v20       #thread:Ljava/lang/Thread;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    goto/16 :goto_47

    .line 1318
    .end local v6           #tv:Landroid/widget/TextView;
    .end local v20           #thread:Ljava/lang/Thread;
    :cond_2a5
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_47

    const-string v3, "ClipboardServiceEx"

    const-string v4, "Not Supported View type yet"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b0
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_2b0} :catch_152

    goto/16 :goto_47
.end method

.method private showEmptyView()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 600
    iput-boolean v5, p0, Lcom/android/server/sec/ClipboardLayout;->isEmpty:Z

    .line 602
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/server/sec/ClipboardLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 603
    .local v1, emptyLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/sec/ClipboardLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 604
    .local v0, emptyImageView:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/sec/ClipboardLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 606
    .local v2, emptyTextView:Landroid/widget/TextView;
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 607
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 609
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    const v3, 0x10807db

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 612
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 614
    const/high16 v3, 0x41b0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 615
    const v3, -0x7f7f80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 616
    const v3, 0x1040746

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 618
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 619
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 620
    invoke-virtual {p0, v1}, Lcom/android/server/sec/ClipboardLayout;->addView(Landroid/view/View;)V

    .line 622
    return-void
.end method

.method private updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    .registers 15
    .parameter "v"
    .parameter "position"
    .parameter "clearFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1501
    if-eqz p3, :cond_44

    .line 1503
    iget-object v8, p0, Lcom/android/server/sec/ClipboardLayout;->mChildViewIDs:[I

    array-length v3, v8

    .line 1505
    .local v3, cnt:I
    :cond_5
    :goto_5
    if-lez v3, :cond_44

    .line 1506
    iget-object v8, p0, Lcom/android/server/sec/ClipboardLayout;->mChildViewIDs:[I

    add-int/lit8 v3, v3, -0x1

    aget v8, v8, v3

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1507
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1e

    .line 1508
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1509
    :cond_1e
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2a

    .line 1510
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1513
    :cond_2a
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1514
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1515
    const v8, 0x102042e

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 1516
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_5

    .line 1521
    .end local v2           #child:Landroid/view/View;
    .end local v3           #cnt:I
    :cond_44
    const/4 v0, 0x0

    .line 1522
    .local v0, BodyView:Landroid/view/View;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_71

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data list count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/sec/ClipboardLayout;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v10}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_71
    const/4 v1, 0x0

    .line 1526
    .local v1, cbData:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_72
    sget-object v8, Lcom/android/server/sec/ClipboardLayout;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v8, p2}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_77} :catch_98

    move-result-object v1

    .line 1532
    :goto_78
    if-nez v1, :cond_9d

    .line 1533
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_96

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cbData does not exist...position : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :cond_96
    const/4 v8, 0x0

    .line 1585
    :goto_97
    return-object v8

    .line 1527
    :catch_98
    move-exception v4

    .line 1528
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_78

    .line 1537
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_9d
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v8

    packed-switch v8, :pswitch_data_116

    .line 1582
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_af

    const-string v8, "ClipboardServiceEx"

    const-string v9, "current Item to be shown is invalid item type"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    :goto_af
    move-object v8, v0

    .line 1585
    goto :goto_97

    .line 1539
    :pswitch_b1
    const v8, 0x102042b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1540
    .local v6, tv:Landroid/widget/TextView;
    move-object v0, v6

    .line 1541
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_ca

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_af

    .line 1542
    :cond_ca
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1544
    iget v8, p0, Lcom/android/server/sec/ClipboardLayout;->mTextViewMaxLine:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_af

    .line 1548
    .end local v6           #tv:Landroid/widget/TextView;
    :pswitch_d4
    const v8, 0x102042d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1549
    .local v7, tvHTML:Landroid/widget/TextView;
    move-object v0, v7

    .line 1550
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_ed

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_af

    .line 1551
    :cond_ed
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1553
    iget v8, p0, Lcom/android/server/sec/ClipboardLayout;->mTextViewMaxLine:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_af

    .line 1573
    .end local v7           #tvHTML:Landroid/widget/TextView;
    :pswitch_f7
    const v8, 0x102042c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1574
    .local v5, iv:Landroid/widget/ImageView;
    move-object v0, v5

    .line 1576
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_110

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_af

    .line 1577
    :cond_110
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_af

    .line 1537
    nop

    :pswitch_data_116
    .packed-switch 0x2
        :pswitch_b1
        :pswitch_f7
        :pswitch_d4
    .end packed-switch
.end method


# virtual methods
.method public addChildView()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 759
    const/4 v3, 0x0

    .line 772
    .local v3, view:Landroid/view/View;
    sget-object v4, Lcom/android/server/sec/ClipboardLayout;->doneButton:Landroid/widget/Button;

    if-eqz v4, :cond_35

    .line 773
    sget v4, Lcom/android/server/sec/ClipboardLayout;->CHILD_COUNT:I

    if-nez v4, :cond_25

    .line 774
    sget-object v4, Lcom/android/server/sec/ClipboardLayout;->doneButton:Landroid/widget/Button;

    const v5, 0x1040743

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 775
    iput-boolean v7, p0, Lcom/android/server/sec/ClipboardLayout;->isSaveMode:Z

    .line 776
    sput-boolean v7, Lcom/android/server/sec/ClipboardLayout;->mIsEditMode:Z

    .line 777
    sget-object v4, Lcom/android/server/sec/ClipboardLayout;->doneButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 778
    sget-object v4, Lcom/android/server/sec/ClipboardLayout;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 779
    invoke-direct {p0}, Lcom/android/server/sec/ClipboardLayout;->showEmptyView()V

    .line 957
    :cond_24
    return-void

    .line 782
    :cond_25
    sget-boolean v4, Lcom/android/server/sec/ClipboardLayout;->mIsEditMode:Z

    if-eqz v4, :cond_8d

    .line 783
    sget-object v4, Lcom/android/server/sec/ClipboardLayout;->doneButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 784
    sget-object v4, Lcom/android/server/sec/ClipboardLayout;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 792
    :goto_33
    iput-boolean v7, p0, Lcom/android/server/sec/ClipboardLayout;->isEmpty:Z

    .line 798
    :cond_35
    const/4 v2, 0x0

    .local v2, i:I
    :goto_36
    sget v4, Lcom/android/server/sec/ClipboardLayout;->CHILD_COUNT:I

    if-ge v2, v4, :cond_24

    .line 801
    :try_start_3a
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/server/sec/ClipboardLayout;->res:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v2, v5}, Lcom/android/server/sec/ClipboardLayout;->updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_49} :catch_a7

    move-result-object v3

    .line 807
    :goto_4a
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 882
    .local v0, ViewParent:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 883
    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    .line 885
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 887
    iget-object v4, p0, Lcom/android/server/sec/ClipboardLayout;->mClickListenerContent:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 895
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 896
    invoke-direct {p0, v3, v0, v2}, Lcom/android/server/sec/ClipboardLayout;->setClippedDataIntoView(Landroid/view/View;Landroid/view/View;I)V

    .line 912
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 915
    :try_start_7e
    invoke-direct {p0, v0}, Lcom/android/server/sec/ClipboardLayout;->changeSaveMode(Landroid/view/View;)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_81} :catch_ac

    .line 919
    :goto_81
    invoke-direct {p0, v0, v2}, Lcom/android/server/sec/ClipboardLayout;->changeEditMode(Landroid/view/View;I)V

    .line 920
    invoke-virtual {p0, v0, v2}, Lcom/android/server/sec/ClipboardLayout;->showProtectedMarker(Landroid/view/View;I)V

    .line 953
    invoke-virtual {p0, v0}, Lcom/android/server/sec/ClipboardLayout;->addView(Landroid/view/View;)V

    .line 798
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 785
    .end local v0           #ViewParent:Landroid/view/View;
    .end local v2           #i:I
    :cond_8d
    iget-boolean v4, p0, Lcom/android/server/sec/ClipboardLayout;->isSaveMode:Z

    if-eqz v4, :cond_9c

    .line 786
    sget-object v4, Lcom/android/server/sec/ClipboardLayout;->doneButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 787
    sget-object v4, Lcom/android/server/sec/ClipboardLayout;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_33

    .line 789
    :cond_9c
    sget-object v4, Lcom/android/server/sec/ClipboardLayout;->doneButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 790
    sget-object v4, Lcom/android/server/sec/ClipboardLayout;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_33

    .line 802
    .restart local v2       #i:I
    :catch_a7
    move-exception v1

    .line 804
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4a

    .line 916
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #ViewParent:Landroid/view/View;
    :catch_ac
    move-exception v1

    .line 917
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_81
.end method

.method public animationStartUpdate()V
    .registers 2

    .prologue
    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sec/ClipboardLayout;->mIsAnimating:Z

    .line 295
    return-void
.end method

.method public animationStopUpdate()V
    .registers 2

    .prologue
    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sec/ClipboardLayout;->mIsAnimating:Z

    .line 299
    return-void
.end method

.method public appearanceAnimation()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1590
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getChildCount()I

    move-result v0

    .line 1594
    .local v0, count:I
    iget v3, p0, Lcom/android/server/sec/ClipboardLayout;->screenWidth:I

    .line 1595
    .local v3, w:I
    iget v4, p0, Lcom/android/server/sec/ClipboardLayout;->APPEAR_TIME:I

    iput v4, p0, Lcom/android/server/sec/ClipboardLayout;->animationTime:I

    .line 1597
    invoke-direct {p0, v5}, Lcom/android/server/sec/ClipboardLayout;->setChildClickable(Z)V

    .line 1599
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v0, :cond_2d

    .line 1601
    invoke-virtual {p0, v1}, Lcom/android/server/sec/ClipboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1603
    .local v2, view:Landroid/view/View;
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_23

    invoke-direct {p0, v1, v3, v5, v5}, Lcom/android/server/sec/ClipboardLayout;->createAnimation(IIII)Landroid/view/animation/TranslateAnimation;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1599
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1604
    :cond_23
    iget v4, p0, Lcom/android/server/sec/ClipboardLayout;->APPEAR_DELAY:I

    invoke-direct {p0, v1, v3, v5, v4}, Lcom/android/server/sec/ClipboardLayout;->createAnimation(IIII)Landroid/view/animation/TranslateAnimation;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_20

    .line 1607
    .end local v2           #view:Landroid/view/View;
    :cond_2d
    return-void
.end method

.method public changeAllEditMode()V
    .registers 3

    .prologue
    .line 670
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget v1, Lcom/android/server/sec/ClipboardLayout;->CHILD_COUNT:I

    if-ge v0, v1, :cond_f

    invoke-virtual {p0, v0}, Lcom/android/server/sec/ClipboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/sec/ClipboardLayout;->changeEditMode(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 672
    :cond_f
    return-void
.end method

.method public changeAllSaveMode()V
    .registers 4

    .prologue
    .line 628
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget v2, Lcom/android/server/sec/ClipboardLayout;->CHILD_COUNT:I

    if-ge v1, v2, :cond_14

    .line 630
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/server/sec/ClipboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sec/ClipboardLayout;->changeSaveMode(Landroid/view/View;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_f

    .line 628
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 631
    :catch_f
    move-exception v0

    .line 632
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c

    .line 635
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 1400
    iget-boolean v2, p0, Lcom/android/server/sec/ClipboardLayout;->isAnimate:Z

    if-eqz v2, :cond_69

    .line 1401
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getChildCount()I

    move-result v0

    .line 1403
    .local v0, count:I
    iget v2, p0, Lcom/android/server/sec/ClipboardLayout;->ANIMATION_TIME:I

    iput v2, p0, Lcom/android/server/sec/ClipboardLayout;->animationTime:I

    .line 1404
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/server/sec/ClipboardLayout;->delayTime:I

    .line 1406
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/android/server/sec/ClipboardLayout;->selectIndex:I

    if-le v2, v3, :cond_1c

    invoke-direct {p0, v5}, Lcom/android/server/sec/ClipboardLayout;->setChildClickable(Z)V

    .line 1407
    :cond_1c
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_3a

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in dispatchdraw select index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sec/ClipboardLayout;->selectIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_3a
    iget v2, p0, Lcom/android/server/sec/ClipboardLayout;->selectIndex:I

    iget v3, p0, Lcom/android/server/sec/ClipboardLayout;->outSideCount:I

    add-int/2addr v2, v3

    if-le v2, v0, :cond_5f

    .line 1410
    iput v0, p0, Lcom/android/server/sec/ClipboardLayout;->mAniEndPoint:I

    .line 1415
    :goto_43
    const/4 v1, 0x0

    .local v1, i:I
    :goto_44
    if-ge v1, v0, :cond_67

    .line 1416
    iget v2, p0, Lcom/android/server/sec/ClipboardLayout;->selectIndex:I

    if-lt v1, v2, :cond_5c

    iget v2, p0, Lcom/android/server/sec/ClipboardLayout;->selectIndex:I

    iget v3, p0, Lcom/android/server/sec/ClipboardLayout;->mAniEndPoint:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_5c

    invoke-virtual {p0, v1}, Lcom/android/server/sec/ClipboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/server/sec/ClipboardLayout;->getAnim(I)Landroid/view/animation/TranslateAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1415
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 1412
    .end local v1           #i:I
    :cond_5f
    iget v2, p0, Lcom/android/server/sec/ClipboardLayout;->selectIndex:I

    iget v3, p0, Lcom/android/server/sec/ClipboardLayout;->outSideCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/sec/ClipboardLayout;->mAniEndPoint:I

    goto :goto_43

    .line 1418
    .restart local v1       #i:I
    :cond_67
    iput-boolean v5, p0, Lcom/android/server/sec/ClipboardLayout;->isAnimate:Z

    .line 1421
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_69
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1422
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 13
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 1429
    iget-boolean v6, p0, Lcom/android/server/sec/ClipboardLayout;->isEmpty:Z

    if-eqz v6, :cond_2f

    .line 1431
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/sec/ClipboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1433
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_2a

    .line 1435
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1436
    .local v5, width:I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1437
    .local v1, height:I
    iget v6, p0, Lcom/android/server/sec/ClipboardLayout;->screenWidth:I

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    sub-int v3, v6, v7

    .line 1438
    .local v3, left:I
    iget v6, p0, Lcom/android/server/sec/ClipboardLayout;->LAYOUT_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v1, 0x2

    sub-int v4, v6, v7

    .line 1440
    .local v4, top:I
    add-int v6, v3, v5

    add-int v7, v4, v1

    invoke-virtual {p2, v3, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1462
    .end local v0           #emptyView:Landroid/view/View;
    .end local v1           #height:I
    .end local v3           #left:I
    .end local v4           #top:I
    .end local v5           #width:I
    :cond_2a
    :goto_2a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    return v6

    .line 1446
    :cond_2f
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    .line 1447
    .local v2, id:I
    div-int/lit8 v6, v2, 0x2

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, p0, Lcom/android/server/sec/ClipboardLayout;->WIDTH:I

    mul-int v3, v6, v7

    .line 1450
    .restart local v3       #left:I
    rem-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_58

    .line 1451
    iget v4, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_TOP_GAP:I

    .line 1455
    .restart local v4       #top:I
    :goto_45
    invoke-virtual {p2, v3}, Landroid/view/View;->setLeft(I)V

    .line 1456
    invoke-virtual {p2, v4}, Landroid/view/View;->setTop(I)V

    .line 1457
    iget v6, p0, Lcom/android/server/sec/ClipboardLayout;->WIDTH:I

    add-int/2addr v6, v3

    invoke-virtual {p2, v6}, Landroid/view/View;->setRight(I)V

    .line 1458
    iget v6, p0, Lcom/android/server/sec/ClipboardLayout;->HEIGHT:I

    add-int/2addr v6, v4

    invoke-virtual {p2, v6}, Landroid/view/View;->setBottom(I)V

    goto :goto_2a

    .line 1453
    .end local v4           #top:I
    :cond_58
    iget v6, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_HEIGHT:I

    iget v7, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_TOP_GAP:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_GAP:I

    add-int v4, v6, v7

    .restart local v4       #top:I
    goto :goto_45
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 304
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/android/server/sec/ClipboardLayout;->mIsAnimating:Z

    if-eqz v0, :cond_6

    .line 309
    const/4 v0, 0x1

    .line 311
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const-wide/high16 v6, 0x4000

    const/high16 v5, 0x4000

    .line 1469
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1471
    const/4 v2, 0x0

    .line 1472
    .local v2, widthSpec:I
    iget v3, p0, Lcom/android/server/sec/ClipboardLayout;->screenWidth:I

    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    .line 1476
    .local v1, width:I
    iget-boolean v3, p0, Lcom/android/server/sec/ClipboardLayout;->isEmpty:Z

    if-eqz v3, :cond_2f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1494
    :goto_1d
    iget v3, p0, Lcom/android/server/sec/ClipboardLayout;->LAYOUT_HEIGHT:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1496
    .local v0, heightSpec:I
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/sec/ClipboardLayout;->setMeasuredDimension(II)V

    .line 1497
    return-void

    .line 1480
    .end local v0           #heightSpec:I
    :cond_2f
    iget-boolean v3, p0, Lcom/android/server/sec/ClipboardLayout;->isAnimate:Z

    if-eqz v3, :cond_4b

    sget v3, Lcom/android/server/sec/ClipboardLayout;->CHILD_COUNT:I

    int-to-double v3, v3

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p0, Lcom/android/server/sec/ClipboardLayout;->WIDTH:I

    mul-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/android/server/sec/ClipboardLayout;->WIDTH:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_1d

    .line 1483
    :cond_4b
    sget v3, Lcom/android/server/sec/ClipboardLayout;->CHILD_COUNT:I

    iget v4, p0, Lcom/android/server/sec/ClipboardLayout;->ITEM_COUNT_IN_SCREEN:I

    if-le v3, v4, :cond_69

    .line 1485
    sget v3, Lcom/android/server/sec/ClipboardLayout;->CHILD_COUNT:I

    int-to-double v3, v3

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p0, Lcom/android/server/sec/ClipboardLayout;->WIDTH:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/sec/ClipboardLayout;->LAST_ITEM_PADDING:I

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_1d

    .line 1489
    :cond_69
    sget v3, Lcom/android/server/sec/ClipboardLayout;->CHILD_COUNT:I

    int-to-double v3, v3

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p0, Lcom/android/server/sec/ClipboardLayout;->WIDTH:I

    mul-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_1d
.end method

.method public rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "bitmap"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 992
    if-eqz p2, :cond_31

    if-eqz p1, :cond_31

    .line 994
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 995
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1000
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1002
    .local v7, converted:Landroid/graphics/Bitmap;
    if-eq p1, v7, :cond_31

    .line 1004
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_30} :catch_32

    .line 1005
    move-object p1, v7

    .line 1013
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #converted:Landroid/graphics/Bitmap;
    :cond_31
    :goto_31
    return-object p1

    .line 1008
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_32
    move-exception v8

    .line 1010
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_31

    const-string v0, "ClipboardServiceEx"

    const-string v1, "out of memory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public showProtectedMarker(Landroid/view/View;I)V
    .registers 10
    .parameter "view"
    .parameter "index"

    .prologue
    .line 733
    const v6, 0x1020433

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 737
    .local v5, protectView:Landroid/widget/RelativeLayout;
    :try_start_9
    sget-object v6, Lcom/android/server/sec/ClipboardLayout;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v6, p2}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 738
    .local v0, data:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v3

    .line 740
    .local v3, isProtected:Z
    if-eqz v3, :cond_33

    .line 742
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 743
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 745
    .local v2, fixParams:Landroid/view/ViewGroup$LayoutParams;
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 746
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 748
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 749
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 753
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    .end local v2           #fixParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #isProtected:Z
    .end local v4           #params:Landroid/view/ViewGroup$LayoutParams;
    :goto_32
    return-void

    .line 751
    .restart local v0       #data:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v3       #isProtected:Z
    :cond_33
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_37} :catch_38

    goto :goto_32

    .line 752
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    .end local v3           #isProtected:Z
    :catch_38
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_32
.end method

.method public startDeleteAnimation()V
    .registers 5

    .prologue
    .line 584
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "ClipboardServiceEx"

    const-string v3, "startDeleteAnimation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->getChildCount()I

    move-result v0

    .line 587
    .local v0, count:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    .line 588
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/sec/ClipboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 589
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_1c

    .line 590
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 593
    .end local v1           #view:Landroid/view/View;
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->removeAllViews()V

    .line 594
    invoke-virtual {p0}, Lcom/android/server/sec/ClipboardLayout;->addChildView()V

    .line 595
    return-void
.end method

.method protected updateChildren()V
    .registers 8

    .prologue
    .line 1020
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_1
    sget v5, Lcom/android/server/sec/ClipboardLayout;->CHILD_COUNT:I

    if-ge v2, v5, :cond_4b

    .line 1021
    invoke-virtual {p0, v2}, Lcom/android/server/sec/ClipboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1022
    .local v4, vg:Landroid/view/View;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 1023
    .local v3, v:Landroid/view/View;
    sget-object v5, Lcom/android/server/sec/ClipboardLayout;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v5, v2}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 1024
    .local v0, cbData:Landroid/sec/clipboard/data/ClipboardData;
    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_4c

    instance-of v5, v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-eqz v5, :cond_4c

    .line 1025
    sget v5, Lcom/android/server/sec/ClipboardLayout;->mCurrentTargetDataType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3e

    .line 1026
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1028
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1020
    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1030
    :cond_3e
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1031
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_46} :catch_47

    goto :goto_3b

    .line 1044
    .end local v0           #cbData:Landroid/sec/clipboard/data/ClipboardData;
    .end local v3           #v:Landroid/view/View;
    .end local v4           #vg:Landroid/view/View;
    :catch_47
    move-exception v1

    .line 1045
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1047
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4b
    return-void

    .line 1033
    .restart local v0       #cbData:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v3       #v:Landroid/view/View;
    .restart local v4       #vg:Landroid/view/View;
    :cond_4c
    :try_start_4c
    instance-of v5, v3, Landroid/widget/ImageView;

    if-eqz v5, :cond_3b

    instance-of v5, v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    if-eqz v5, :cond_3b

    .line 1034
    sget v5, Lcom/android/server/sec/ClipboardLayout;->mCurrentTargetDataType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_62

    .line 1035
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1037
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3b

    .line 1039
    :cond_62
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1040
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_6a} :catch_47

    goto :goto_3b
.end method

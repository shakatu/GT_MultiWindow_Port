.class public Lcom/android/server/sec/ClippedDataPickerDialog;
.super Landroid/app/Dialog;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;,
        Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;,
        Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;
    }
.end annotation


# static fields
.field static CHILD_COUNT:I = 0x0

.field static final LOGTAG:Ljava/lang/String; = "ClipBoardDialog"


# instance fields
.field final ADD_ITEM:I

.field final MAX_PROTECTED_COUNT:I

.field mAdapter:Landroid/widget/BaseAdapter;

.field private mAddScenario:Z

.field private mBroadCastListener:Landroid/content/BroadcastReceiver;

.field private mButtonClick:Landroid/view/View$OnClickListener;

.field private mCalledDismissIntentFromSIPFlag:Z

.field private mCbm:Landroid/sec/clipboard/ClipboardExManager;

.field mClearButton:Landroid/widget/Button;

.field mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

.field private mClipBoardLandscapeHeight:I

.field private mClipBoardPanelLandscapeHeight:I

.field private mClipBoardPanelPortraitHeight:I

.field private mClipBoardPortraitHeight:I

.field private mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

.field private mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

.field private mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

.field private mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

.field mContentPanel:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mCurrentTargetDataType:I

.field private mDataCount:I

.field final mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

.field final mDismissIntentFromSIP:Ljava/lang/String;

.field final mDismissIntentFromStatusBar:Ljava/lang/String;

.field mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

.field mGridItemHeight:I

.field mGridItemWidth:I

.field mGridViewAniGoingOn:Z

.field mHTMLImageHeight:I

.field mHTMLImageWidth:I

.field private mIsInstalledMemo:Z

.field private mIsInstalledSMemo:Z

.field private mIsInstalledSNote:Z

.field private mIsProtect:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSelectedIndex:I

.field final mTextViewMaxLineLand:I

.field final mTextViewMaxLinePort:I

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 191
    const/4 v0, 0x0

    sput v0, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 349
    const v0, 0x1030324

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 151
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    .line 152
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 155
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    .line 156
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    .line 157
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    .line 159
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 160
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 162
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 163
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    .line 164
    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLinePort:I

    .line 165
    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLineLand:I

    .line 167
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 168
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    .line 169
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    .line 170
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    .line 174
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 175
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpLocation:[I

    .line 179
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    .line 180
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    .line 181
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    .line 182
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    .line 183
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    .line 185
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    .line 186
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    .line 189
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsProtect:Z

    .line 190
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->ADD_ITEM:I

    .line 193
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->MAX_PROTECTED_COUNT:I

    .line 196
    const-string v0, "DismissClipboardDialogFromPhoneStatusBar"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromStatusBar:Ljava/lang/String;

    .line 197
    const-string v0, "DismissClipboardDialogFromIMMService"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromSIP:Ljava/lang/String;

    .line 198
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSMemo:Z

    .line 201
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    .line 202
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledMemo:Z

    .line 204
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mButtonClick:Landroid/view/View$OnClickListener;

    .line 216
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    .line 217
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    .line 561
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$5;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$5;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    .line 642
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$6;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$6;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 788
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$7;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$7;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

    .line 350
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    .line 352
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/sec/clipboard/ClipboardExManager;)V
    .registers 8
    .parameter "context"
    .parameter "mgr"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 355
    const v0, 0x1030324

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 151
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    .line 152
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 155
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    .line 156
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    .line 157
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    .line 159
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 160
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 162
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 163
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    .line 164
    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLinePort:I

    .line 165
    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLineLand:I

    .line 167
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 168
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    .line 169
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    .line 170
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    .line 174
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 175
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpLocation:[I

    .line 179
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    .line 180
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    .line 181
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    .line 182
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    .line 183
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    .line 185
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    .line 186
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    .line 189
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsProtect:Z

    .line 190
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->ADD_ITEM:I

    .line 193
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->MAX_PROTECTED_COUNT:I

    .line 196
    const-string v0, "DismissClipboardDialogFromPhoneStatusBar"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromStatusBar:Ljava/lang/String;

    .line 197
    const-string v0, "DismissClipboardDialogFromIMMService"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromSIP:Ljava/lang/String;

    .line 198
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSMemo:Z

    .line 201
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    .line 202
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledMemo:Z

    .line 204
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mButtonClick:Landroid/view/View$OnClickListener;

    .line 216
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    .line 217
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    .line 561
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$5;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$5;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    .line 642
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$6;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$6;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 788
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$7;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$7;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

    .line 356
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    .line 358
    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 359
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/IClipboardDataList;)Landroid/sec/clipboard/data/IClipboardDataList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/sec/ClippedDataPickerDialog;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/TwSlidingDrawer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sec/ClippedDataPickerDialog;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataUiEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/IClipboardDataUiEvent;)Landroid/sec/clipboard/IClipboardDataUiEvent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/sec/ClippedDataPickerDialog;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/sec/ClippedDataPickerDialog;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    return p1
.end method

.method private dismissDialog()V
    .registers 4

    .prologue
    .line 495
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Clipboard dialog is closed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/sec/ClippedDataPickerDialog$4;

    invoke-direct {v1, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$4;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 505
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 507
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 508
    return-void
.end method

.method private isCheckProtectedItem(I)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 659
    const/4 v2, 0x0

    .line 662
    .local v2, isProtected:Z
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v3, p1}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 663
    .local v0, data:Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_d

    .line 664
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_f

    move-result v2

    :cond_d
    move v3, v2

    .line 671
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    :goto_e
    return v3

    .line 666
    :catch_f
    move-exception v1

    .line 667
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 668
    const/4 v3, 0x0

    goto :goto_e
.end method

.method private isProtectedPossible()Z
    .registers 7

    .prologue
    const/16 v5, 0xa

    const/4 v3, 0x0

    .line 677
    sget v4, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    if-le v4, v5, :cond_2b

    .line 679
    const/4 v2, 0x0

    .line 681
    .local v2, protectedCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    sget v4, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    if-ge v1, v4, :cond_2b

    .line 685
    :try_start_d
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v4, v1}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_16} :catch_23

    move-result v4

    if-eqz v4, :cond_28

    .line 687
    add-int/lit8 v2, v2, 0x1

    .line 689
    if-lt v2, v5, :cond_28

    .line 704
    .end local v1           #i:I
    .end local v2           #protectedCount:I
    :goto_1d
    return v3

    .line 692
    .restart local v1       #i:I
    .restart local v2       #protectedCount:I
    :catch_1e
    move-exception v0

    .line 694
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1d

    .line 697
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_23
    move-exception v0

    .line 698
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1d

    .line 681
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 704
    .end local v1           #i:I
    .end local v2           #protectedCount:I
    :cond_2b
    const/4 v3, 0x1

    goto :goto_1d
.end method


# virtual methods
.method public IsSetProtectAction(I)V
    .registers 12
    .parameter "selectItem"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1020
    :try_start_2
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v7, p1}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 1021
    .local v0, data:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v4

    .line 1022
    .local v4, isProtected:Z
    if-nez v4, :cond_3f

    move v4, v5

    .line 1025
    :goto_f
    if-eqz v4, :cond_41

    invoke-direct {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->isProtectedPossible()Z

    move-result v5

    if-nez v5, :cond_41

    .line 1026
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1040659

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1064
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    .end local v4           #isProtected:Z
    :goto_3e
    return-void

    .restart local v0       #data:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v4       #isProtected:Z
    :cond_3f
    move v4, v6

    .line 1022
    goto :goto_f

    .line 1031
    :cond_41
    invoke-virtual {v0, v4}, Landroid/sec/clipboard/data/ClipboardData;->SetProtectState(Z)V

    .line 1034
    const/4 v3, 0x1

    .line 1035
    .local v3, isAllDisabled:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_46
    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    if-ge v2, v5, :cond_6d

    .line 1036
    invoke-direct {p0, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v5

    if-nez v5, :cond_89

    .line 1037
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_6c

    const-string v5, "ClipboardServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "some item is not unlocked...index :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_6c
    const/4 v3, 0x0

    .line 1043
    :cond_6d
    if-eqz v3, :cond_8c

    .line 1044
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v6, Lcom/android/server/sec/ClippedDataPickerDialog$12;

    invoke-direct {v6, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$12;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v5, v6}, Lcom/android/server/sec/TwSlidingDrawer;->post(Ljava/lang/Runnable;)Z

    .line 1057
    :goto_79
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v5, p1, v0}, Landroid/sec/clipboard/data/IClipboardDataList;->updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .line 1058
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_83} :catch_84
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_83} :catch_97

    goto :goto_3e

    .line 1059
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    .end local v2           #i:I
    .end local v3           #isAllDisabled:Z
    .end local v4           #isProtected:Z
    :catch_84
    move-exception v1

    .line 1060
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3e

    .line 1035
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #data:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2       #i:I
    .restart local v3       #isAllDisabled:Z
    .restart local v4       #isProtected:Z
    :cond_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 1050
    :cond_8c
    :try_start_8c
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v6, Lcom/android/server/sec/ClippedDataPickerDialog$13;

    invoke-direct {v6, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$13;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v5, v6}, Lcom/android/server/sec/TwSlidingDrawer;->post(Ljava/lang/Runnable;)Z
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_96} :catch_84
    .catch Ljava/lang/NullPointerException; {:try_start_8c .. :try_end_96} :catch_97

    goto :goto_79

    .line 1061
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    .end local v2           #i:I
    .end local v3           #isAllDisabled:Z
    .end local v4           #isProtected:Z
    :catch_97
    move-exception v1

    .line 1062
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3e
.end method

.method createClearConfirmDialog(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 221
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    .line 222
    return-void
.end method

.method public deleteAnimation()V
    .registers 15

    .prologue
    const v2, 0x3f4ccccd

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/high16 v1, 0x3f80

    .line 824
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerGridView;->getLastVisiblePosition()I

    move-result v3

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    if-lt v3, v4, :cond_81

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerGridView;->getFirstVisiblePosition()I

    move-result v3

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    if-gt v3, v4, :cond_81

    .line 826
    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v4}, Lcom/android/server/sec/ClippedDataPickerGridView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v12, v3, v4

    .line 827
    .local v12, position:I
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_42

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_42
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 830
    .local v10, animSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 831
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 832
    .local v9, alpha:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 833
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 834
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 835
    const-wide/16 v1, 0x1f4

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 838
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v1, v12}, Lcom/android/server/sec/ClippedDataPickerGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 840
    .local v13, v:Landroid/view/View;
    if-eqz v13, :cond_75

    .line 841
    invoke-virtual {v13, v10}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 842
    invoke-virtual {v13, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 889
    .end local v0           #scale:Landroid/view/animation/ScaleAnimation;
    .end local v9           #alpha:Landroid/view/animation/AlphaAnimation;
    .end local v10           #animSet:Landroid/view/animation/AnimationSet;
    .end local v12           #position:I
    .end local v13           #v:Landroid/view/View;
    :cond_74
    :goto_74
    return-void

    .line 844
    .restart local v0       #scale:Landroid/view/animation/ScaleAnimation;
    .restart local v9       #alpha:Landroid/view/animation/AlphaAnimation;
    .restart local v10       #animSet:Landroid/view/animation/AnimationSet;
    .restart local v12       #position:I
    .restart local v13       #v:Landroid/view/View;
    :cond_75
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_74

    const-string v1, "ClipboardServiceEx"

    const-string v2, "v is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 851
    .end local v0           #scale:Landroid/view/animation/ScaleAnimation;
    .end local v9           #alpha:Landroid/view/animation/AlphaAnimation;
    .end local v10           #animSet:Landroid/view/animation/AnimationSet;
    .end local v12           #position:I
    .end local v13           #v:Landroid/view/View;
    :cond_81
    :try_start_81
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardDataUiEvent;->removeItem(I)V

    .line 852
    sget v1, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_8e} :catch_9a

    .line 860
    :goto_8e
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v1

    if-nez v1, :cond_74

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    goto :goto_74

    .line 854
    :catch_9a
    move-exception v11

    .line 856
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8e
.end method

.method public dismiss()V
    .registers 4

    .prologue
    .line 1747
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1748
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    .line 1751
    :cond_11
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_1c

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Clipboard dialog is closed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_1c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/sec/ClippedDataPickerDialog$14;

    invoke-direct {v1, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$14;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1761
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1763
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1764
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1768
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onClipBoardDialogSizeChanged()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 1787
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1788
    .local v0, cfg:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    if-eq v2, v3, :cond_45

    .line 1789
    const v2, 0x1020432

    invoke-virtual {p0, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1790
    .local v1, clipBoardBottomPanel:Landroid/widget/LinearLayout;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    .line 1791
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    if-eqz v2, :cond_45

    .line 1792
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_46

    .line 1793
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/server/sec/TwSlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1794
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1795
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/sec/ClippedDataPickerGridView;->setNumColumns(I)V

    .line 1802
    .end local v1           #clipBoardBottomPanel:Landroid/widget/LinearLayout;
    :cond_45
    :goto_45
    return-void

    .line 1796
    .restart local v1       #clipBoardBottomPanel:Landroid/widget/LinearLayout;
    :cond_46
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_45

    .line 1797
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/server/sec/TwSlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1798
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_45
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    .line 363
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 366
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/Window;->addFlags(I)V

    .line 369
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105008e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    .line 370
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105008f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    .line 371
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050090

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    .line 372
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050091

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    .line 374
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 375
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v0, :cond_1fc

    .line 376
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_183

    .line 377
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_73

    const-string v7, "ClipboardServiceEx"

    const-string v8, "orientation == Configuration.ORIENTATION_LANDSCAPE"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_73
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050096

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 380
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050097

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 381
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050098

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 382
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050099

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    .line 398
    :cond_bb
    :goto_bb
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 399
    .local v6, theWindow:Landroid/view/Window;
    const/16 v7, 0x57

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    .line 401
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_ee

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Width :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   Height :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_ee
    const v7, 0x1090105

    invoke-virtual {p0, v7}, Lcom/android/server/sec/ClippedDataPickerDialog;->setContentView(I)V

    .line 405
    const v7, 0x102025d

    invoke-virtual {p0, v7}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/server/sec/ClippedDataPickerGridView;

    iput-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    .line 409
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    if-nez v7, :cond_111

    .line 410
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "clipboardEx"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 413
    :cond_111
    new-instance v7, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Lcom/android/server/sec/ClippedDataPickerDialog$1;)V

    iput-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    .line 414
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    invoke-virtual {v7, v8}, Landroid/sec/clipboard/ClipboardExManager;->RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z

    .line 417
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    new-instance v8, Lcom/android/server/sec/ClippedDataPickerDialog$2;

    invoke-direct {v8, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$2;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v7, v8}, Lcom/android/server/sec/ClippedDataPickerGridView;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 433
    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setLayout(II)V

    .line 435
    const v7, 0x1020430

    invoke-virtual {p0, v7}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/server/sec/TwSlidingDrawer;

    iput-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    .line 437
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v8, Lcom/android/server/sec/ClippedDataPickerDialog$3;

    invoke-direct {v8, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$3;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v7, v8}, Lcom/android/server/sec/TwSlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 455
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->rebuildView()V

    .line 457
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 458
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 460
    .local v2, installedApplications:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_154
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_209

    .line 461
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 462
    .local v3, installedPackage:Ljava/lang/String;
    const-string v7, "com.sec.android.widgetapp.diotek.smemo"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16c

    .line 463
    iput-boolean v10, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSMemo:Z

    .line 465
    :cond_16c
    const-string v7, "com.sec.android.app.snotebook"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_176

    .line 466
    iput-boolean v10, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    .line 468
    :cond_176
    const-string v7, "com.sec.android.app.memo"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_180

    .line 469
    iput-boolean v10, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledMemo:Z

    .line 460
    :cond_180
    add-int/lit8 v1, v1, 0x1

    goto :goto_154

    .line 384
    .end local v1           #i:I
    .end local v2           #installedApplications:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3           #installedPackage:Ljava/lang/String;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    .end local v6           #theWindow:Landroid/view/Window;
    :cond_183
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_1dc

    .line 385
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_192

    const-string v7, "ClipboardServiceEx"

    const-string v8, "orientation == Configuration.ORIENTATION_PORTRAIT"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_192
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050092

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 388
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050093

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 389
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050094

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 390
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050095

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    goto/16 :goto_bb

    .line 392
    :cond_1dc
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_bb

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "orientation does not accept. config.orientation :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bb

    .line 395
    :cond_1fc
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_bb

    const-string v7, "ClipboardServiceEx"

    const-string v8, "config is null!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bb

    .line 475
    .restart local v1       #i:I
    .restart local v2       #installedApplications:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v6       #theWindow:Landroid/view/Window;
    :cond_209
    const v7, 0x1020433

    invoke-virtual {p0, v7}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    .line 476
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    const/4 v4, 0x1

    .line 480
    .local v4, isAllDisabled:Z
    const/4 v1, 0x0

    :goto_21d
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v7}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v7

    if-ge v1, v7, :cond_24b

    .line 481
    invoke-direct {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v7

    if-nez v7, :cond_248

    .line 482
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_247

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "some item is not unlocked...index :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_247
    const/4 v4, 0x0

    .line 480
    :cond_248
    add-int/lit8 v1, v1, 0x1

    goto :goto_21d

    .line 487
    :cond_24b
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v7, :cond_262

    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    if-eqz v7, :cond_262

    .line 488
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v7}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v7

    if-eqz v7, :cond_25d

    if-eqz v4, :cond_262

    .line 489
    :cond_25d
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 492
    :cond_262
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v5, 0x1140005

    .line 710
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/view/View;->setContextMenuZOrderToTop(Z)V

    .line 712
    invoke-super {p0, p1, p2, p3}, Landroid/app/Dialog;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 713
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v3, p2}, Lcom/android/server/sec/ClippedDataPickerGridView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    .line 715
    new-instance v2, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 716
    .local v2, inflater:Landroid/view/MenuInflater;
    const v3, 0x104076d

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 717
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerGridView;->isLayoutAnimating()Z

    move-result v3

    if-nez v3, :cond_37

    .line 718
    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 720
    const v3, 0x1140001

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 727
    :cond_37
    :goto_37
    const/4 v0, 0x0

    .line 730
    .local v0, data:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_38
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-interface {v3, v4}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3f} :catch_50

    move-result-object v0

    .line 735
    :goto_40
    if-eqz v0, :cond_82

    .line 736
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    packed-switch v3, :pswitch_data_a2

    .line 766
    :cond_49
    :goto_49
    :pswitch_49
    return-void

    .line 723
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    :cond_4a
    const/high16 v3, 0x114

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_37

    .line 731
    .restart local v0       #data:Landroid/sec/clipboard/data/ClipboardData;
    :catch_50
    move-exception v1

    .line 732
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_40

    .line 738
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_55
    iget-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSMemo:Z

    if-eqz v3, :cond_68

    .line 739
    iget-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    if-eqz v3, :cond_61

    .line 740
    invoke-virtual {v2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_49

    .line 742
    :cond_61
    const v3, 0x1140004

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_49

    .line 744
    :cond_68
    iget-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    if-eqz v3, :cond_70

    .line 745
    invoke-virtual {v2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_49

    .line 746
    :cond_70
    iget-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledMemo:Z

    if-eqz v3, :cond_49

    .line 747
    const v3, 0x1140003

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_49

    .line 754
    :pswitch_7b
    const v3, 0x1140002

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_49

    .line 764
    :cond_82
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_49

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateContextMenu(). data is invalid state. mSelectedIndex :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 736
    nop

    :pswitch_data_a2
    .packed-switch 0x2
        :pswitch_55
        :pswitch_7b
        :pswitch_49
    .end packed-switch
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 12
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 892
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_20

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSelectedIndex :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_20
    :try_start_20
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    iget v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-interface {v6, v7}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 897
    .local v0, data:Landroid/sec/clipboard/data/ClipboardData;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_102

    .line 1010
    invoke-super {p0, p2}, Landroid/app/Dialog;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    .line 1015
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    :goto_33
    return v4

    .line 899
    .restart local v0       #data:Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_34
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_3f

    const-string v5, "ClipboardServiceEx"

    const-string v6, "select delete menu"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->deleteAnimation()V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_42} :catch_43

    goto :goto_33

    .line 1012
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    :catch_43
    move-exception v1

    .line 1013
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1015
    invoke-super {p0, p2}, Landroid/app/Dialog;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_33

    .line 906
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #data:Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_4c
    :try_start_4c
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_57

    const-string v5, "ClipboardServiceEx"

    const-string v6, "select lock menu"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_57
    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {p0, v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->IsSetProtectAction(I)V

    goto :goto_33

    .line 913
    :pswitch_5d
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_68

    const-string v6, "ClipboardServiceEx"

    const-string v7, "select save in memo menu"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_68
    if-eqz v0, :cond_78

    .line 915
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/sec/ClippedDataPickerDialog$8;

    invoke-direct {v5, p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$8;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 927
    .local v3, stringT:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_33

    .line 931
    .end local v3           #stringT:Ljava/lang/Thread;
    :cond_78
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_83

    const-string v4, "ClipboardServiceEx"

    const-string v6, "mClipboardDataList.getItem(mSelectedIndex) is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    move v4, v5

    .line 932
    goto :goto_33

    .line 936
    :pswitch_85
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_90

    const-string v6, "ClipboardServiceEx"

    const-string v7, "select save in s memo menu"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_90
    if-eqz v0, :cond_a0

    .line 938
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/sec/ClippedDataPickerDialog$9;

    invoke-direct {v5, p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$9;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 950
    .restart local v3       #stringT:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_33

    .line 954
    .end local v3           #stringT:Ljava/lang/Thread;
    :cond_a0
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_ab

    const-string v4, "ClipboardServiceEx"

    const-string v6, "mClipboardDataList.getItem(mSelectedIndex) is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    move v4, v5

    .line 955
    goto :goto_33

    .line 959
    :pswitch_ad
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_b8

    const-string v6, "ClipboardServiceEx"

    const-string v7, "select save in s note menu"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_b8
    if-eqz v0, :cond_c9

    .line 961
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/sec/ClippedDataPickerDialog$10;

    invoke-direct {v5, p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$10;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 973
    .restart local v3       #stringT:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_33

    .line 977
    .end local v3           #stringT:Ljava/lang/Thread;
    :cond_c9
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_d4

    const-string v4, "ClipboardServiceEx"

    const-string v6, "mClipboardDataList.getItem(mSelectedIndex) is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    move v4, v5

    .line 978
    goto/16 :goto_33

    .line 982
    :pswitch_d7
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_e2

    const-string v6, "ClipboardServiceEx"

    const-string v7, "select save in gallery menu"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_e2
    if-eqz v0, :cond_f3

    .line 985
    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/sec/ClippedDataPickerDialog$11;

    invoke-direct {v5, p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$11;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1001
    .local v2, imageT:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_33

    .line 1005
    .end local v2           #imageT:Ljava/lang/Thread;
    :cond_f3
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_fe

    const-string v4, "ClipboardServiceEx"

    const-string v6, "mClipboardDataList.getItem(mSelectedIndex) is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_fe} :catch_43

    :cond_fe
    move v4, v5

    .line 1006
    goto/16 :goto_33

    .line 897
    nop

    :pswitch_data_102
    .packed-switch 0x1020474
        :pswitch_34
        :pswitch_4c
        :pswitch_d7
        :pswitch_5d
        :pswitch_85
        :pswitch_ad
    .end packed-switch
.end method

.method protected onStart()V
    .registers 5

    .prologue
    .line 516
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    if-eqz v2, :cond_9

    .line 517
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/server/sec/TwSlidingDrawer;->open()V

    .line 521
    :cond_9
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 523
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 524
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v2, "DismissClipboardDialogFromIMMService"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v2, "DismissClipboardDialogFromPhoneStatusBar"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_30

    const-string v2, "ClipboardServiceEx"

    const-string v3, "register PhoneStateListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 533
    .local v1, tmgr:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_45

    .line 534
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 538
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 541
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 547
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 548
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 551
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_17

    const-string v1, "ClipboardServiceEx"

    const-string v2, "unregister PhoneStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 553
    .local v0, tmgr:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_2c

    .line 554
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 555
    const/4 v0, 0x0

    .line 557
    :cond_2c
    return-void
.end method

.method public rebuildView()V
    .registers 4

    .prologue
    .line 1735
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1737
    .local v1, theWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1739
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7dc

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1743
    return-void
.end method

.method public setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 6
    .parameter "type"
    .parameter "clPasteEvent"

    .prologue
    .line 1720
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    if-eq v0, p1, :cond_2f

    .line 1721
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasteTargetViewDataType() called !  mCurrentTargetDataType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_22
    iput p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    .line 1724
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1730
    :cond_2f
    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1731
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 1772
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/sec/ClippedDataPickerDialog$15;

    invoke-direct {v1, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$15;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1781
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1783
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 1784
    return-void
.end method

.method public showProtectedMarker(Landroid/view/View;I)V
    .registers 11
    .parameter "v"
    .parameter "index"

    .prologue
    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 1067
    if-nez p1, :cond_5

    .line 1103
    :cond_4
    :goto_4
    return-void

    .line 1071
    :cond_5
    const v5, 0x102043c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1072
    .local v2, lockimage:Landroid/widget/ImageView;
    const v5, 0x102043d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 1074
    .local v4, protectView:Landroid/widget/RelativeLayout;
    invoke-direct {p0, p2}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v1

    .line 1075
    .local v1, isProtected:Z
    if-eqz v1, :cond_60

    .line 1078
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 1079
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1080
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_38

    const-string v5, "ClipboardServiceEx"

    const-string v6, "showProtectedMarker@v.getTag() != null no!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_38
    :goto_38
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1088
    .local v0, fixParams:Landroid/view/ViewGroup$LayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1089
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1091
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1094
    if-eqz v2, :cond_4

    .line 1095
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 1082
    .end local v0           #fixParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_50
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1083
    .restart local v3       #params:Landroid/view/ViewGroup$LayoutParams;
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_38

    const-string v5, "ClipboardServiceEx"

    const-string v6, "showProtectedMarker@v.getTag() != null !!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 1098
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_60
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1099
    if-eqz v2, :cond_4

    .line 1100
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

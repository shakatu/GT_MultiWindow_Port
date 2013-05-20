.class Lcom/android/server/sec/ClipboardLayout$6;
.super Ljava/lang/Object;
.source "ClipboardLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClipboardLayout;->setClippedDataIntoView(Landroid/view/View;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClipboardLayout;

.field final synthetic val$cbData:Landroid/sec/clipboard/data/ClipboardData;

.field final synthetic val$position:I

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$vg:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClipboardLayout;Landroid/sec/clipboard/data/ClipboardData;Landroid/view/View;Landroid/view/View;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iput-object p2, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$cbData:Landroid/sec/clipboard/data/ClipboardData;

    iput-object p3, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    iput-object p4, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$vg:Landroid/view/View;

    iput p5, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 1132
    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget-object v10, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$cbData:Landroid/sec/clipboard/data/ClipboardData;

    iget-object v11, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v11, v11, Lcom/android/server/sec/ClipboardLayout;->ITEM_WIDTH:I

    iget-object v12, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v12, v12, Lcom/android/server/sec/ClipboardLayout;->ITEM_HEIGHT:I

    #calls: Lcom/android/server/sec/ClipboardLayout;->getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;
    invoke-static {v9, v10, v11, v12}, Lcom/android/server/sec/ClipboardLayout;->access$300(Lcom/android/server/sec/ClipboardLayout;Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1134
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$cbData:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v9, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v7

    .line 1135
    .local v7, path:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/sec/ClipboardLayout;->getExifOrientation(Ljava/lang/String;)I

    move-result v3

    .line 1136
    .local v3, degree:I
    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    invoke-virtual {v9, v0, v3}, Lcom/android/server/sec/ClipboardLayout;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1140
    if-eqz v0, :cond_d5

    .line 1141
    move-object v5, v0

    .line 1143
    .local v5, localBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1144
    .local v2, bmWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1145
    .local v1, bmHeight:I
    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1147
    .local v6, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v9, v9, Lcom/android/server/sec/ClipboardLayout;->ITEM_WIDTH:I

    if-gt v2, v9, :cond_41

    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v9, v9, Lcom/android/server/sec/ClipboardLayout;->ITEM_HEIGHT:I

    if-le v1, v9, :cond_12a

    .line 1148
    :cond_41
    int-to-float v10, v2

    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v11, v9, Lcom/android/server/sec/ClipboardLayout;->ITEM_WIDTH:I

    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v12

    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    add-int/2addr v9, v12

    sub-int v9, v11, v9

    int-to-float v9, v9

    div-float v8, v10, v9

    .line 1149
    .local v8, widthRate:F
    int-to-float v10, v1

    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v11, v9, Lcom/android/server/sec/ClipboardLayout;->ITEM_HEIGHT:I

    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v12

    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v12

    sub-int v9, v11, v9

    int-to-float v9, v9

    div-float v4, v10, v9

    .line 1151
    .local v4, heightRate:F
    cmpl-float v9, v8, v4

    if-lez v9, :cond_e7

    .line 1152
    int-to-float v9, v2

    div-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v11

    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1153
    int-to-float v9, v1

    div-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v11

    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1155
    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v10, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v10, v10, Lcom/android/server/sec/ClipboardLayout;->ITEM_WIDTH:I

    if-lt v9, v10, :cond_bd

    .line 1156
    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v9, v9, Lcom/android/server/sec/ClipboardLayout;->ITEM_WIDTH:I

    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1165
    :cond_bd
    :goto_bd
    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget-object v9, v9, Lcom/android/server/sec/ClipboardLayout;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/sec/ClipboardLayout$6$1;

    invoke-direct {v10, p0, v6}, Lcom/android/server/sec/ClipboardLayout$6$1;-><init>(Lcom/android/server/sec/ClipboardLayout$6;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1181
    .end local v4           #heightRate:F
    .end local v8           #widthRate:F
    :goto_c9
    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget-object v9, v9, Lcom/android/server/sec/ClipboardLayout;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/sec/ClipboardLayout$6$3;

    invoke-direct {v10, p0, v5}, Lcom/android/server/sec/ClipboardLayout$6$3;-><init>(Lcom/android/server/sec/ClipboardLayout$6;Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1194
    .end local v1           #bmHeight:I
    .end local v2           #bmWidth:I
    .end local v5           #localBitmap:Landroid/graphics/Bitmap;
    .end local v6           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_d5
    sget v9, Lcom/android/server/sec/ClipboardLayout;->mCurrentTargetDataType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_e6

    .line 1195
    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget-object v9, v9, Lcom/android/server/sec/ClipboardLayout;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/sec/ClipboardLayout$6$4;

    invoke-direct {v10, p0}, Lcom/android/server/sec/ClipboardLayout$6$4;-><init>(Lcom/android/server/sec/ClipboardLayout$6;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1204
    :cond_e6
    return-void

    .line 1158
    .restart local v1       #bmHeight:I
    .restart local v2       #bmWidth:I
    .restart local v4       #heightRate:F
    .restart local v5       #localBitmap:Landroid/graphics/Bitmap;
    .restart local v6       #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v8       #widthRate:F
    :cond_e7
    int-to-float v9, v2

    div-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v11

    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1159
    int-to-float v9, v1

    div-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v11

    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1161
    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v10, v10, Lcom/android/server/sec/ClipboardLayout;->ITEM_HEIGHT:I

    if-lt v9, v10, :cond_bd

    .line 1162
    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v9, v9, Lcom/android/server/sec/ClipboardLayout;->ITEM_HEIGHT:I

    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_bd

    .line 1173
    .end local v4           #heightRate:F
    .end local v8           #widthRate:F
    :cond_12a
    iget-object v9, p0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget-object v9, v9, Lcom/android/server/sec/ClipboardLayout;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/sec/ClipboardLayout$6$2;

    invoke-direct {v10, p0}, Lcom/android/server/sec/ClipboardLayout$6$2;-><init>(Lcom/android/server/sec/ClipboardLayout$6;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c9
.end method

.class public final Lcom/android/systemui/multiwindow/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final DEBUG_VIEWS_AND_SIZES:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiWindowLauncher.Utilities"

.field private static mBgPaint:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private static sBlackPaint:Landroid/graphics/Paint;

.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, -0x1

    .line 61
    sput v0, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    .line 62
    sput v0, Lcom/android/systemui/multiwindow/Utilities;->sIconHeight:I

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/Utilities;->mBgPaint:Ljava/util/HashMap;

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/multiwindow/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    .line 76
    sget-object v0, Lcom/android/systemui/multiwindow/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 79
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/multiwindow/Utilities;->sColors:[I

    .line 80
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/multiwindow/Utilities;->sColorIndex:I

    return-void

    .line 79
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3
    .parameter "dest"
    .parameter "sizeParent"
    .parameter "sizeChild"

    .prologue
    const/high16 v2, 0x4000

    .line 369
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 370
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 371
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 372
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 373
    return-void
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 4
    .parameter "dest"
    .parameter "sizeParent"
    .parameter "sizeChild"

    .prologue
    const/high16 v3, 0x4000

    .line 376
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 377
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 378
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 379
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 380
    return-void
.end method

.method public static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "icon"
    .parameter "context"

    .prologue
    const/high16 v10, 0x3f00

    .line 88
    sget-object v7, Lcom/android/systemui/multiwindow/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v7

    .line 89
    :try_start_0
    sget v6, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_0

    .line 90
    invoke-static {p1}, Lcom/android/systemui/multiwindow/Utilities;->initStatics(Landroid/content/Context;)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 93
    .local v5, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 94
    .local v4, sourceHeight:I
    const/high16 v3, 0x3f80

    .line 95
    .local v3, scale:F
    sget v6, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    if-gt v5, v6, :cond_1

    sget v6, Lcom/android/systemui/multiwindow/Utilities;->sIconHeight:I

    if-le v4, v6, :cond_2

    .line 97
    :cond_1
    sget v6, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    int-to-float v6, v6

    int-to-float v8, v5

    div-float/2addr v6, v8

    sget v8, Lcom/android/systemui/multiwindow/Utilities;->sIconHeight:I

    int-to-float v8, v8

    int-to-float v9, v4

    div-float/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 98
    int-to-float v6, v5

    mul-float/2addr v6, v3

    float-to-int v5, v6

    .line 99
    int-to-float v6, v4

    mul-float/2addr v6, v3

    float-to-int v4, v6

    .line 104
    :cond_2
    sget v6, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    sub-int v0, v6, v5

    .line 105
    .local v0, dx:I
    sget v6, Lcom/android/systemui/multiwindow/Utilities;->sIconHeight:I

    sub-int v1, v6, v4

    .line 106
    .local v1, dy:I
    const/high16 v6, 0x3f80

    cmpg-float v6, v3, v6

    if-ltz v6, :cond_3

    if-gtz v0, :cond_3

    if-lez v1, :cond_4

    .line 107
    :cond_3
    sget v6, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    sget v8, Lcom/android/systemui/multiwindow/Utilities;->sIconHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 109
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    sget-object v6, Lcom/android/systemui/multiwindow/Utilities;->sCanvas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 110
    sget-object v6, Lcom/android/systemui/multiwindow/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    sget-object v6, Lcom/android/systemui/multiwindow/Utilities;->sCanvas:Landroid/graphics/Canvas;

    int-to-float v8, v0

    mul-float/2addr v8, v10

    int-to-float v9, v1

    mul-float/2addr v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    sget-object v6, Lcom/android/systemui/multiwindow/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 113
    sget-object v6, Lcom/android/systemui/multiwindow/Utilities;->sCanvas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, p0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 114
    move-object p0, v2

    .line 115
    sget-object v6, Lcom/android/systemui/multiwindow/Utilities;->sCanvas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    .end local v2           #newBitmap:Landroid/graphics/Bitmap;
    :cond_4
    monitor-exit v7

    .line 118
    return-object p0

    .line 117
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v3           #scale:F
    .end local v4           #sourceHeight:I
    .end local v5           #sourceWidth:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 18
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 125
    sget-object v16, Lcom/android/systemui/multiwindow/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v16

    .line 126
    :try_start_0
    sget v15, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    .line 127
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/multiwindow/Utilities;->initStatics(Landroid/content/Context;)V

    .line 130
    :cond_0
    sget v12, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    .line 131
    .local v12, width:I
    sget v5, Lcom/android/systemui/multiwindow/Utilities;->sIconHeight:I

    .line 133
    .local v5, height:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 134
    .local v8, iconWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 136
    .local v7, iconHeight:I
    move-object/from16 v0, p0

    instance-of v15, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v15, :cond_5

    .line 137
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v9, v0

    .line 138
    .local v9, painter:Landroid/graphics/drawable/PaintDrawable;
    sget v15, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    invoke-virtual {v9, v15}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 139
    sget v15, Lcom/android/systemui/multiwindow/Utilities;->sIconHeight:I

    invoke-virtual {v9, v15}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 148
    .end local v9           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    if-lez v12, :cond_4

    if-lez v5, :cond_4

    .line 149
    int-to-float v15, v8

    int-to-float v0, v7

    move/from16 v17, v0

    div-float v10, v15, v17

    .line 150
    .local v10, ratio:F
    if-lt v12, v8, :cond_2

    if-ge v5, v7, :cond_8

    .line 151
    :cond_2
    if-le v8, v7, :cond_6

    .line 152
    int-to-float v15, v12

    div-float/2addr v15, v10

    float-to-int v5, v15

    .line 156
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v15

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_7

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 158
    .local v3, c:Landroid/graphics/Bitmap$Config;
    :goto_2
    sget v15, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    sget v17, Lcom/android/systemui/multiwindow/Utilities;->sIconHeight:I

    move/from16 v0, v17

    invoke-static {v15, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 159
    .local v11, thumb:Landroid/graphics/Bitmap;
    sget-object v4, Lcom/android/systemui/multiwindow/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 160
    .local v4, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v4, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    sget-object v15, Lcom/android/systemui/multiwindow/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 167
    sget v15, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    sub-int/2addr v15, v12

    div-int/lit8 v13, v15, 0x2

    .line 168
    .local v13, x:I
    sget v15, Lcom/android/systemui/multiwindow/Utilities;->sIconHeight:I

    sub-int/2addr v15, v5

    div-int/lit8 v14, v15, 0x2

    .line 169
    .local v14, y:I
    add-int v15, v13, v12

    add-int v17, v14, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 171
    sget-object v15, Lcom/android/systemui/multiwindow/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 172
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v6, v15, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local p0
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    :try_start_1
    invoke-virtual {v4, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 p0, v6

    .line 190
    .end local v3           #c:Landroid/graphics/Bitmap$Config;
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v10           #ratio:F
    .end local v11           #thumb:Landroid/graphics/Bitmap;
    .end local v13           #x:I
    .end local v14           #y:I
    .restart local p0
    :cond_4
    :goto_3
    :try_start_2
    monitor-exit v16

    return-object p0

    .line 140
    :cond_5
    move-object/from16 v0, p0

    instance-of v15, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v15, :cond_1

    .line 142
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 143
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v15

    if-nez v15, :cond_1

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 191
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v5           #height:I
    .end local v7           #iconHeight:I
    .end local v8           #iconWidth:I
    .end local v12           #width:I
    :catchall_0
    move-exception v15

    :goto_4
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15

    .line 153
    .restart local v5       #height:I
    .restart local v7       #iconHeight:I
    .restart local v8       #iconWidth:I
    .restart local v10       #ratio:F
    .restart local v12       #width:I
    :cond_6
    if-le v7, v8, :cond_3

    .line 154
    int-to-float v15, v5

    mul-float/2addr v15, v10

    float-to-int v12, v15

    goto/16 :goto_1

    .line 156
    :cond_7
    :try_start_3
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    .line 174
    :cond_8
    if-ge v8, v12, :cond_4

    if-ge v7, v5, :cond_4

    .line 175
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 176
    .restart local v3       #c:Landroid/graphics/Bitmap$Config;
    sget v15, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    sget v17, Lcom/android/systemui/multiwindow/Utilities;->sIconHeight:I

    move/from16 v0, v17

    invoke-static {v15, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 177
    .restart local v11       #thumb:Landroid/graphics/Bitmap;
    sget-object v4, Lcom/android/systemui/multiwindow/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 178
    .restart local v4       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v4, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    sget-object v15, Lcom/android/systemui/multiwindow/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 180
    sub-int v15, v12, v8

    div-int/lit8 v13, v15, 0x2

    .line 181
    .restart local v13       #x:I
    sub-int v15, v5, v7

    div-int/lit8 v14, v15, 0x2

    .line 182
    .restart local v14       #y:I
    add-int v15, v13, v12

    add-int v17, v14, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 183
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 184
    sget-object v15, Lcom/android/systemui/multiwindow/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 185
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v6, v15, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    .end local p0
    .restart local v6       #icon:Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    :try_start_4
    invoke-virtual {v4, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 p0, v6

    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p0
    goto :goto_3

    .line 191
    .end local p0
    .restart local v6       #icon:Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v15

    move-object/from16 p0, v6

    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p0
    goto :goto_4
.end method

.method public static drawDisabledBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 242
    sget-object v3, Lcom/android/systemui/multiwindow/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v3

    .line 243
    :try_start_0
    sget v2, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 244
    invoke-static {p1}, Lcom/android/systemui/multiwindow/Utilities;->initStatics(Landroid/content/Context;)V

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 248
    .local v1, disabled:Landroid/graphics/Bitmap;
    sget-object v0, Lcom/android/systemui/multiwindow/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 249
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 251
    const/4 v2, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/android/systemui/multiwindow/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 253
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 255
    monitor-exit v3

    return-object v1

    .line 256
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #disabled:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static drawSelectedAllAppsBitmap(Landroid/graphics/Canvas;IIZLandroid/graphics/Bitmap;)V
    .locals 8
    .parameter "dest"
    .parameter "destWidth"
    .parameter "destHeight"
    .parameter "pressed"
    .parameter "src"

    .prologue
    .line 196
    sget-object v5, Lcom/android/systemui/multiwindow/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v5

    .line 197
    :try_start_0
    sget v4, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 201
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Assertion failed: Utilities not initialized"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 215
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 204
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v4, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 206
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 207
    .local v3, xy:[I
    sget-object v4, Lcom/android/systemui/multiwindow/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, v4, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    .local v0, mask:Landroid/graphics/Bitmap;
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, p1, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v1, v4

    .line 210
    .local v1, px:F
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, p2, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    .line 211
    .local v2, py:F
    const/4 v4, 0x0

    aget v4, v3, v4

    int-to-float v4, v4

    add-float v6, v1, v4

    const/4 v4, 0x1

    aget v4, v3, v4

    int-to-float v4, v4

    add-float v7, v2, v4

    if-eqz p3, :cond_1

    sget-object v4, Lcom/android/systemui/multiwindow/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p0, v0, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 214
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    monitor-exit v5

    .line 216
    return-void

    .line 211
    :cond_1
    sget-object v4, Lcom/android/systemui/multiwindow/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static drawVerticalLine(Landroid/view/View;Landroid/graphics/Canvas;I)V
    .locals 8
    .parameter "view"
    .parameter "canvas"
    .parameter "xOffset"

    .prologue
    .line 383
    invoke-static {}, Lcom/android/systemui/multiwindow/Utilities;->ensureBlackPaint()V

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    .line 385
    .local v6, sx:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    .line 386
    .local v7, sy:I
    add-int v0, v6, p2

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    int-to-float v2, v7

    add-int v0, v6, p2

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v4, v0

    sget-object v5, Lcom/android/systemui/multiwindow/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 387
    return-void
.end method

.method private static ensureBlackPaint()V
    .locals 2

    .prologue
    .line 344
    sget-object v0, Lcom/android/systemui/multiwindow/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    .line 346
    sget-object v0, Lcom/android/systemui/multiwindow/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    sget-object v0, Lcom/android/systemui/multiwindow/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 349
    :cond_0
    return-void
.end method

.method private static ensureViewBgPaint(Landroid/view/View;)Landroid/graphics/Paint;
    .locals 5
    .parameter "view"

    .prologue
    .line 333
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 334
    .local v1, id:Ljava/lang/Integer;
    sget-object v2, Lcom/android/systemui/multiwindow/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    .line 335
    .local v0, bgPaint:Landroid/graphics/Paint;
    if-nez v0, :cond_0

    .line 336
    new-instance v0, Landroid/graphics/Paint;

    .end local v0           #bgPaint:Landroid/graphics/Paint;
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 337
    .restart local v0       #bgPaint:Landroid/graphics/Paint;
    const/16 v2, 0x7f

    const/16 v3, 0x9b

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Lcom/android/systemui/multiwindow/Utilities;->getRandomColor(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    sget-object v2, Lcom/android/systemui/multiwindow/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_0
    return-object v0
.end method

.method public static generateRandomId()I
    .locals 3

    .prologue
    .line 299
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/high16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static getRandomColor(III)I
    .locals 4
    .parameter "alpha"
    .parameter "base"
    .parameter "randomizer"

    .prologue
    .line 326
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v2, v3, p1

    .line 327
    .local v2, red:I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v1, v3, p1

    .line 328
    .local v1, green:I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v0, v3, p1

    .line 329
    .local v0, blue:I
    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 261
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 262
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 264
    .local v1, density:F
    const v4, 0x7f0c00a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    .line 265
    const v4, 0x7f0c00a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/android/systemui/multiwindow/Utilities;->sIconHeight:I

    .line 267
    sget-object v4, Lcom/android/systemui/multiwindow/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a0

    mul-float/2addr v6, v1

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 268
    sget-object v4, Lcom/android/systemui/multiwindow/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    sget-object v4, Lcom/android/systemui/multiwindow/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 270
    sget-object v4, Lcom/android/systemui/multiwindow/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    sget-object v4, Lcom/android/systemui/multiwindow/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 273
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 274
    .local v0, cm:Landroid/graphics/ColorMatrix;
    const v4, 0x3e4ccccd

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 275
    sget-object v4, Lcom/android/systemui/multiwindow/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 276
    sget-object v4, Lcom/android/systemui/multiwindow/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 277
    return-void
.end method

.method public static isMultiWindowEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 395
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 396
    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 398
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lcom/android/systemui/multiwindow/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 391
    return-void
.end method

.method public static onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "view"
    .parameter "canvas"

    .prologue
    .line 366
    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 8
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 303
    const/high16 v6, 0x3f80

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/multiwindow/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    .line 304
    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 8
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "scale"

    .prologue
    .line 307
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/multiwindow/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    .line 308
    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V
    .locals 4
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "scale"
    .parameter "multiplyColor"

    .prologue
    .line 311
    if-eqz p1, :cond_1

    .line 312
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 313
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 314
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 315
    .local v1, oldBounds:Landroid/graphics/Rect;
    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {p0, p2, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 316
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 317
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 318
    const/4 v2, -0x1

    if-eq p7, v2, :cond_0

    .line 319
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p7, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 321
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 323
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #oldBounds:Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 230
    sget-object v1, Lcom/android/systemui/multiwindow/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v1

    .line 231
    :try_start_0
    sget v0, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 232
    invoke-static {p1}, Lcom/android/systemui/multiwindow/Utilities;->initStatics(Landroid/content/Context;)V

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v2, Lcom/android/systemui/multiwindow/Utilities;->sIconWidth:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget v2, Lcom/android/systemui/multiwindow/Utilities;->sIconHeight:I

    if-eq v0, v2, :cond_2

    .line 235
    :cond_1
    invoke-static {p0, p1}, Lcom/android/systemui/multiwindow/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 237
    :cond_2
    monitor-exit v1

    .line 238
    return-object p0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static roundToPow2(I)I
    .locals 3
    .parameter "n"

    .prologue
    .line 281
    move v1, p0

    .line 282
    .local v1, orig:I
    shr-int/lit8 p0, p0, 0x1

    .line 283
    const/high16 v0, 0x800

    .line 284
    .local v0, mask:I
    :goto_0
    if-eqz v0, :cond_0

    and-int v2, p0, v0

    if-nez v2, :cond_0

    .line 285
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 288
    or-int/2addr p0, v0

    .line 289
    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    :cond_1
    add-int/lit8 p0, p0, 0x1

    .line 292
    if-eq p0, v1, :cond_2

    .line 293
    shl-int/lit8 p0, p0, 0x1

    .line 295
    :cond_2
    return p0
.end method

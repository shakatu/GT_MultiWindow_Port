.class Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiWindowListPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowListPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;

.field mLayoutId:I

.field final synthetic this$0:Lcom/android/systemui/multiwindow/MultiWindowListPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowListPanel;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layoutId"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->this$0:Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mContext:Landroid/content/Context;

    .line 206
    iput p3, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mLayoutId:I

    .line 207
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mDataList:Ljava/util/List;

    .line 209
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;

    iget-object v0, v0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 223
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 228
    if-nez p2, :cond_0

    .line 229
    iget-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mLayoutId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 232
    :cond_0
    const v3, 0x7f0d0072

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 233
    .local v1, iconView:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;

    iget-object v3, v3, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    const v3, 0x7f0d0073

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 236
    .local v2, nameView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;

    iget-object v3, v3, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 239
    const v3, 0x7f0d0071

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 240
    .local v0, btn:Landroid/widget/LinearLayout;
    new-instance v3, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$1;-><init>(Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    return-object p2
.end method

.method public updateList()V
    .locals 13

    .prologue
    .line 269
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mDataList:Ljava/util/List;

    if-eqz v10, :cond_1

    .line 270
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 271
    .local v1, am:Landroid/app/ActivityManager;
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 273
    .local v9, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_1

    if-eqz v9, :cond_1

    .line 275
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 279
    const/16 v10, 0x64

    sget v11, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v11, v12}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v7

    .line 281
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 283
    .local v6, item:Landroid/app/ActivityManager$RunningTaskInfo;
    :try_start_0
    iget-object v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    const/16 v11, 0x2000

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 285
    .local v0, ainfo:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, v9}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 287
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, name:Ljava/lang/String;
    new-instance v2, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;

    iget v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {v2, p0, v5, v8, v10}, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;-><init>(Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 289
    .local v2, data:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    .end local v0           #ainfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #data:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #name:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 292
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "Tablet/MultiWindowListPanel"

    const-string v11, "can not find appinfo"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #item:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    return-void
.end method

.class Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;
.super Ljava/lang/Object;
.source "MultiWindowListPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomListData"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field name:Ljava/lang/String;

.field taskid:I

.field final synthetic this$1:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "_icon"
    .parameter "_name"
    .parameter "_taskid"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;->this$1:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p2, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;->icon:Landroid/graphics/drawable/Drawable;

    .line 306
    iput-object p3, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;->name:Ljava/lang/String;

    .line 307
    iput p4, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;->taskid:I

    .line 308
    return-void
.end method

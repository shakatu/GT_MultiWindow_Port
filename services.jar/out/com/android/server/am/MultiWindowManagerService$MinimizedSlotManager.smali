.class Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MinimizedSlotManager"
.end annotation


# instance fields
.field private mSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .registers 3
    .parameter

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->mSlots:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method clearSlots()V
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 745
    return-void
.end method

.method getSlot()I
    .registers 5

    .prologue
    .line 729
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 730
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 731
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_18

    .line 736
    .end local v1           #i:I
    :goto_17
    return v1

    .line 730
    .restart local v1       #i:I
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 735
    :cond_1b
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->mSlots:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 736
    goto :goto_17
.end method

.method setSlot(IZ)V
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->mSlots:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 741
    return-void
.end method

.class Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$1;
.super Ljava/lang/Object;
.source "SmallWindowListRecyclerView.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->setData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

.field final synthetic val$packageNames:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;Ljava/util/List;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    iput-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$1;->val$packageNames:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$1;->apply(Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 4

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$1;->val$packageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->getItemInfo(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

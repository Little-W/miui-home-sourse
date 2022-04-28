.class Lcom/miui/home/smallwindow/SmallWindowEditView$3;
.super Ljava/lang/Object;
.source "SmallWindowEditView.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/SmallWindowEditView;->setData(Ljava/util/List;I)V
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
.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;

.field final synthetic val$packageNames:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/SmallWindowEditView;Ljava/util/List;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;

    iput-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$3;->val$packageNames:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowEditView$3;->apply(Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 4

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$3;->val$packageNames:Ljava/util/List;

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

    .line 103
    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/miui/home/smallwindow/SmallWindowEditView;->getItemInfo(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/smallwindow/ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

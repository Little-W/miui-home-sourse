.class Lcom/miui/home/launcher/Workspace$12;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/miui/home/launcher/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 2604
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$12;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3

    .line 2609
    instance-of v0, p1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_0

    .line 2610
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$12;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v0}, Lcom/miui/home/launcher/Workspace;->access$1000(Lcom/miui/home/launcher/Workspace;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$12;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v1}, Lcom/miui/home/launcher/Workspace;->access$1500(Lcom/miui/home/launcher/Workspace;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2611
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace$12;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {p1}, Lcom/miui/home/launcher/Workspace;->access$1508(Lcom/miui/home/launcher/Workspace;)I

    goto :goto_0

    .line 2612
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-nez v0, :cond_1

    .line 2613
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$12;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v0}, Lcom/miui/home/launcher/Workspace;->access$1000(Lcom/miui/home/launcher/Workspace;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$12;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v1}, Lcom/miui/home/launcher/Workspace;->access$1000(Lcom/miui/home/launcher/Workspace;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$12;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v2}, Lcom/miui/home/launcher/Workspace;->access$1600(Lcom/miui/home/launcher/Workspace;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$12;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v2}, Lcom/miui/home/launcher/Workspace;->access$1700(Lcom/miui/home/launcher/Workspace;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2614
    :cond_1
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isHybirdApp(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2615
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$12;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v0}, Lcom/miui/home/launcher/Workspace;->access$1000(Lcom/miui/home/launcher/Workspace;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$12;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v1}, Lcom/miui/home/launcher/Workspace;->access$1000(Lcom/miui/home/launcher/Workspace;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$12;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v2}, Lcom/miui/home/launcher/Workspace;->access$1700(Lcom/miui/home/launcher/Workspace;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2616
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace$12;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {p1}, Lcom/miui/home/launcher/Workspace;->access$1608(Lcom/miui/home/launcher/Workspace;)I

    goto :goto_0

    .line 2618
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$12;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v0}, Lcom/miui/home/launcher/Workspace;->access$1000(Lcom/miui/home/launcher/Workspace;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2619
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace$12;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {p1}, Lcom/miui/home/launcher/Workspace;->access$1708(Lcom/miui/home/launcher/Workspace;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 2604
    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace$12;->accept(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

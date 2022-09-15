.class Lcom/miui/home/launcher/Workspace$16;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace;->autoFillAllScreens()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 2674
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$16;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 2677
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace$16;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {p1}, Lcom/miui/home/launcher/Workspace;->access$1000(Lcom/miui/home/launcher/Workspace;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 2678
    instance-of v1, v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    goto :goto_1

    .line 2679
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    .line 2680
    :goto_1
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$16;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v2, v0, v1}, Lcom/miui/home/launcher/Workspace;->access$1200(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 2682
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2674
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace$16;->apply(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

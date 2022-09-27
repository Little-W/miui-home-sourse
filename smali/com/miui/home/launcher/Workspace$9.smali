.class Lcom/miui/home/launcher/Workspace$9;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace;->autoCategoryAllIcons()V
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

.field final synthetic val$categoryFolder:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;Ljava/util/HashMap;)V
    .locals 0

    .line 2419
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/Workspace$9;->val$categoryFolder:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    .line 2422
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {p1}, Lcom/miui/home/launcher/Workspace;->access$800(Lcom/miui/home/launcher/Workspace;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 2423
    instance-of v2, v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v2, :cond_3

    .line 2424
    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    .line 2425
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$9;->val$categoryFolder:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2426
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$9;->val$categoryFolder:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    .line 2427
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2428
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v4, v3, v1}, Lcom/miui/home/launcher/Workspace;->access$900(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_1

    .line 2430
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v1}, Lcom/miui/home/launcher/Workspace;->access$200(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 2432
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$9;->val$categoryFolder:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2433
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/home/launcher/Workspace;->access$1000(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V

    goto :goto_0

    .line 2435
    :cond_3
    instance-of v2, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_0

    .line 2436
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2437
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isShortcut()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2438
    invoke-static {}, Lcom/miui/home/launcher/common/AppCategoryManager;->getInstance()Lcom/miui/home/launcher/common/AppCategoryManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v3}, Lcom/miui/home/launcher/Workspace;->access$1100(Lcom/miui/home/launcher/Workspace;)Landroid/content/Context;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {v2, v3, v1}, Lcom/miui/home/launcher/common/AppCategoryManager;->getCategoryName(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2439
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace$9;->val$categoryFolder:Ljava/util/HashMap;

    invoke-static {v2, v0, v1, v3}, Lcom/miui/home/launcher/Workspace;->access$1200(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2440
    :cond_4
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isHybridApp()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2442
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10030f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 2443
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace$9;->val$categoryFolder:Ljava/util/HashMap;

    invoke-static {v2, v0, v1, v3}, Lcom/miui/home/launcher/Workspace;->access$1200(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2446
    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/home/launcher/Workspace;->access$1000(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V

    goto/16 :goto_0

    .line 2450
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2419
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace$9;->apply(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

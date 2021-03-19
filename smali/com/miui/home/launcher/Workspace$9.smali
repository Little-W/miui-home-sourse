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

    .line 2272
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/Workspace$9;->val$categoryFolder:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    const/4 p1, 0x0

    .line 2275
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->prepareLooperWithMainThreadQueue(Z)Z

    .line 2276
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v0}, Lcom/miui/home/launcher/Workspace;->access$700(Lcom/miui/home/launcher/Workspace;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    .line 2277
    instance-of v3, v1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v3, :cond_3

    .line 2278
    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    .line 2279
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$9;->val$categoryFolder:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2280
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$9;->val$categoryFolder:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    .line 2281
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2282
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v5, v4, v2}, Lcom/miui/home/launcher/Workspace;->access$800(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_1

    .line 2284
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v2}, Lcom/miui/home/launcher/Workspace;->access$200(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 2286
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$9;->val$categoryFolder:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2287
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/miui/home/launcher/Workspace;->access$900(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V

    goto :goto_0

    .line 2289
    :cond_3
    instance-of v3, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 2290
    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2291
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->isShortcut()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2292
    invoke-static {}, Lcom/miui/home/launcher/common/AppCategoryManager;->getInstance()Lcom/miui/home/launcher/common/AppCategoryManager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v4}, Lcom/miui/home/launcher/Workspace;->access$1000(Lcom/miui/home/launcher/Workspace;)Landroid/content/Context;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, p1

    invoke-virtual {v3, v4, v2}, Lcom/miui/home/launcher/common/AppCategoryManager;->getCategoryName(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2293
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$9;->val$categoryFolder:Ljava/util/HashMap;

    invoke-static {v3, v1, v2, v4}, Lcom/miui/home/launcher/Workspace;->access$1100(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2294
    :cond_4
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->isHybridApp()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2296
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 2297
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$9;->val$categoryFolder:Ljava/util/HashMap;

    invoke-static {v3, v1, v2, v4}, Lcom/miui/home/launcher/Workspace;->access$1100(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2300
    :cond_5
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$9;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/miui/home/launcher/Workspace;->access$900(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V

    goto/16 :goto_0

    .line 2304
    :cond_6
    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->prepareLooperWithMainThreadQueue(Z)Z

    .line 2305
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2272
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace$9;->apply(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

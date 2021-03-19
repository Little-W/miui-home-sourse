.class Lcom/miui/home/launcher/Launcher$65;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->uninstallShortcut(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$sender:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 6875
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$65;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$65;->val$sender:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$65;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/Launcher$65;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 6878
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$65;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$65;->val$sender:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$65;->val$name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->access$8700(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6879
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6880
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6881
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$65;->val$sender:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$65;->val$sender:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6882
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$65;->val$context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 6883
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6886
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$65;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->bindShortcutsRemoved(Ljava/util/ArrayList;)V

    .line 6887
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$65;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$8800(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    return-void
.end method

.class Lcom/miui/home/launcher/LauncherModel$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/miui/home/launcher/ItemInfo;Landroid/content/Context;)V
    .locals 0

    .line 822
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$5;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$5;->val$item:Lcom/miui/home/launcher/ItemInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 824
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$5;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$5;->val$item:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$5;->val$item:Lcom/miui/home/launcher/ItemInfo;

    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 826
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 827
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$5;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/home/launcher/LauncherModel;->access$900(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 828
    iget v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    .line 829
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$5;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->unpinShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

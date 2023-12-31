.class Lcom/miui/home/launcher/Launcher$60;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->lambda$checkAllAppsLabel$49(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$info:Lcom/miui/home/launcher/ShortcutInfo;

.field final synthetic val$result:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/CharSequence;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 7010
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$60;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$60;->val$result:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$60;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 7013
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$60;->val$result:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 7014
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$60;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$60;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setLabelAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 7015
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$60;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$60;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

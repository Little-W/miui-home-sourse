.class Lcom/miui/home/launcher/Launcher$34;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V
    .locals 0

    .line 4131
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$34;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 4134
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$34;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4137
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.contacts"

    const-string v1, "android.intent.extra.PACKAGES"

    .line 4138
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "package"

    .line 4139
    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4140
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$34;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$3400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$34;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

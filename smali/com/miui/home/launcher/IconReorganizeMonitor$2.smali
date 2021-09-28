.class Lcom/miui/home/launcher/IconReorganizeMonitor$2;
.super Ljava/lang/Object;
.source "IconReorganizeMonitor.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/IconReorganizeMonitor;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/IconReorganizeMonitor;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Intent;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/miui/home/launcher/IconReorganizeMonitor$2;->this$0:Lcom/miui/home/launcher/IconReorganizeMonitor;

    iput-object p2, p0, Lcom/miui/home/launcher/IconReorganizeMonitor$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/launcher/IconReorganizeMonitor$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.miui.home.action.AUTO_FILL_CURRENT"

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/IconReorganizeMonitor$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/miui/home/launcher/IconReorganizeMonitor$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->autoFillCurrentScreen()V

    goto :goto_0

    :cond_0
    const-string p1, "com.miui.home.action.AUTO_FILL_ALL"

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/IconReorganizeMonitor$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/miui/home/launcher/IconReorganizeMonitor$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->autoFillAllScreens()V

    goto :goto_0

    :cond_1
    const-string p1, "com.miui.home.action.AUTO_FOLDER_ALL"

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/IconReorganizeMonitor$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 81
    iget-object p1, p0, Lcom/miui/home/launcher/IconReorganizeMonitor$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->autoCategoryAllIcons()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor$2;->accept(Ljava/lang/Boolean;)V

    return-void
.end method

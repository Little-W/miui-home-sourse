.class Lcom/miui/home/launcher/Launcher$25$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher$25;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Launcher$25;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher$25;)V
    .locals 0

    .line 3769
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$25$1;->this$1:Lcom/miui/home/launcher/Launcher$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3772
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$25$1;->this$1:Lcom/miui/home/launcher/Launcher$25;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$25;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->refreshDoubleTapLock(Landroid/content/Context;)V

    return-void
.end method

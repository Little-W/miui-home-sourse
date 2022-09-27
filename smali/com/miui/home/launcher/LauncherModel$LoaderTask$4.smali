.class Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel$LoaderTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field final synthetic val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 0

    .line 1461
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1463
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->access$1800(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    if-eqz v0, :cond_0

    .line 1464
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->startLoading()V

    :cond_0
    return-void
.end method

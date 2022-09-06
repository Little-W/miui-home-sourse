.class Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindMissingIcons(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 0

    .line 1295
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;->val$oldCallbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1297
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;->val$oldCallbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isCallbacksValidate(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;->val$oldCallbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->finishBindingMissingItems()V

    :cond_0
    return-void
.end method

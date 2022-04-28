.class Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel$LoaderTask;->startBinding(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
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

    .line 2251
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2253
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isCallbacksValidate(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2254
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->startBinding()V

    :cond_0
    return-void
.end method

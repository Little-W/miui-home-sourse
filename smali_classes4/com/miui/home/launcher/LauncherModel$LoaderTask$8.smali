.class Lcom/miui/home/launcher/LauncherModel$LoaderTask$8;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindScreens()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field final synthetic val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

.field final synthetic val$screens:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0

    .line 2209
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$8;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$8;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$8;->val$screens:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2212
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$8;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->access$2500(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$8;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    if-eqz v0, :cond_0

    .line 2213
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$8;->val$screens:Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindScreens(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

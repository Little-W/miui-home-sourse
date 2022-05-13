.class Lcom/miui/home/launcher/AppPairController$2;
.super Lmiui/process/IForegroundWindowListener$Stub;
.source "AppPairController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/AppPairController;->addForegroundWindowListener(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/AppPairController;

.field final synthetic val$pairPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/AppPairController;Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/miui/home/launcher/AppPairController$2;->this$0:Lcom/miui/home/launcher/AppPairController;

    iput-object p2, p0, Lcom/miui/home/launcher/AppPairController$2;->val$pairPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lmiui/process/IForegroundWindowListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundWindowChanged(Lmiui/process/ForegroundInfo;)V
    .locals 3

    .line 110
    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/AppPairController$2;->val$pairPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppPairController"

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onForegroundWindowChanged foregroundInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p1, p0, Lcom/miui/home/launcher/AppPairController$2;->this$0:Lcom/miui/home/launcher/AppPairController;

    invoke-static {p1}, Lcom/miui/home/launcher/AppPairController;->access$000(Lcom/miui/home/launcher/AppPairController;)V

    .line 113
    iget-object p1, p0, Lcom/miui/home/launcher/AppPairController$2;->this$0:Lcom/miui/home/launcher/AppPairController;

    invoke-static {p1}, Lcom/miui/home/launcher/AppPairController;->access$200(Lcom/miui/home/launcher/AppPairController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    invoke-static {p0}, Lmiui/process/ProcessManager;->unregisterForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V

    :cond_0
    return-void
.end method

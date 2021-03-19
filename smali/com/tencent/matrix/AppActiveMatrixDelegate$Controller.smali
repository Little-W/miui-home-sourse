.class final Lcom/tencent/matrix/AppActiveMatrixDelegate$Controller;
.super Ljava/lang/Object;
.source "AppActiveMatrixDelegate.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/AppActiveMatrixDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Controller"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/matrix/AppActiveMatrixDelegate;


# direct methods
.method private constructor <init>(Lcom/tencent/matrix/AppActiveMatrixDelegate;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate$Controller;->this$0:Lcom/tencent/matrix/AppActiveMatrixDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/matrix/AppActiveMatrixDelegate;Lcom/tencent/matrix/AppActiveMatrixDelegate$1;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/tencent/matrix/AppActiveMatrixDelegate$Controller;-><init>(Lcom/tencent/matrix/AppActiveMatrixDelegate;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate$Controller;->this$0:Lcom/tencent/matrix/AppActiveMatrixDelegate;

    invoke-static {v0, p1}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->access$300(Lcom/tencent/matrix/AppActiveMatrixDelegate;Landroid/app/Activity;)V

    .line 131
    iget-object p1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate$Controller;->this$0:Lcom/tencent/matrix/AppActiveMatrixDelegate;

    invoke-virtual {p1}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->getVisibleScene()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->access$400(Lcom/tencent/matrix/AppActiveMatrixDelegate;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 137
    invoke-static {}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->getTopActivityName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate$Controller;->this$0:Lcom/tencent/matrix/AppActiveMatrixDelegate;

    invoke-virtual {p1}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->getVisibleScene()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->access$500(Lcom/tencent/matrix/AppActiveMatrixDelegate;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 5

    const-string v0, "Matrix.AppActiveDelegate"

    const-string v1, "[onTrimMemory] level:%s"

    const/4 v2, 0x1

    .line 180
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 181
    iget-object p1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate$Controller;->this$0:Lcom/tencent/matrix/AppActiveMatrixDelegate;

    invoke-static {p1}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->access$100(Lcom/tencent/matrix/AppActiveMatrixDelegate;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/tencent/matrix/AppActiveMatrixDelegate$Controller;->this$0:Lcom/tencent/matrix/AppActiveMatrixDelegate;

    invoke-static {p1}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->access$600(Lcom/tencent/matrix/AppActiveMatrixDelegate;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->access$500(Lcom/tencent/matrix/AppActiveMatrixDelegate;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

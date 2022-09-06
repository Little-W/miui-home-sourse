.class Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;
.super Ljava/lang/Object;
.source "SmallWindowStateHelperUseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->updateSmallWindowState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$102(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Z)Z

    .line 84
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    .line 85
    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$200(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)I

    move-result v0

    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 87
    invoke-virtual {v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInMiniFreeFormMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInFreeFormMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->inPinMode:Z

    if-eqz v1, :cond_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$102(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Z)Z

    :cond_2
    const-string v0, "SmallWindowStateHelper"

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmallWindowState, mIsInSmallWindowState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$100(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SmallWindowStateHelper"

    const-string v2, "updateSmallWindowState error"

    .line 95
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

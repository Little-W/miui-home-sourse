.class Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;
.super Ljava/lang/Object;
.source "SmallWindowStateHelperUseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->updateSmallWindowPackageName()V
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

    .line 95
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    const-string v0, "SmallWindowStateHelper"

    const-string v1, "updateSmallWindowPackageName, clear"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$300(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 101
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$400(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 102
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$500(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 103
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    .line 104
    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$200(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)I

    move-result v0

    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 106
    invoke-virtual {v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInFreeFormMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v2, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$600(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    .line 109
    :cond_0
    invoke-virtual {v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInMiniFreeFormMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v2, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$700(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-virtual {v2, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->addAllSmallWindowInfoSet(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SmallWindowStateHelper"

    const-string v2, "updateSmallWindowPackageName error"

    .line 115
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

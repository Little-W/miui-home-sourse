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

    .line 78
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    const-string v0, "SmallWindowStateHelper"

    const-string v1, "updateSmallWindowPackageName, clear"

    .line 82
    .line 83
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$300(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 84
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    .line 85
    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$200(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)I

    move-result v0

    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 87
    invoke-virtual {v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInFreeFormMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInMiniFreeFormMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$300(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "SmallWindowStateHelper"

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSmallWindowPackageName, info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SmallWindowStateHelper"

    const-string v2, "updateSmallWindowPackageName error"

    .line 93
    :cond_2
    return-void
.end method

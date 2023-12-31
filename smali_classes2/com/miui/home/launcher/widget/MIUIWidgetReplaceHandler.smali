.class public Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;
.super Ljava/lang/Object;
.source "MIUIWidgetReplaceHandler.java"


# direct methods
.method private static canReplace(Landroid/os/Bundle;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)Z
    .locals 3

    const/4 v0, -0x1

    const-string v1, "widget_span_x"

    .line 95
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "widget_span_y"

    .line 96
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canReplace spanX = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , spanY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MIUIWidgetReplaceHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->spanX:I

    if-lt v0, v1, :cond_0

    iget p1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->spanY:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static findMaMlByWidgetId(Lcom/miui/home/launcher/Launcher;I)Lcom/miui/home/launcher/maml/MaMlWidgetInfo;
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getMaMlItems()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 112
    iget v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findWidgetByWidgetId(Lcom/miui/home/launcher/Launcher;I)Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 103
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$replaceWidget$0(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 74
    iget-wide v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "MIUIWidgetReplaceHandler"

    const-string p1, "replaceWidget error, CellScreen not found"

    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_0
    iget v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->itemType:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 81
    move-object p0, p2

    check-cast p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p3, p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->addMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    goto :goto_0

    .line 82
    :cond_1
    iget v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 83
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 84
    iget-wide v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->screenId:J

    iput-wide v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->screenId:J

    .line 85
    new-instance p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v1

    invoke-direct {p1, v1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 86
    invoke-virtual {p3, p1, p0}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/CellScreen;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->setAppWidgetId(I)V

    goto :goto_0

    .line 88
    :cond_2
    move-object p1, p2

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p3, p1, p0}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/CellScreen;)I

    .line 90
    :goto_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->finishPending()V

    return-void
.end method

.method public static replaceWidget(Lcom/miui/home/launcher/Launcher;Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, -0x1

    const-string v1, "replace_widget_id"

    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "MIUIWidgetReplaceHandler"

    if-gez v1, :cond_0

    const-string p0, "replaceWidget error, invalid widget id"

    .line 28
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v3, "replace_widget_type"

    .line 32
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replaceWidget itemType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x13

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 37
    invoke-static {p0, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->findMaMlByWidgetId(Lcom/miui/home/launcher/Launcher;I)Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v1

    goto :goto_1

    .line 39
    :cond_2
    invoke-static {p0, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->findWidgetByWidgetId(Lcom/miui/home/launcher/Launcher;I)Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_3

    const-string p0, "replaceWidget error, widget not found"

    .line 43
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 47
    :cond_3
    invoke-static {p1, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->canReplace(Landroid/os/Bundle;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string p0, "replaceWidget abort"

    .line 48
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 52
    :cond_4
    invoke-static {p0, p1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createItemInfo(Lcom/miui/home/launcher/Launcher;Landroid/os/Bundle;)Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p0, "replaceWidget error, itemInfo is null"

    .line 54
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    .line 59
    iget-wide v3, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->screenId:J

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    .line 60
    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    const/4 v3, 0x3

    .line 61
    iput v3, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->deleteWidgetWay:I

    if-eqz v0, :cond_6

    .line 63
    move-object v0, v1

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    goto :goto_2

    .line 65
    :cond_6
    move-object v0, v1

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    :goto_2
    const/4 v0, 0x0

    .line 67
    iput-object v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    const-wide/16 v3, -0x64

    .line 68
    iput-wide v3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->container:J

    .line 69
    iget-wide v3, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->screenId:J

    iput-wide v3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->screenId:J

    .line 70
    iget v0, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellX:I

    iput v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellX:I

    .line 71
    iget v0, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellY:I

    iput v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellY:I

    .line 73
    new-instance v0, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetReplaceHandler$MkdQAhs2ACS3OQWC0ZOQNifoB14;

    invoke-direct {v0, v2, v1, p1, p0}, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetReplaceHandler$MkdQAhs2ACS3OQWC0ZOQNifoB14;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

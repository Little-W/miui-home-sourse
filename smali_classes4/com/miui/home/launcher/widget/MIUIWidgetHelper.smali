.class public Lcom/miui/home/launcher/widget/MIUIWidgetHelper;
.super Ljava/lang/Object;
.source "MIUIWidgetHelper.java"


# static fields
.field private static sLastToastTimeMillis:J


# direct methods
.method public static canDragToPa(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragObject;)Z
    .locals 8

    .line 22
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 23
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isAssistantCTAAgree(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_6

    .line 28
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "MIUIWidgetHelper"

    if-nez p1, :cond_1

    const-string p0, "canDragToPa return false : DragObject is null"

    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 37
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 38
    instance-of v2, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-nez v2, :cond_2

    const-string p0, "canDragToPa return false : ItemInfo is not a MIUIWidgetBasicInfo"

    .line 39
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 43
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 44
    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 45
    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-eq v2, v4, :cond_3

    if-eq p1, v4, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    move p1, v4

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    if-nez p1, :cond_5

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 51
    sget-wide v4, Lcom/miui/home/launcher/widget/MIUIWidgetHelper;->sLastToastTimeMillis:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long p1, v4, v6

    if-lez p1, :cond_4

    .line 52
    sput-wide v2, Lcom/miui/home/launcher/widget/MIUIWidgetHelper;->sLastToastTimeMillis:J

    const p1, 0x7f1102d3

    .line 53
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    return v1

    .line 57
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherCallbacks()Lcom/miui/home/launcher/LauncherCallbacks;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 60
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->isDraggingFromAssistant()Z

    move-result p0

    if-nez p0, :cond_6

    .line 61
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->isDraggingToAssistant()Z

    move-result p0

    if-nez p0, :cond_6

    move v1, v4

    :cond_6
    :goto_1
    return v1
.end method

.class public final Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;
.super Ljava/lang/Object;
.source "NoWordSettingHelper.kt"


# direct methods
.method public static final checkNoWordSettings(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->refreshNoWordModel(Landroid/content/Context;)V

    .line 30
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->refreshOnlyWidgetNoWordModel(Landroid/content/Context;)V

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object p0

    .line 32
    instance-of v0, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    if-eqz v0, :cond_0

    .line 34
    check-cast p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->setLoadResCellConfig(Z)V

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkNoWordSettings = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NoWordSettingHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final isNoWordAvailable()Z
    .locals 1

    .line 51
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteOrMiddleVersion()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_13:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final switchNoWordSetting(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->setSwitchingNoWordModel(Z)V

    .line 44
    sget-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->startSwitchNoWordAnim(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

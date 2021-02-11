.class Lcom/miui/home/launcher/HotSeats$_lancet;
.super Ljava/lang/Object;


# direct methods
.method static com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation runtime Lme/ele/lancet/base/annotations/Proxy;
        value = "d"
    .end annotation

    .annotation runtime Lme/ele/lancet/base/annotations/TargetClass;
        value = "android.util.Log"
    .end annotation

    invoke-static {}, Lcom/miui/home/launcher/aop/LogHooker;->useFileLogger()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/elvishew/xlog/XLog;->d(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/HotSeats;->access$000(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static com_miui_home_launcher_aop_LogHooker_setScreenViewAlpha(Lcom/miui/home/launcher/HotSeats;F)V
    .locals 1
    .annotation runtime Lme/ele/lancet/base/annotations/Insert;
        mayCreateSuper = true
        value = "setAlpha"
    .end annotation

    .annotation runtime Lme/ele/lancet/base/annotations/TargetClass;
        scope = .enum Lme/ele/lancet/base/Scope;->LEAF:Lme/ele/lancet/base/Scope;
        value = "com.miui.home.launcher.ScreenView"
    .end annotation

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->logViewTransparentChange(Landroid/view/View;F)V

    invoke-static {p0, p1}, Lcom/miui/home/launcher/HotSeats;->access$001(Lcom/miui/home/launcher/HotSeats;F)V

    return-void
.end method

.method static com_miui_home_launcher_aop_LogHooker_setScreenViewVisibility(Lcom/miui/home/launcher/HotSeats;I)V
    .locals 1
    .annotation runtime Lme/ele/lancet/base/annotations/Insert;
        mayCreateSuper = true
        value = "setVisibility"
    .end annotation

    .annotation runtime Lme/ele/lancet/base/annotations/TargetClass;
        scope = .enum Lme/ele/lancet/base/Scope;->LEAF:Lme/ele/lancet/base/Scope;
        value = "com.miui.home.launcher.ScreenView"
    .end annotation

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->logViewVisibilityChange(Landroid/view/View;I)V

    invoke-static {p0, p1}, Lcom/miui/home/launcher/HotSeats;->access$002(Lcom/miui/home/launcher/HotSeats;I)V

    return-void
.end method

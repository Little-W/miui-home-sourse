.class Lcom/miui/home/launcher/WorkspaceThumbnailView$_lancet;
.super Ljava/lang/Object;


# direct methods
.method static com_miui_home_launcher_aop_LogHooker_setScreenViewAlpha(Lcom/miui/home/launcher/WorkspaceThumbnailView;F)V
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

    invoke-static {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->access$001(Lcom/miui/home/launcher/WorkspaceThumbnailView;F)V

    return-void
.end method

.method static com_miui_home_launcher_aop_LogHooker_setScreenViewVisibility(Lcom/miui/home/launcher/WorkspaceThumbnailView;I)V
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

    invoke-static {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->access$002(Lcom/miui/home/launcher/WorkspaceThumbnailView;I)V

    return-void
.end method

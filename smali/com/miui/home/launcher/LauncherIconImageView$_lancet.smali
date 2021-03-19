.class Lcom/miui/home/launcher/LauncherIconImageView$_lancet;
.super Ljava/lang/Object;


# direct methods
.method static com_miui_home_launcher_aop_ViewTraversalTrace_draw(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/Canvas;)V
    .locals 1
    .annotation runtime Lme/ele/lancet/base/annotations/Insert;
        mayCreateSuper = true
        value = "draw"
    .end annotation

    .annotation runtime Lme/ele/lancet/base/annotations/TargetClass;
        scope = .enum Lme/ele/lancet/base/Scope;->SELF:Lme/ele/lancet/base/Scope;
        value = "com.miui.home.launcher.LauncherIconImageView"
    .end annotation

    const-string v0, "LauncherIconImageView #draw"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->access$000(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/Canvas;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

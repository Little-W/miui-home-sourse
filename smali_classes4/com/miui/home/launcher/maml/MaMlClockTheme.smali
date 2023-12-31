.class Lcom/miui/home/launcher/maml/MaMlClockTheme;
.super Ljava/lang/Object;
.source "MaMlClockTheme.java"

# interfaces
.implements Lcom/miui/home/launcher/maml/Theme;
.implements Lcom/miui/launcher/views/MamlButtonActionListener;


# instance fields
.field private info:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlClockTheme;->info:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    return-void
.end method

.method private getPathInTheme()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "/data/system/theme/"

    aput-object v2, v0, v1

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlClockTheme;->name()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s/%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onThemeApplied(Lcom/miui/home/launcher/maml/MaMlHostView;)V
    .locals 2

    .line 72
    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->getMaMlRoot()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/ScreenElementRoot;

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getRootTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.miui.region"

    .line 74
    invoke-static {v0}, Lcom/miui/launcher/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__rom_region"

    invoke-static {p1, v1, v0}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlClockTheme;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__config_code"

    invoke-static {p1, v1, v0}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "clock_button"

    .line 77
    invoke-static {p1, v0, p0}, Lcom/miui/launcher/utils/MamlUtils;->addListenerOnElement(Ljava/lang/Object;Ljava/lang/String;Lcom/miui/launcher/views/MamlButtonActionListener;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "DUAL_CLOCK"

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlClockTheme;->info:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlClockTheme;->info:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->shouldUseDualClock()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "/system/media/theme/.data/content/dual_clock_2x4/dual_clock.mrc"

    return-object p0

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlClockTheme;->getPathInTheme()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitleStyle()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public handle(Lcom/miui/home/launcher/maml/ThemeSupport;Ljava/lang/String;)V
    .locals 3

    .line 50
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x78cad839

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, -0x274ed595

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DUAL_CLOCK"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "THEME_APPLIED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_3

    goto :goto_2

    .line 57
    :cond_3
    invoke-interface {p1}, Lcom/miui/home/launcher/maml/ThemeSupport;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlClockTheme;->onThemeApplied(Lcom/miui/home/launcher/maml/MaMlHostView;)V

    goto :goto_2

    .line 52
    :cond_4
    invoke-interface {p1, p0}, Lcom/miui/home/launcher/maml/ThemeSupport;->apply(Lcom/miui/home/launcher/maml/Theme;)Z

    :goto_2
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clock_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlClockTheme;->info:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget v1, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlClockTheme;->info:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 2

    .line 83
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getDeskClockTabActivityIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlClockTheme;->info:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object p0

    .line 83
    invoke-virtual {p1, v0, v1, p0}, Lcom/miui/home/launcher/Application;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

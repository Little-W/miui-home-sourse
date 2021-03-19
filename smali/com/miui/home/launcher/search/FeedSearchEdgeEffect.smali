.class public Lcom/miui/home/launcher/search/FeedSearchEdgeEffect;
.super Lcom/miui/home/launcher/search/SearchEdgeEffect;
.source "FeedSearchEdgeEffect.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;II)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/search/SearchEdgeEffect;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;II)V

    return-void
.end method


# virtual methods
.method canShowEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)Z
    .locals 0

    .line 10
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method getDrawableResource()I
    .locals 1

    const v0, 0x7f080129

    return v0
.end method

.method public bridge synthetic getPosition()Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->getPosition()Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDarkModeChanged(Z)V
    .locals 0

    .line 10
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onDarkModeChanged(Z)V

    return-void
.end method

.method public bridge synthetic onPull(FI)V
    .locals 0

    .line 10
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onPull(FI)V

    return-void
.end method

.method public bridge synthetic onRelease(I)V
    .locals 0

    .line 10
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onRelease(I)V

    return-void
.end method

.method open()V
    .locals 3

    .line 27
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.newhome.MAIN_FEED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10200000

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    const v1, 0x7f010027

    const v2, 0x7f010028

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setCurveBottom(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 10
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->setCurveBottom(F)V

    return-void
.end method

.method public bridge synthetic setCurveTop(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 10
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->setCurveTop(F)V

    return-void
.end method

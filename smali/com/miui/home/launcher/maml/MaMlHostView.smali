.class public Lcom/miui/home/launcher/maml/MaMlHostView;
.super Lcom/miui/maml/component/MamlView;
.source "MaMlHostView.java"

# interfaces
.implements Lcom/miui/home/launcher/interfaces/AutoAlignable;


# instance fields
.field private mWidgetId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private invalidateConfig()V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 65
    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/maml/widget/edit/WidgetEditSave;->restoreFromConfigPath(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 72
    instance-of v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v1, :cond_0

    .line 75
    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrong type of ItemInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWidgetId()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mWidgetId:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onAttachedToWindow()V

    .line 33
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->invalidateConfig()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onPause()V

    const-string v0, "pause"

    .line 55
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 46
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onResume()V

    const-string v0, "MaMlHostView"

    const-string v1, "onResume"

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->invalidateConfig()V

    const-string v0, "resume"

    .line 49
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setWidgetId(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mWidgetId:I

    return-void
.end method

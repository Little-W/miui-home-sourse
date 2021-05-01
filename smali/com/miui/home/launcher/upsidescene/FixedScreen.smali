.class public Lcom/miui/home/launcher/upsidescene/FixedScreen;
.super Landroid/widget/FrameLayout;
.source "FixedScreen.java"


# instance fields
.field private mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getChildWidth()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FixedScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getWidth()I

    move-result v0

    return v0
.end method

.method public getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FixedScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    return-object v0
.end method

.method public notifyGadgets(I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FixedScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->notifyGadgets(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 29
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a00d6

    .line 30
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/FreeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/FixedScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    return-void
.end method

.method public setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FixedScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    return-void
.end method

.method public setScreenData(Lcom/miui/home/launcher/upsidescene/data/Screen;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FixedScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->setScreenData(Lcom/miui/home/launcher/upsidescene/data/Screen;)V

    :cond_0
    return-void
.end method

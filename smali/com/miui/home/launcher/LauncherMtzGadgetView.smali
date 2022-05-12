.class public Lcom/miui/home/launcher/LauncherMtzGadgetView;
.super Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;
.source "LauncherMtzGadgetView.java"


# instance fields
.field private mMtzGadget:Lcom/miui/home/launcher/gadget/Gadget;

.field private mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

.field private mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method getGadget()Lcom/miui/home/launcher/gadget/Gadget;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mMtzGadget:Lcom/miui/home/launcher/gadget/Gadget;

    return-object v0
.end method

.method public getTitleView()Lcom/miui/home/launcher/TitleTextView;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onFinishInflate()V

    const v0, 0x7f0a02e7

    .line 31
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMtzGadgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherWidgetContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    const v0, 0x7f0a0147

    .line 32
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMtzGadgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/TitleTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onWallpaperColorChanged()V

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mMtzGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onWallpaperColorChanged()V

    return-void
.end method

.method setGadget(Lcom/miui/home/launcher/gadget/Gadget;)V
    .locals 1

    .line 42
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mMtzGadget:Lcom/miui/home/launcher/gadget/Gadget;

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->addView(Landroid/view/View;)V

    .line 46
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherMtzGadgetView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

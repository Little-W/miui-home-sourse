.class public abstract Lcom/miui/home/launcher/gadget/Gadget;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "Gadget.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/common/ViewPropertyBackuper;
.implements Lcom/miui/home/launcher/interfaces/IEditable;
.implements Lcom/miui/home/launcher/util/noword/NoWordLauncherElementContent;


# instance fields
.field private mIsCanNotChangeCanvasAlpha:Z

.field private mIsDrawingInThumbnailView:Z

.field private mIsEnableAutoLayoutAnimation:Z

.field protected mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

.field private mSkipNextAutoLayoutAnimation:Z

.field private mTrackViewRunnable:Ljava/lang/Runnable;

.field private mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mSkipNextAutoLayoutAnimation:Z

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsEnableAutoLayoutAnimation:Z

    .line 31
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsDrawingInThumbnailView:Z

    .line 32
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsCanNotChangeCanvasAlpha:Z

    .line 33
    new-instance p1, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;-><init>(Lcom/miui/home/launcher/gadget/Gadget;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    .line 35
    new-instance p1, Lcom/miui/home/launcher/gadget/Gadget$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/gadget/Gadget$1;-><init>(Lcom/miui/home/launcher/gadget/Gadget;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mTrackViewRunnable:Ljava/lang/Runnable;

    .line 44
    new-instance p1, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mSkipNextAutoLayoutAnimation:Z

    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsEnableAutoLayoutAnimation:Z

    .line 31
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsDrawingInThumbnailView:Z

    .line 32
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsCanNotChangeCanvasAlpha:Z

    .line 33
    new-instance p1, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;-><init>(Lcom/miui/home/launcher/gadget/Gadget;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    .line 35
    new-instance p1, Lcom/miui/home/launcher/gadget/Gadget$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/gadget/Gadget$1;-><init>(Lcom/miui/home/launcher/gadget/Gadget;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mTrackViewRunnable:Ljava/lang/Runnable;

    .line 49
    new-instance p1, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 102
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/WallpaperUtils;->onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public backupProperty()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->backupProperty()V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->buildDrawingCache(Z)V

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 109
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsCanNotChangeCanvasAlpha:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherFrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    goto :goto_0

    .line 113
    :cond_0
    instance-of v0, p2, Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptViewGroup;

    if-eqz v0, :cond_1

    .line 115
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptViewGroup;->setNoWordAdapter(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;)V

    .line 116
    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsDrawingInThumbnailView:Z

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptViewGroup;->setIsDrawingInThumbnailView(Z)V

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherFrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;->preDrawChild(Landroid/view/View;)I

    move-result v0

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_2

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherFrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 122
    iget-object p3, p0, Lcom/miui/home/launcher/gadget/Gadget;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    iget-boolean p4, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsDrawingInThumbnailView:Z

    invoke-virtual {p3, p1, p4}, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;->afterDrawChild(Landroid/graphics/Canvas;Z)V

    move p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mSkipNextAutoLayoutAnimation:Z

    return v0
.end method

.method public invalidateViewWhenEditModeChange()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsEnableAutoLayoutAnimation:Z

    return v0
.end method

.method public abstract onAdded()V
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDeleted()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onEditDisable()V
.end method

.method public abstract onEditNormal()V
.end method

.method public onPause()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mTrackViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Gadget;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mTrackViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/gadget/Gadget;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 97
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public restoreProperty()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->restoreProperty()V

    return-void
.end method

.method public setCanNotChangeCanvasAlpha(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsCanNotChangeCanvasAlpha:Z

    return-void
.end method

.method public setEditMode(ZZ)V
    .locals 0

    .line 203
    iget-object p2, p0, Lcom/miui/home/launcher/gadget/Gadget;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;->onEditModeChange(Z)V

    return-void
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 151
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p1

    return p1
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsDrawingInThumbnailView:Z

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method protected trackClick()V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 183
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackGadgetClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected trackView()V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackGadgetView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract updateConfig(Landroid/os/Bundle;)V
.end method

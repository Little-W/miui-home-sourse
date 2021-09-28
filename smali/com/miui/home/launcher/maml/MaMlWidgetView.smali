.class public Lcom/miui/home/launcher/maml/MaMlWidgetView;
.super Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;
.source "MaMlWidgetView.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/HostViewContainer;
.implements Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;


# instance fields
.field private isResumed:Z

.field private mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

.field private mIsEnableAutoLayoutAnimation:Z

.field private mMaMlCornerSize:F

.field private mSkipNextAutoLayoutAnimation:Z

.field private mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

.field private mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method private pauseWidget()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 142
    iget-boolean v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->isResumed:Z

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onPause()V

    :cond_0
    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->isResumed:Z

    return-void
.end method

.method private resumeWidget()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 133
    iget-boolean v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->isResumed:Z

    if-nez v1, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onResume()V

    :cond_0
    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->isResumed:Z

    return-void
.end method


# virtual methods
.method public getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getWidth()I

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/maml/MaMlHostView;->getHeight()I

    move-result v1

    .line 244
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 245
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 246
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 247
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/maml/MaMlHostView;->draw(Landroid/graphics/Canvas;)V

    .line 248
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->fillRoundCornerColor(Landroid/graphics/Bitmap;)V

    .line 249
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public getEditIntent()Landroid/content/Intent;
    .locals 4

    .line 201
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 202
    iget-boolean v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->isEditable:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.miui.home.fileprovider"

    .line 208
    invoke-static {v0, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 209
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getEditUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "appWidgetId"

    .line 214
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getWidgetId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public getEditUri()Ljava/lang/String;
    .locals 2

    .line 196
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 197
    iget-boolean v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->isEditable:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->editUri:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getHostView()Landroid/view/View;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v0

    return-object v0
.end method

.method public getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    return-object v0
.end method

.method public getIconImageView()Landroid/view/View;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    return-object v0
.end method

.method public getIconRadius()F
    .locals 2

    .line 259
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mMaMlCornerSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mMaMlCornerSize:F

    .line 262
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mMaMlCornerSize:F

    return v0
.end method

.method public getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 220
    instance-of v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v1, :cond_0

    .line 223
    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    return-object v0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrong type of ItemInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return v0
.end method

.method public getTargetRootView()Landroid/view/View;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTitleView()Lcom/miui/home/launcher/TitleTextView;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    return-object v0
.end method

.method public getWidgetId()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getWidgetId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return v0
.end method

.method public isUseTransitionAnimation()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->disableCutRoundCorner()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onDestroy()V

    .line 151
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onFinishInflate()V

    const v0, 0x7f0a0258

    .line 76
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherWidgetContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    const v0, 0x7f0a0118

    .line 77
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/TitleTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    return-void
.end method

.method public onInvisible()V
    .locals 0

    .line 122
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onInvisible()V

    .line 123
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->pauseWidget()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 110
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onPause()V

    .line 111
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->pauseWidget()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 105
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onResume()V

    .line 106
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->resumeWidget()V

    return-void
.end method

.method public onVisible()V
    .locals 0

    .line 116
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onVisible()V

    .line 117
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->resumeWidget()V

    return-void
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 182
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p1

    return p1
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public setMaMl(Lcom/miui/home/launcher/maml/MaMlHostView;)V
    .locals 1

    .line 61
    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->addView(Landroid/view/View;)V

    .line 65
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070129

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mMaMlCornerSize:F

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setTag(Ljava/lang/Object;)V

    .line 96
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_3

    .line 97
    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 98
    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 99
    :goto_0
    iget-object v1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appName:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setWidgetId(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setWidgetId(I)V

    :cond_0
    return-void
.end method

.method public superSetFrame(IIII)Z
    .locals 0

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

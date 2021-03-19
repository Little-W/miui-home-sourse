.class public Lcom/miui/maml/elements/video/VideoElement;
.super Lcom/miui/maml/elements/ViewHolderScreenElement;
.source "VideoElement.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "VideoElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Video"


# instance fields
.field private mSource:Lcom/miui/maml/util/MamlMediaDataSource;

.field private mView:Lcom/miui/maml/elements/video/BaseVideoView;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 29
    invoke-direct {p0}, Lcom/miui/maml/elements/video/VideoElement;->load()V

    return-void
.end method

.method private load()V
    .locals 3

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/VideoElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getMamlSurface()Lcom/miui/maml/component/MamlSurface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    return-void

    .line 166
    :cond_1
    new-instance v0, Lcom/miui/maml/elements/video/SurfaceVideoView;

    iget-object v1, p0, Lcom/miui/maml/elements/video/VideoElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/maml/elements/video/VideoElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getMamlSurface()Lcom/miui/maml/component/MamlSurface;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/elements/video/SurfaceVideoView;-><init>(Landroid/content/Context;Lcom/miui/maml/component/MamlSurface;)V

    iput-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 167
    iget v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mLayer:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 168
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->setZOrderOnTop(Z)V

    goto :goto_0

    .line 171
    :cond_2
    new-instance v0, Lcom/miui/maml/elements/video/NormalVideoView;

    iget-object v1, p0, Lcom/miui/maml/elements/video/VideoElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/video/NormalVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 173
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    iget-object v1, p0, Lcom/miui/maml/elements/video/VideoElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->setName(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->setFormat(I)V

    .line 175
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public config(ZILjava/lang/String;)V
    .locals 3

    const-string v0, "VideoElement"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config: path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " looping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " scaleMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/maml/util/MamlMediaDataSource;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    :cond_1
    new-instance v0, Lcom/miui/maml/util/MamlMediaDataSource;

    invoke-virtual {p0}, Lcom/miui/maml/elements/video/VideoElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/maml/elements/video/VideoElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-direct {v0, v1, v2, p3}, Lcom/miui/maml/util/MamlMediaDataSource;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    .line 119
    :cond_2
    iget-object p3, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {p3, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->setLooping(Z)V

    .line 120
    iget-object p1, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/video/BaseVideoView;->setScaleMode(I)V

    .line 121
    iget-object p1, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    iget-object p2, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/video/BaseVideoView;->setVideoDataSource(Landroid/media/MediaDataSource;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method protected doTick(J)V
    .locals 0

    .line 146
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->doTick(J)V

    .line 147
    iget-object p1, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->doTick()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 45
    invoke-super {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->finish()V

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Lcom/miui/maml/util/MamlMediaDataSource;->close()V

    :cond_1
    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 34
    invoke-super {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->init()V

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/VideoElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->init(Lcom/miui/maml/data/Variables;)V

    :cond_1
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onViewAdded(Landroid/view/View;)V

    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onViewRemoved(Landroid/view/View;)V

    .line 132
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/VideoElement;->stop()V

    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "VideoElement"

    const-string v1, "pause"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/miui/maml/elements/video/BaseVideoView;->pause()V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 2

    const-string v0, "VideoElement"

    const-string v1, "play"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0}, Lcom/miui/maml/util/MamlMediaDataSource;->tryToGenerateMemoryFile()V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v0}, Lcom/miui/maml/elements/video/BaseVideoView;->start()V

    :cond_2
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    const-string v0, "VideoElement"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->seekTo(I)V

    :cond_1
    return-void
.end method

.method public setVolume(F)V
    .locals 3

    const-string v0, "VideoElement"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->setVolume(F)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "VideoElement"

    const-string v1, "stop"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/miui/maml/elements/video/BaseVideoView;->stopPlayback()V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v0}, Lcom/miui/maml/util/MamlMediaDataSource;->releaseMemoryFile()V

    :cond_2
    return-void
.end method

.method protected updateView()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_1

    .line 138
    iget-boolean v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mUpdatePosition:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mUpdateTranslation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mUpdateSize:Z

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/video/VideoElement;->onUpdateView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

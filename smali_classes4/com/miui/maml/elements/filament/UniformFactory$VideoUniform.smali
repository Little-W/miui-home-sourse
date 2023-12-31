.class public Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;
.super Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;
.source "UniformFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/filament/UniformFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoUniform"
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "video"


# instance fields
.field private mCurrentPosition:I

.field private mDuration:I

.field private mLoopPlay:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPath:Ljava/lang/String;

.field private mPercent:Lcom/miui/maml/data/Expression;

.field private mSeekPosition:I

.field private mVideoDataSource:Lcom/miui/maml/util/MamlMediaDataSource;

.field private mVideoStream:Lcom/google/android/filament/Stream;

.field private mVideoSurface:Landroid/view/Surface;

.field private mVideoSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V
    .locals 0

    .line 547
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 534
    iput-boolean p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mLoopPlay:Z

    const/4 p1, -0x1

    .line 537
    iput p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mSeekPosition:I

    const/4 p1, 0x0

    .line 538
    iput p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mCurrentPosition:I

    .line 548
    invoke-direct {p0}, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->doUpdateParamsImpl()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;)Z
    .locals 0

    .line 531
    iget-boolean p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mLoopPlay:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;)Landroid/media/MediaPlayer;
    .locals 0

    .line 531
    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;I)I
    .locals 0

    .line 531
    iput p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mDuration:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;)V
    .locals 0

    .line 531
    invoke-direct {p0}, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->playToPosition()V

    return-void
.end method

.method private doUpdateParamsImpl()V
    .locals 7

    .line 621
    iget-boolean v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mIsParamsValid:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 622
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mParams:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mPath:Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 624
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mLoopPlay:Z

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 627
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mPercent:Lcom/miui/maml/data/Expression;

    :cond_2
    return-void
.end method

.method private playToPosition()V
    .locals 5

    .line 693
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mPercent:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 695
    :goto_0
    iget v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mDuration:I

    int-to-float v2, v1

    mul-float/2addr v2, v0

    float-to-int v0, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    if-gez v0, :cond_2

    move v0, v2

    .line 701
    :cond_2
    :goto_1
    iget v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mSeekPosition:I

    if-eq v0, v1, :cond_5

    .line 702
    iget v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mCurrentPosition:I

    if-ge v1, v0, :cond_3

    .line 703
    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 704
    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_3

    .line 706
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_4

    .line 707
    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    int-to-long v2, v0

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_2

    .line 709
    :cond_4
    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 711
    :goto_2
    iput v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mCurrentPosition:I

    .line 713
    :goto_3
    iput v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mSeekPosition:I

    :cond_5
    return-void
.end method

.method private setPlayer()V
    .locals 4

    .line 659
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoDataSource:Lcom/miui/maml/util/MamlMediaDataSource;

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {v0}, Lcom/miui/maml/util/MamlMediaDataSource;->close()V

    .line 662
    :cond_0
    new-instance v0, Lcom/miui/maml/util/MamlMediaDataSource;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mManager:Lcom/miui/maml/ResourceManager;

    iget-object v3, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/util/MamlMediaDataSource;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoDataSource:Lcom/miui/maml/util/MamlMediaDataSource;

    .line 663
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoDataSource:Lcom/miui/maml/util/MamlMediaDataSource;

    invoke-virtual {v0}, Lcom/miui/maml/util/MamlMediaDataSource;->tryToGenerateMemoryFile()V

    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 667
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 669
    :cond_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 670
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 671
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform$1;

    invoke-direct {v1, p0}, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform$1;-><init>(Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 683
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoDataSource:Lcom/miui/maml/util/MamlMediaDataSource;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 684
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 685
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 686
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 688
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setVideoTexture()V
    .locals 4

    .line 633
    new-instance v0, Lcom/google/android/filament/Texture$Builder;

    invoke-direct {v0}, Lcom/google/android/filament/Texture$Builder;-><init>()V

    sget-object v1, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_EXTERNAL:Lcom/google/android/filament/Texture$Sampler;

    .line 634
    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$Builder;->sampler(Lcom/google/android/filament/Texture$Sampler;)Lcom/google/android/filament/Texture$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/Texture$InternalFormat;->RGB8:Lcom/google/android/filament/Texture$InternalFormat;

    .line 635
    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$Builder;->format(Lcom/google/android/filament/Texture$InternalFormat;)Lcom/google/android/filament/Texture$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mEngine:Lcom/google/android/filament/Engine;

    .line 636
    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mTexture:Lcom/google/android/filament/Texture;

    .line 638
    :try_start_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoSurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 640
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 642
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 644
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoSurface:Landroid/view/Surface;

    .line 645
    new-instance v0, Lcom/google/android/filament/Stream$Builder;

    invoke-direct {v0}, Lcom/google/android/filament/Stream$Builder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 646
    invoke-virtual {v0, v1}, Lcom/google/android/filament/Stream$Builder;->stream(Ljava/lang/Object;)Lcom/google/android/filament/Stream$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mEngine:Lcom/google/android/filament/Engine;

    .line 647
    invoke-virtual {v0, v1}, Lcom/google/android/filament/Stream$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoStream:Lcom/google/android/filament/Stream;

    .line 648
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mTexture:Lcom/google/android/filament/Texture;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mEngine:Lcom/google/android/filament/Engine;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoStream:Lcom/google/android/filament/Stream;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filament/Texture;->setExternalStream(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Stream;)V

    .line 650
    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mTexture:Lcom/google/android/filament/Texture;

    iget-object v3, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mSampler:Lcom/google/android/filament/TextureSampler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 652
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 654
    :goto_1
    invoke-direct {p0}, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->setPlayer()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected doRefresh()V
    .locals 2

    .line 597
    iget-boolean v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mLoopPlay:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 598
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mCurrentPosition:I

    .line 600
    iget v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mCurrentPosition:I

    iget v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mSeekPosition:I

    if-lt v0, v1, :cond_1

    .line 601
    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 604
    :cond_0
    invoke-direct {p0}, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->playToPosition()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected doUpdateParams()V
    .locals 2

    const/4 v0, 0x0

    .line 611
    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mPath:Ljava/lang/String;

    const/4 v1, 0x1

    .line 612
    iput-boolean v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mLoopPlay:Z

    const/4 v1, -0x1

    .line 613
    iput v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mSeekPosition:I

    const/4 v1, 0x0

    .line 614
    iput v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mCurrentPosition:I

    .line 615
    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mPercent:Lcom/miui/maml/data/Expression;

    .line 616
    invoke-direct {p0}, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->doUpdateParamsImpl()V

    .line 617
    invoke-direct {p0}, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->setPlayer()V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 561
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 562
    iput-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 565
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 566
    iput-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 569
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 570
    iput-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoSurface:Landroid/view/Surface;

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoStream:Lcom/google/android/filament/Stream;

    if-eqz v0, :cond_3

    .line 573
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mEngine:Lcom/google/android/filament/Engine;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoStream:Lcom/google/android/filament/Stream;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->destroyStream(Lcom/google/android/filament/Stream;)V

    .line 575
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mVideoDataSource:Lcom/miui/maml/util/MamlMediaDataSource;

    if-eqz v0, :cond_4

    .line 576
    invoke-virtual {v0}, Lcom/miui/maml/util/MamlMediaDataSource;->close()V

    .line 578
    :cond_4
    invoke-super {p0}, Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;->finish()V

    return-void
.end method

.method public init(Lcom/miui/maml/ResourceManager;Lcom/google/android/filament/Engine;Lcom/google/android/filament/MaterialInstance;)V
    .locals 0

    .line 553
    invoke-super {p0, p1, p2, p3}, Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;->init(Lcom/miui/maml/ResourceManager;Lcom/google/android/filament/Engine;Lcom/google/android/filament/MaterialInstance;)V

    .line 554
    invoke-direct {p0}, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->setVideoTexture()V

    return-void
.end method

.method public tryPause()V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public tryResume()V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mLoopPlay:Z

    if-eqz v0, :cond_0

    .line 591
    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

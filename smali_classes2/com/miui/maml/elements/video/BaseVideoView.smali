.class public abstract Lcom/miui/maml/elements/video/BaseVideoView;
.super Landroid/view/SurfaceView;
.source "BaseVideoView.java"


# static fields
.field private static final DURATION:Ljava/lang/String; = ".duration"

.field private static final PLAY_STATE:Ljava/lang/String; = ".playState"

.field private static final POSITION:Ljava/lang/String; = ".position"

.field public static final SCALE_MODE_FIT_CROP:I = 0x2

.field public static final SCALE_MODE_FIT_START:I = 0x3

.field public static final SCALE_MODE_FIT_XY:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseVideoView"


# instance fields
.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioFocusType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDataSource:Landroid/media/MediaDataSource;

.field private mDurationVar:Lcom/miui/maml/data/IndexedVariable;

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mLooping:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mName:Ljava/lang/String;

.field private mPositionVar:Lcom/miui/maml/data/IndexedVariable;

.field private mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field protected mScaleMode:I

.field private mSeekWhenPrepared:I

.field private mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStateVar:Lcom/miui/maml/data/IndexedVariable;

.field protected mSurface:Landroid/view/Surface;

.field private mTargetState:I

.field protected mVideoHeight:I

.field protected mVideoWidth:I

.field private mVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x1

    .line 48
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mScaleMode:I

    const/4 v1, 0x0

    .line 59
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 60
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 62
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 66
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    .line 75
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$1;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 100
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$2;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$2;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 113
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$3;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$3;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 121
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$4;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$4;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 131
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$5;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$5;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 142
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$6;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$6;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 161
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$7;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$7;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 175
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mContext:Landroid/content/Context;

    .line 176
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 177
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 178
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 179
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 180
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/video/BaseVideoView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    return p0
.end method

.method static synthetic access$002(Lcom/miui/maml/elements/video/BaseVideoView;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/video/BaseVideoView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/maml/elements/video/BaseVideoView;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateDurationVar(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/maml/elements/video/BaseVideoView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/maml/elements/video/BaseVideoView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/maml/elements/video/BaseVideoView;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateStateVar(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/maml/elements/video/BaseVideoView;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->updatePositionVar(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/maml/elements/video/BaseVideoView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    return p0
.end method

.method static synthetic access$700(Lcom/miui/maml/elements/video/BaseVideoView;)Landroid/media/AudioManager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/maml/elements/video/BaseVideoView;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mLooping:Z

    return p0
.end method

.method static synthetic access$900(Lcom/miui/maml/elements/video/BaseVideoView;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVolume:F

    return p0
.end method

.method private checkAudioFocus()V
    .locals 4

    .line 408
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_1
    :goto_0
    return-void
.end method

.method private getStateName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    return-object p1

    :pswitch_0
    const-string p1, "state_playback_completed"

    return-object p1

    :pswitch_1
    const-string p1, "state_paused"

    return-object p1

    :pswitch_2
    const-string p1, "state_playing"

    return-object p1

    :pswitch_3
    const-string p1, "state_prepared"

    return-object p1

    :pswitch_4
    const-string p1, "state_preparing"

    return-object p1

    :pswitch_5
    const-string p1, "state_idle"

    return-object p1

    :pswitch_6
    const-string p1, "state_error"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initIndexedVariable(Lcom/miui/maml/data/Variables;)V
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".duration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 382
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".position"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 383
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".playState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 384
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    invoke-direct {p0, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->getStateName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private openVideo()V
    .locals 6

    .line 346
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->releaseMedia(Z)V

    const/4 v1, 0x1

    .line 355
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 356
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 357
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 358
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 359
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 360
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 361
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 362
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mScaleMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 363
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 365
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 366
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 367
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 370
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateStateVar(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "BaseVideoView"

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, -0x1

    .line 373
    iput v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 374
    iput v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 375
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v1, v0}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private updateDurationVar(I)V
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v0, :cond_0

    int-to-double v1, p1

    .line 390
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    return-void
.end method

.method private updatePositionVar(I)V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v0, :cond_0

    int-to-double v1, p1

    .line 396
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    return-void
.end method

.method private updateStateVar(I)V
    .locals 1

    .line 401
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 402
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p1, :cond_0

    .line 403
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    invoke-direct {p0, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->getStateName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract addSurfaceHolderCallback()V
.end method

.method public doTick()V
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->getCurrentPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->updatePositionVar(I)V

    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 232
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public init(Lcom/miui/maml/data/Variables;)V
    .locals 0

    .line 184
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->addSurfaceHolderCallback()V

    .line 185
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->initIndexedVariable(Lcom/miui/maml/data/Variables;)V

    return-void
.end method

.method public isInPlaybackState()Z
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPlaying()Z
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 314
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->releaseMedia(Z)V

    .line 315
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method protected abstract onSurfaceCreated(Landroid/view/SurfaceHolder;)V
.end method

.method protected abstract onSurfaceDestroyed()V
.end method

.method public pause()V
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 219
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateStateVar(I)V

    .line 221
    :cond_0
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    return-void
.end method

.method protected releaseMedia(Z)V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    .line 335
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    if-eqz p1, :cond_0

    .line 337
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 339
    :cond_0
    iget p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    if-eqz p1, :cond_1

    .line 340
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    return-void
.end method

.method public seekTo(I)V
    .locals 5

    .line 239
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 241
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    int-to-long v3, p1

    const/4 p1, 0x2

    invoke-virtual {v0, v3, v4, p1}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 249
    :goto_0
    iput v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I

    goto :goto_1

    .line 251
    :cond_2
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I

    :goto_1
    return-void
.end method

.method protected abstract setFormat(I)V
.end method

.method public setLooping(Z)V
    .locals 2

    .line 276
    iget-boolean v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mLooping:Z

    if-eq v0, p1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 280
    :cond_0
    iput-boolean p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mLooping:Z

    :cond_1
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    return-void
.end method

.method public setScaleMode(I)V
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 297
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mScaleMode:I

    :cond_0
    return-void
.end method

.method public setVideoDataSource(Landroid/media/MediaDataSource;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    const/4 p1, 0x0

    .line 190
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I

    .line 191
    invoke-direct {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->openVideo()V

    .line 192
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->requestLayout()V

    .line 193
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->invalidate()V

    return-void
.end method

.method public setVolume(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    move p1, v2

    :cond_1
    :goto_0
    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 262
    :goto_1
    iget v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    if-eq v0, v1, :cond_3

    .line 263
    iput v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    .line 266
    :cond_3
    invoke-direct {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->checkAudioFocus()V

    .line 267
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVolume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_5

    .line 268
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    .line 269
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 271
    :cond_4
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVolume:F

    :cond_5
    return-void
.end method

.method public start()V
    .locals 2

    .line 208
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->checkAudioFocus()V

    .line 210
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 211
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateStateVar(I)V

    .line 213
    :cond_0
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 199
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    .line 201
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateStateVar(I)V

    .line 202
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 203
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method protected abstract updateVideoSize()V
.end method

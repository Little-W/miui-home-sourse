.class public Lcom/miui/home/launcher/sound/SoundPoolHelper;
.super Ljava/lang/Object;
.source "SoundPoolHelper.java"


# instance fields
.field private mSoundIds:Landroid/util/SparseIntArray;

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundIds:Landroid/util/SparseIntArray;

    .line 26
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/16 v1, 0xa

    .line 27
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 28
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    sget-object v1, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$a9_6UUgcowQAXHvA2cX0yknWevo;->INSTANCE:Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$a9_6UUgcowQAXHvA2cX0yknWevo;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundIds:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    const v3, 0x7f0f0003

    invoke-virtual {v1, p1, v3, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundIds:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    const v3, 0x7f0f0004

    invoke-virtual {v1, p1, v3, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/media/SoundPool;II)V
    .locals 1

    const-string p0, "Launcher.SoundPoolHelper"

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "load sound complete, soundId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$playAsync$1(Lcom/miui/home/launcher/sound/SoundPoolHelper;IF)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundIds:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string p2, "Launcher.SoundPoolHelper"

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "soundType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") don\'t loaded"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->playInner(IF)V

    :goto_0
    return-void
.end method

.method private playInner(IF)V
    .locals 9

    const-string v0, "Launcher.SoundPoolHelper"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play soundId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v2, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, p1

    move v4, p2

    move v5, p2

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method


# virtual methods
.method public playAsync(I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->playAsync(IF)V

    return-void
.end method

.method public playAsync(IF)V
    .locals 1

    .line 42
    new-instance v0, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$XcQZ064kHtdlZaOaKhVLzeqkXu8;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$XcQZ064kHtdlZaOaKhVLzeqkXu8;-><init>(Lcom/miui/home/launcher/sound/SoundPoolHelper;IF)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :cond_0
    return-void
.end method

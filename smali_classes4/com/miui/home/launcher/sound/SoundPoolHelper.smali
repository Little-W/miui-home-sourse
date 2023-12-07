.class public Lcom/miui/home/launcher/sound/SoundPoolHelper;
.super Ljava/lang/Object;
.source "SoundPoolHelper.java"


# static fields
.field private static sEnableDeleteSound:Ljava/lang/Boolean;


# instance fields
.field private mSoundIds:Landroid/util/SparseIntArray;

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->sEnableDeleteSound:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundIds:Landroid/util/SparseIntArray;

    .line 28
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/16 v1, 0xa

    .line 29
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 30
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    sget-object v1, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$a9_6UUgcowQAXHvA2cX0yknWevo;->INSTANCE:Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$a9_6UUgcowQAXHvA2cX0yknWevo;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundIds:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    const v3, 0x7f100009

    invoke-virtual {v1, p1, v3, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundIds:Landroid/util/SparseIntArray;

    iget-object p0, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    const v1, 0x7f10000a

    invoke-virtual {p0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p0

    invoke-virtual {v0, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    invoke-static {p1}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->updateEnableDeleteSound(Landroid/content/Context;)V

    return-void
.end method

.method public static getEnableDeleteSound()Z
    .locals 1

    .line 80
    sget-object v0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->sEnableDeleteSound:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$0(Landroid/media/SoundPool;II)V
    .locals 0

    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "load sound complete, soundId="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.SoundPoolHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private playInner(IF)V
    .locals 9

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play soundId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.SoundPoolHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
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

.method private releaseInner()V
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release\uff0cmSoundPool = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.SoundPoolHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p0, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/media/SoundPool;->release()V

    :cond_0
    return-void
.end method

.method public static updateEnableDeleteSound(Landroid/content/Context;)V
    .locals 0

    .line 73
    :try_start_0
    invoke-static {p0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->isDeleteSoundEffectEnable(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->sEnableDeleteSound:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$playAsync$1$SoundPoolHelper(IF)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper;->mSoundIds:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "soundType("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") don\'t loaded"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.SoundPoolHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->playInner(IF)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$releaseAsync$2$SoundPoolHelper()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->releaseInner()V

    return-void
.end method

.method public playAsync(I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->playAsync(IF)V

    return-void
.end method

.method public playAsync(IF)V
    .locals 1

    .line 45
    new-instance v0, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$XcQZ064kHtdlZaOaKhVLzeqkXu8;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$XcQZ064kHtdlZaOaKhVLzeqkXu8;-><init>(Lcom/miui/home/launcher/sound/SoundPoolHelper;IF)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public releaseAsync()V
    .locals 2

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getUnsafetyHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$ngUfWUvhuvD42RlkHumEg9IAgpE;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$ngUfWUvhuvD42RlkHumEg9IAgpE;-><init>(Lcom/miui/home/launcher/sound/SoundPoolHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

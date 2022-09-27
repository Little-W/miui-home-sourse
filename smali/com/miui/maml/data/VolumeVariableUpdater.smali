.class public Lcom/miui/maml/data/VolumeVariableUpdater;
.super Lcom/miui/maml/data/NotifierVariableUpdater;
.source "VolumeVariableUpdater.java"


# static fields
.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field private static final SHOW_DELAY_TIME:I = 0x3e8

.field public static final VAR_VOLUME_LEVEL:Ljava/lang/String; = "volume_level"

.field public static final VAR_VOLUME_LEVEL_OLD:Ljava/lang/String; = "volume_level_old"

.field public static final VAR_VOLUME_TYPE:Ljava/lang/String; = "volume_type"

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mResetType:Ljava/lang/Runnable;

.field private mVolumeLevel:Lcom/miui/maml/data/IndexedVariable;

.field private mVolumeLevelOld:Lcom/miui/maml/data/IndexedVariable;

.field private mVolumeType:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .locals 3

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/NotifierVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 45
    new-instance p1, Lcom/miui/maml/data/VolumeVariableUpdater$1;

    invoke-direct {p1, p0}, Lcom/miui/maml/data/VolumeVariableUpdater$1;-><init>(Lcom/miui/maml/data/VolumeVariableUpdater;)V

    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    .line 52
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    const-string v0, "volume_level"

    invoke-virtual {p0}, Lcom/miui/maml/data/VolumeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeLevel:Lcom/miui/maml/data/IndexedVariable;

    .line 57
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    const-string v0, "volume_level_old"

    invoke-virtual {p0}, Lcom/miui/maml/data/VolumeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {p1, v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeLevelOld:Lcom/miui/maml/data/IndexedVariable;

    .line 58
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    const-string v0, "volume_type"

    invoke-virtual {p0}, Lcom/miui/maml/data/VolumeVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {p1, v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeType:Lcom/miui/maml/data/IndexedVariable;

    .line 59
    iget-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeType:Lcom/miui/maml/data/IndexedVariable;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/data/VolumeVariableUpdater;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeType:Lcom/miui/maml/data/IndexedVariable;

    return-object p0
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 3

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 p3, -0x1

    .line 65
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 66
    iget-object p3, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeType:Lcom/miui/maml/data/IndexedVariable;

    int-to-double v0, p1

    invoke-virtual {p3, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 p3, 0x0

    .line 67
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 68
    iget-object v0, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeLevel:Lcom/miui/maml/data/IndexedVariable;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    const-string v0, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    .line 69
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeLevelOld:Lcom/miui/maml/data/IndexedVariable;

    int-to-double p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/VolumeVariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 74
    iget-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    iget-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.class public Lcom/google/android/filament/android/DisplayHelper;
.super Ljava/lang/Object;
.source "DisplayHelper.java"


# instance fields
.field private mDisplay:Landroid/view/Display;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mRenderer:Lcom/google/android/filament/Renderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->mHandler:Landroid/os/Handler;

    const-string v0, "display"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/google/android/filament/android/DisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/filament/android/DisplayHelper;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object p2, p0, Lcom/google/android/filament/android/DisplayHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/filament/android/DisplayHelper;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/android/filament/android/DisplayHelper;->updateDisplayInfo()V

    return-void
.end method

.method public static getAppVsyncOffsetNanos(Landroid/view/Display;)J
    .locals 2

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/view/Display;->getAppVsyncOffsetNanos()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getDisplayInfo(Landroid/view/Display;Lcom/google/android/filament/Renderer$DisplayInfo;)Lcom/google/android/filament/Renderer$DisplayInfo;
    .locals 2

    if-nez p1, :cond_0

    .line 157
    new-instance p1, Lcom/google/android/filament/Renderer$DisplayInfo;

    invoke-direct {p1}, Lcom/google/android/filament/Renderer$DisplayInfo;-><init>()V

    .line 159
    :cond_0
    invoke-static {p0}, Lcom/google/android/filament/android/DisplayHelper;->getRefreshRate(Landroid/view/Display;)F

    move-result v0

    iput v0, p1, Lcom/google/android/filament/Renderer$DisplayInfo;->refreshRate:F

    .line 160
    invoke-static {p0}, Lcom/google/android/filament/android/DisplayHelper;->getPresentationDeadlineNanos(Landroid/view/Display;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/android/filament/Renderer$DisplayInfo;->presentationDeadlineNanos:J

    .line 161
    invoke-static {p0}, Lcom/google/android/filament/android/DisplayHelper;->getAppVsyncOffsetNanos(Landroid/view/Display;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/android/filament/Renderer$DisplayInfo;->vsyncOffsetNanos:J

    return-object p1
.end method

.method public static getPresentationDeadlineNanos(Landroid/view/Display;)J
    .locals 2

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/view/Display;->getPresentationDeadlineNanos()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0xb10080

    return-wide v0
.end method

.method public static getRefreshPeriodNanos(Landroid/view/Display;)J
    .locals 4

    .line 202
    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    float-to-double v0, p0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    return-wide v0
.end method

.method public static getRefreshRate(Landroid/view/Display;)F
    .locals 0

    .line 193
    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    return p0
.end method

.method private updateDisplayInfo()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->mRenderer:Lcom/google/android/filament/Renderer;

    iget-object p0, p0, Lcom/google/android/filament/android/DisplayHelper;->mDisplay:Landroid/view/Display;

    .line 136
    invoke-virtual {v0}, Lcom/google/android/filament/Renderer;->getDisplayInfo()Lcom/google/android/filament/Renderer$DisplayInfo;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/filament/android/DisplayHelper;->getDisplayInfo(Landroid/view/Display;Lcom/google/android/filament/Renderer$DisplayInfo;)Lcom/google/android/filament/Renderer$DisplayInfo;

    move-result-object p0

    .line 135
    invoke-virtual {v0, p0}, Lcom/google/android/filament/Renderer;->setDisplayInfo(Lcom/google/android/filament/Renderer$DisplayInfo;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/google/android/filament/Renderer;Landroid/view/Display;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->mRenderer:Lcom/google/android/filament/Renderer;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->mDisplay:Landroid/view/Display;

    if-ne p2, v0, :cond_0

    return-void

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/google/android/filament/android/DisplayHelper;->mRenderer:Lcom/google/android/filament/Renderer;

    .line 91
    iput-object p2, p0, Lcom/google/android/filament/android/DisplayHelper;->mDisplay:Landroid/view/Display;

    .line 92
    new-instance p1, Lcom/google/android/filament/android/DisplayHelper$1;

    invoke-direct {p1, p0, p2}, Lcom/google/android/filament/android/DisplayHelper$1;-><init>(Lcom/google/android/filament/android/DisplayHelper;Landroid/view/Display;)V

    iput-object p1, p0, Lcom/google/android/filament/android/DisplayHelper;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 106
    iget-object p1, p0, Lcom/google/android/filament/android/DisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object p2, p0, Lcom/google/android/filament/android/DisplayHelper;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 109
    iget-object p1, p0, Lcom/google/android/filament/android/DisplayHelper;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 110
    new-instance p2, Lcom/google/android/filament/android/DisplayHelper$2;

    invoke-direct {p2, p0}, Lcom/google/android/filament/android/DisplayHelper$2;-><init>(Lcom/google/android/filament/android/DisplayHelper;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/google/android/filament/android/DisplayHelper;->updateDisplayInfo()V

    :goto_0
    return-void
.end method

.method public detach()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/google/android/filament/android/DisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 129
    iput-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->mDisplay:Landroid/view/Display;

    .line 130
    iput-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->mRenderer:Lcom/google/android/filament/Renderer;

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/filament/android/DisplayHelper;->detach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 73
    throw v0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/google/android/filament/android/DisplayHelper;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

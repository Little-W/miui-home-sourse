.class public Lmiuix/util/HapticFeedbackCompat;
.super Ljava/lang/Object;
.source "HapticFeedbackCompat.java"


# static fields
.field private static mAvailable:Z

.field private static mCanCheckExtHaptic:Z

.field private static mCanStop:Z

.field private static mExtHapticAlways:Z

.field private static mIsSupportExtHapticWithReason:Z

.field private static mIsSupportHapticWithReason:Z

.field private static final sSingleThread:Ljava/util/concurrent/Executor;


# instance fields
.field private hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lmiuix/util/HapticFeedbackCompat;->sSingleThread:Ljava/util/concurrent/Executor;

    .line 51
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v2

    sput-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "HapticFeedbackCompat"

    const-string v4, "MIUI Haptic Implementation is not available"

    .line 55
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    sput-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    .line 59
    :goto_0
    sget-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 61
    :try_start_1
    const-class v4, Lmiui/util/HapticFeedbackUtil;

    const-string v5, "performHapticFeedback"

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v5, "HapticFeedbackCompat"

    const-string v6, "Not support haptic with reason"

    .line 64
    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    sput-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    .line 68
    :goto_1
    :try_start_2
    const-class v4, Lmiui/util/HapticFeedbackUtil;

    const-string v5, "isSupportExtHapticFeedback"

    new-array v6, v1, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 71
    :catch_2
    sput-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    .line 75
    :goto_2
    :try_start_3
    const-class v4, Lmiui/util/HapticFeedbackUtil;

    const-string v5, "performExtHapticFeedback"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 78
    :catch_3
    sput-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z

    .line 82
    :goto_3
    :try_start_4
    const-class v4, Lmiui/util/HapticFeedbackUtil;

    const-string v5, "stop"

    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 85
    :catch_4
    sput-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z

    .line 89
    :goto_4
    :try_start_5
    const-class v4, Lmiui/util/HapticFeedbackUtil;

    const-string v5, "performExtHapticFeedback"

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v0

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v1

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mIsSupportExtHapticWithReason:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    const-string v2, "HapticFeedbackCompat"

    const-string v3, "Not support ext haptic with reason"

    .line 92
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    sput-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mIsSupportExtHapticWithReason:Z

    :cond_0
    :goto_5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 117
    invoke-direct {p0, p1, v0}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string p1, "HapticFeedbackCompat"

    const-string p2, "MiuiHapticFeedbackConstants not found or not compatible for LinearVibrator."

    .line 106
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_0
    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    if-nez v0, :cond_1

    const-string p1, "HapticFeedbackCompat"

    const-string p2, "linear motor is not supported in this platform."

    .line 110
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 113
    :cond_1
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-void
.end method


# virtual methods
.method public isSupportExtHapticFeedback(I)Z
    .locals 3

    .line 247
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 248
    sget-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result p1

    return p1

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0xa0

    if-gt p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public performExtHapticFeedback(I)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public performHapticFeedback(II)Z
    .locals 2

    .line 308
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 309
    invoke-static {p1}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 311
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p1, v1, p2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZI)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

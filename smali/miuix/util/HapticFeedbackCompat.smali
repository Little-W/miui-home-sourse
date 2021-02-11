.class public Lmiuix/util/HapticFeedbackCompat;
.super Ljava/lang/Object;
.source "HapticFeedbackCompat.java"


# static fields
.field private static mAvailable:Z

.field private static mCanCheckExtHaptic:Z

.field private static mIsSupportHapticWithReason:Z


# instance fields
.field private hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string p1, "HapticFeedbackCompat"

    const-string p2, "MiuiHapticFeedbackConstants not found or not compatible for LinearVibrator."

    .line 39
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 44
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

    .line 46
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    sput-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    .line 50
    :goto_0
    sget-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    if-nez v2, :cond_1

    const-string p1, "HapticFeedbackCompat"

    const-string p2, "linear motor is not supported in this platform."

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 54
    :cond_1
    new-instance v2, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v2, p1, p2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 56
    :try_start_1
    const-class p1, Lmiui/util/HapticFeedbackUtil;

    const-string p2, "performHapticFeedback"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "HapticFeedbackCompat"

    const-string v2, "Not support haptic with reason"

    .line 59
    invoke-static {p2, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    sput-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    .line 63
    :goto_1
    :try_start_2
    const-class p1, Lmiui/util/HapticFeedbackUtil;

    const-string p2, "isSupportExtHapticFeedback"

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    const-string p2, "HapticFeedbackCompat"

    const-string v1, "Not support haptic with reason"

    .line 66
    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    sput-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    :goto_2
    return-void
.end method


# virtual methods
.method public isSupportExtHapticFeedback(I)Z
    .locals 3

    .line 109
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 110
    sget-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    if-eqz v2, :cond_0

    .line 111
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

    .line 96
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public performHapticFeedback(II)Z
    .locals 2

    .line 155
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1, v1, p2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZI)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public release()V
    .locals 1

    .line 186
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil;->release()V

    :cond_0
    return-void
.end method
